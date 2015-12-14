<script type="text/javascript">
<!--
window.name='loja';
function vai() {
window.location = '<?php echo HTTPS_SERVER;?>index.php?route=payment/itaushopline/confirm';
return true;
}
//-->
</script>
<?php
//Variaveis da compra.
$msg = '<center><br><h2>Obrigado pelo Pedido</h2>';
$msg .= '<a onclick="javascript:window.open(\''.HTTPS_SERVER.'lib/itaushopline/pagar.php?pedido='.$pedido.'\',\'popup\',\'width=800,height=800\');vai();" href="javascript:void(0);">
<img src="'.HTTPS_SERVER.'lib/itaushopline/images/pg.png" border="0"></a>';
$msg .= '<br><br>Clique acima para Realizar o Pagamento.</center>';
echo $msg;
?>
