<?php
require_once "lib/itaushopline/class.itau.php";
class ControllerPaymentItauShopline extends Controller {
	
public function index() {
	$data['button_confirm'] = 'Confirmar';
	$data['button_back'] = 'Voltar';
	$this->load->model('checkout/order');
	$order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
	$data['pedido'] = $order_info['order_id'];
	$data['desconto'] = $this->config->get('itaushopline_desconto');
	$data['valorpedido'] = $order_info['total'];
	$data['back'] = $this->url->link('checkout/payment&pedido='.$this->session->data['order_id'].'');
	$data['continue'] = $this->url->link('checkout/success&pedido='.$this->session->data['order_id'].'');
	if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/itaushopline.tpl')) {
	$tema = $this->config->get('config_template') . '/template/payment/itaushopline.tpl';
	} else {
	$tema = 'default/template/payment/itaushopline.tpl';
	}	
	$this->data = $data;
	$this->template = $tema;
	$this->render();
}

public function confirm() {
	$this->load->model('checkout/order');
	$comment  = "Ita&uacute; Shopline";
	$comment .= ' - <a href="'.HTTPS_SERVER.'lib/itaushopline/pagar.php?pedido='.$this->session->data['order_id'].'" target="_blank">[link de pagamento]</a>';
	$this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('itaushopline_padrao'), $comment, true);
	$this->cart->clear();
	$ouput = "<script>window.location = '".HTTPS_SERVER."index.php?route=checkout/success';</script>";  
	$this->response->setOutput($ouput);
}

public function retorno() {
	$this->load->model('checkout/order');
	//faz as consultas
	$criptos = new Itaucripto();
	$codigo = strtoupper(trim($this->config->get('itaushopline_afiliacao')));
	$chave = strtoupper(trim($this->config->get('itaushopline_chave')));
	if(isset($_GET['DC'])){
	$descripto = $criptos->decripto($_GET['DC'], $chave);
	$cod = $criptos->geraConsulta($codigo, (int)$criptos->retornaPedido(), 1, $chave);

	$resultado = $this->ConItau("https://shopline.itau.com.br/shopline/consulta.aspx?DC=".$cod."");
	
	if(isset($resultado['sitPag'])){
	//de acordo o tipo de pagamento
	switch($resultado['sitPag']){
		
	//pagamento aceito
	case '00':
	case '05':
	case '06':
	$this->model_checkout_order->update((int)$criptos->retornaPedido(), $this->config->get('itaushopline_pago'), "Pago", true);
	break;
	case '03':
	$this->model_checkout_order->update((int)$criptos->retornaPedido(), $this->config->get('itaushopline_cancelado'), "Cancelado", true);
	break;
	
	}
	}
	}
	
	//redireciona os pedidos
	$ouput = "<script>window.location = '".HTTPS_SERVER."index.php?route=account/order';</script>";  
	$this->response->setOutput($ouput);
}

public function cron(){
	$criptos = new Itaucripto();
	$this->load->model('checkout/order');
	
	//dados cadastro cliente itau	
	$codigo = strtoupper(trim($this->config->get('itaushopline_afiliacao')));
	$chave = strtoupper(trim($this->config->get('itaushopline_chave')));
	$pedidoPadrao = $this->config->get('itaushopline_padrao');
	$order_query = $this->db->query("SELECT * FROM `" . DB_PREFIX . "order` WHERE payment_code = 'itaushopline' AND order_status_id = '".(int)$pedidoPadrao."'");
	
	//se houver pedidos
	if ($order_query->num_rows) {
	foreach ($order_query->rows as $pedido) {
	$cod = $criptos->geraConsulta($codigo, $pedido['order_id'], 1, $chave);
	if(!empty($cod)){
	$resultado = $this->ConItau("https://shopline.itau.com.br/shopline/consulta.aspx?DC=".$cod."");
	if(isset($resultado['sitPag'])){
	echo 'Consulta fatura relacionado ao pedido #'.$pedido['order_id'].' encontra-se no status status '.$resultado['sitPag'].'!<br>';
	//de acordo o tipo de pagamento
	switch($resultado['sitPag']){
		//pagamento aceito
		case '00':
		case '05':
		case '06':
		$this->model_checkout_order->update($pedido['order_id'], $this->config->get('itaushopline_pago'), "Pago", true);
		break;
		case '03':
		$this->model_checkout_order->update($pedido['order_id'], $this->config->get('itaushopline_cancelado'), "Cancelado", true);
		break;
	}
	}
	}
	}
	}
}

public function ConItau($url){
	//solicitacao
	$curl = curl_init();
	curl_setopt( $curl , CURLOPT_HEADER , 0 );
	curl_setopt( $curl , CURLOPT_SSL_VERIFYPEER, 0);
	curl_setopt( $curl , CURLOPT_RETURNTRANSFER , 1 );
	curl_setopt( $curl , CURLOPT_URL , $url );
	$xml = curl_exec( $curl ); 
	curl_close( $curl );
	$dados = array();
	libxml_use_internal_errors(true);
	$DadosEnvio= simplexml_load_string($xml);
	if(!isset($DadosEnvio->PARAMETER)){
	return false;	
	}
	$Arr = $this->simpleXMLToArray($DadosEnvio);
	if(is_array($Arr)){
	foreach($Arr['PARAMETER']['PARAM'] AS $key=>$valor){
	$dados[$valor['ID']] = $valor['VALUE'];
	}
	return $dados;
	}else{
	return false;
	}
}

public function simpleXMLToArray($xml,
$flattenValues=true,
$flattenAttributes = true,
$flattenChildren=true,
$valueKey='@value',
$attributesKey='@attributes',
$childrenKey='@children'){

$return = array();
if(!($xml instanceof SimpleXMLElement)){return $return;}
$name = $xml->getName();
$_value = trim((string)$xml);
if(strlen($_value)==0){$_value = null;};

if($_value!==null){
if(!$flattenValues){$return[$valueKey] = $_value;}
else{$return = $_value;}
}

$children = array();
$first = true;
foreach($xml->children() as $elementName => $child){
$value = $this->simpleXMLToArray($child, $flattenValues, $flattenAttributes, $flattenChildren, $valueKey, $attributesKey, $childrenKey);
if(isset($children[$elementName])){
if($first){
$temp = $children[$elementName];
unset($children[$elementName]);
$children[$elementName][] = $temp;
$first=false;
}
$children[$elementName][] = $value;
}
else{
$children[$elementName] = $value;
}
}
if(count($children)>0){
if(!$flattenChildren){$return[$childrenKey] = $children;}
else{$return = array_merge($return,$children);}
}

$attributes = array();
foreach($xml->attributes() as $name=>$value){
$attributes[$name] = trim($value);
}
if(count($attributes)>0){
if(!$flattenAttributes){$return[$attributesKey] = $attributes;}
else{$return = array_merge($return, $attributes);}
}

return $return;
}
}
?>