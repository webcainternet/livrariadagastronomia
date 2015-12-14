<?php
global $itemId;
$itemId = (int)$_GET['pedido'];
if(empty($itemId)){
die('Pedido invalido!');
}
include "class.itau.php";
include "dados.php";

$db = @mysql_connect(DB_HOSTNAME,DB_USERNAME,DB_PASSWORD);
mysql_select_db(DB_DATABASE, $db);
$prefixo = DB_PREFIX;

//pega dados do pedido
$SQL3 = "SELECT * FROM `".$prefixo."order` WHERE `order_id` ='".$itemId."'";
$Executa3 = mysql_query($SQL3) or print(mysql_error());
$resultado3 = mysql_fetch_array($Executa3);
$zone_id = $resultado3['payment_zone_id'];
$SQL4 = "SELECT * FROM `".$prefixo."zone` WHERE `zone_id` ='".$zone_id."'";
$Executa4 = mysql_query($SQL4) or print(mysql_error());
$resultado4 = mysql_fetch_array($Executa4);

$cripto = new Itaucripto();

//Variaveis do modulo
$codEmp = strtoupper(trim($config->get('itaushopline_afiliacao')));
$prazo = trim($config->get('itaushopline_dias'));
$pedido = $itemId;
$observacao = 'Pedido #'.$itemId.' em '.HTTPS_SERVER.'';
$chave = strtoupper($config->get('itaushopline_chave'));
$nomeSacado = $resultado3['payment_firstname'].' '.$resultado3['payment_lastname'];
$codigoInscricao = "01";
$numeroInscricao = "00000000000";
$enderecoSacado = $resultado3['payment_address_1'];
$bairroSacado = $resultado3['payment_address_2'];
if(empty($bairroSacado)){
$bairroSacado = $resultado3['payment_address_1'];
}
$cepSacado = preg_replace('/\D/', '', $resultado3['payment_postcode']);
$cidadeSacado = $resultado3['payment_city'];
$estadoSacado = $resultado4['code'];
$dataVencimento = date("dmY", (strtotime($resultado3['date_added']) + ($prazo * 86400))); 
$totals = $resultado3['total'];
$valor =number_format($totals, 2, ',', '');
$urlRetorna = '/lib/itaushopline/retorno.php';
$dados = $cripto->geraDados($codEmp,$pedido,$valor,$observacao,$chave,$nomeSacado,$codigoInscricao,$numeroInscricao,$enderecoSacado,$bairroSacado,$cepSacado,$cidadeSacado,$estadoSacado,$dataVencimento,$urlRetorna,$obsAd1,$obsAd2,$obsAd3);
?>
<html>
<head>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="br" lang="br">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<head>
<title>Pagamento Ita&uacute;</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<br><br><center><h2>Aguarde o Redirecionamento ao Ita&uacute;...</h2>
<img src="images/pg.png">
<br>
<form name='itau' action='https://shopline.itau.com.br/shopline/shopline.aspx' method='POST'>
<INPUT type='hidden' name='DC' value='<?php echo $dados;?>'>
<button>Clique aqui caso n&atilde;o redirecione</button>
</form>
<script type="text/javascript"> 
window.onload = function(){ document.forms[0].submit(); } 
</script>
<!--
<?php echo $codEmp.' - '.$pedido.' - '.$valor.' - '.$observacao.' - '.$chave.' - '.$nomeSacado.' - '.$codigoInscricao.' - '.$numeroInscricao.' - '.$enderecoSacado.' - '.$bairroSacado.' - '.$cepSacado.' - '.$cidadeSacado.' - '.$estadoSacado.' - '.$dataVencimento.' - '.$urlRetorna.' - '.$obsAd1.' - '.$obsAd2.' - '.$obsAd3; ?>
-->
</body>
</html>