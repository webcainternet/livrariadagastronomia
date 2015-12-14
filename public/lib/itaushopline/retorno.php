<?php
include "dados.php";
if(isset($_REQUEST['DC'])){
?>
<script>window.location = '<?php echo HTTPS_SERVER;?>index.php?route=payment/itaushopline/retorno&DC=<?php echo $_REQUEST['DC'];?>';</script>
<?php
}else{
?>
<script>window.location = '<?php echo HTTPS_SERVER;?>index.php?route=account/order';</script>
<?php 
}
?>