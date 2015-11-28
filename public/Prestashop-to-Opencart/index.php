<?php
//Prestashop database prefix
$prefixpresta = 'ps_';

//Prestashop lang id
$plangid = 2;

//Server Path to Prestashop images
$imgtmppath = '/Users/fernandomendes/github/livrariadagastronomia/migrate/temp/';

//Get the path to images from opencart config folder
if(file_exists('../config.php')){
include('../config.php');



$db_host = DB_HOSTNAME;
$db_username = DB_USERNAME;
$db_password = DB_PASSWORD;
$db_name = DB_DATABASE;


$prefixopencart = DB_PREFIX;

$imgcatorig = DIR_IMAGE;
$imgprdorig = DIR_IMAGE;

$connection = mysql_connect($db_host, $db_username, $db_password) or die(mysql_error());

//select database
$db = mysql_select_db($db_name, $connection);
mysql_query ("set character_set_client='utf8'");
mysql_query ("set character_set_results='utf8'");
mysql_query ("set collation_connection='utf8_general_ci'");

//Get default Opencart Lang code
$langcodeqry = mysql_query("SELECT * FROM ".$prefixopencart."setting WHERE `key` = 'config_language' ") or die(mysql_error());
$lcode = mysql_fetch_array($langcodeqry);
$langcode = $lcode['value'];


//Get Lang id with the code
$langidqry = mysql_query("SELECT * FROM ".$prefixopencart."language WHERE `code` = '".$langcode."' ") or die(mysql_error());
$lid = mysql_fetch_array($langidqry);
$langid = $lid['language_id'];


} else {
  echo "no config";
  exit;
/////////////////////////////////////////////////////////////////////////////////////////////////////
//Edit this if the script is not in the opencart root sub folder. Example: www.shop.com/migrate//////
/////////////////////////////////////////////////////////////////////////////////////////////////////
$db_host = "localhost";
$db_username = "root";
$db_password = "root";
$db_name = "testttt";

//Your oscommerce lang id
$opcartlangid = 1;

$prefixopencart = '';

$currency = 'BGL';



//The path to oscommerce images folder C:/xampp/htdocs/opencart/image/ or /home/www/site/images/
////////////////////////////////////////////////////////////////////////////////////////////////
$imgcatorig = '/Users/fernandomendes/github/livrariadagastronomia/migrate/beforestore/';
$imgprdorig = '/Users/fernandomendes/github/livrariadagastronomia/migrate/beforestore/';

$connection = mysql_connect($db_host, $db_username, $db_password) or die(mysql_error());

//select database
$db = mysql_select_db($db_name, $connection);
mysql_query ("set character_set_client='utf8'");
mysql_query ("set character_set_results='utf8'");
mysql_query ("set collation_connection='utf8_general_ci'");

//Get default Opencart Lang code
$langcodeqry = mysql_query("SELECT * FROM ".$prefixopencart."setting WHERE `key` = 'config_language' ") or die(mysql_error());
$lcode = mysql_fetch_array($langcodeqry);
$langcode = $lcode['value'];


//Get Lang id with the code
$langidqry = mysql_query("SELECT * FROM ".$prefixopencart."language WHERE `code` = '".$langcode."' ") or die(mysql_error());
$lid = mysql_fetch_array($langidqry);
$langid = $lid['language_id'];
}
//connect to the database server



?> 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Oscommerce -> Opencart Product migrate tool</title>
  <script type="text/javascript" src="js/btn.js"></script>

  <style type="text/css" media="screen">

body { padding: 20px; font-size: 0.85em; font-family: georgia, serif; }
.btn { display: block; position: relative; background: #aaa; padding: 5px; float: left; color: #fff; text-decoration: none; cursor: pointer; }
.btn * { font-style: normal; background-image: url(btn2.png); background-repeat: no-repeat; display: block; position: relative; }
.btn i { background-position: top left; position: absolute; margin-bottom: -5px;  top: 0; left: 0; width: 5px; height: 5px; }
.btn span { background-position: bottom left; left: -5px; padding: 0 0 5px 10px; margin-bottom: -5px; }
.btn span i { background-position: bottom right; margin-bottom: 0; position: absolute; left: 100%; width: 10px; height: 100%; top: 0; }
.btn span span { background-position: top right; position: absolute; right: -10px; margin-left: 10px; top: -5px; height: 0; }

* html .btn span,
* html .btn i { float: left; width: auto; background-image: none; cursor: pointer; }

.btn.blue { background: #2ae; }
.btn.green { background: #9d4; }
.btn.pink { background: #e1a; }
.btn:hover { background-color: #a00; }
.btn:active { background-color: #444; }
.btn[class] {  background-image: url(shade.png); background-position: bottom; }

* html .btn { border: 3px double #aaa; }
* html .btn.blue { border-color: #2ae; }
* html .btn.green { border-color: #9d4; }
* html .btn.pink { border-color: #e1a; }
* html .btn:hover { border-color: #a00; }

p { clear: both; padding-bottom: 2em; }
form { margin-top: 2em; }
form p .btn { margin-right: 1em; }
textarea { margin: 1em 0;}
.table {
background-color:#FFFF99;
border-left:dotted;
border-bottom:dotted;
border-right:dotted;
border-top:dotted;
border-color:#FFCC00;
}
  </style>



</head>
<body>

	<?php
//Glavno menu
///////////////
if(empty($_GET['m'])){
?>
<center><strong>Select action</strong><br>
<table border="0" class="table"><tr><td><a href="index.php?m=1" class="btn blue">1st. Add categories</a></td><td><a href="index.php?m=2" class="btn green">2nd. Add products</a></td><td><a href="index.php?m=3" class="btn green">3th. Add manufacturers</a></td><td><a href="index.php?m=7" class="btn green">Generate SEO url-s from product name</a></td><td><a href="index.php?m=8" class="btn green">Generate SEO url-s from category name</a></td><td><a href="index.php?m=9" class="btn green">Generate SEO url-s from manifacturer name</a></td><td><a href="index.php?m=10" class="btn green">Add product options</a></td><td><a href="index.php?m=5" class="btn blue">Drop original opencart data</a></td></tr></table></center>
<?php
}
///////////
//1st step is to copy PrestaShop categories to Opencart
//////////////////////////////////////////////////////
if($_GET['m']==1){
//Getting the categories
///////////////////////
$ccat="select c.id_category, c.id_parent, c.date_add, c.date_upd, cd.id_category, cd.id_lang, cd.name, cd.description, cd.meta_title, cd.meta_keywords, cd.meta_description from ".$prefixpresta."category c, ".$prefixpresta."category_lang cd where c.id_category = cd.id_category and cd.id_lang=" . $plangid." and id_parent != 0 ";
$ccat_ex=mysql_query($ccat) or die(mysql_error());

while($ccats = mysql_fetch_array($ccat_ex)){
//Category image
$image = $ccats['id_category'].'-category.jpg';

if(!@copy($imgtmppath.'c/'.$image, $imgprdorig.$image))
{
    echo '| The image from '.$imgtmppath.'c/'.$image.' to '.$imgprdorig.$image.' <b>Error</b> The image doesn\'t exist<br>';
} else {
    echo "File copied from remote!<br>";
}

echo $ccats['categories_name'].' is added to OpenCart<br>';
$i++;

if($ccats['id_parent'] == 1){
$ccats['id_parent'] = 0;
}
$kcat = "INSERT INTO `".$prefixopencart."category` ( `category_id` , `image` , `parent_id` , `sort_order` , `date_added` , `date_modified`) VALUES ('". $ccats['id_category']."', '".$image."', '".$ccats['id_parent']."', '".$i."', '".$ccats['date_add']."', '".$ccats['date_upd']."')";
$kcat_ex=mysql_query($kcat);

$ktscat = "INSERT INTO `".$prefixopencart."category_to_store` ( `category_id` , `store_id` ) VALUES ('". $ccats['id_category']."', '0')";
$ktscat_ex=mysql_query($ktscat);

$jpcat = "INSERT INTO `".$prefixopencart."category_description` (`category_id` , `language_id` , `name`) VALUES ('".$ccats['id_category']."', '".$langid."', '".mysql_real_escape_string(htmlspecialchars($ccats['name']))."')";
$jpcat_ex=mysql_query($jpcat) or die(mysql_error());
echo htmlspecialchars($ccats['name']);

}
echo '<a href="index.php" class="btn green">Back</a>';
}
///////////////////////////////////////////////////////

//2nd step is to copy PrestaShop products to opencart
///////////////////////////////////////////////////////
if($_GET['m']==2){
//$pr = "select p.id_product, p.id_manufacturer, p.quantity, p.weight, p.date_add, p.date_upd, p.active, p.price, pd.id_product, pd.id_lang, pd.description, pd.meta_description, pd.meta_keywords, pd.meta_title, pd.name from ".$prefixpresta."product p, ".$prefixpresta."product_lang pd where p.id_product = pd.id_product and pd.id_lang = '" . $plangid."'  ";

$pr = "select p.id_product, p.id_manufacturer, p.quantity, p.weight, p.date_add, p.date_upd, p.active, p.price, pd.id_product, pd.id_lang, pd.description, pd.meta_description, pd.meta_keywords, pd.meta_title, pd.name from ps_product p, ps_product_lang pd where p.id_product = pd.id_product AND id_lang = 2";
$pr_ex=mysql_query($pr) or die(mysql_error());

while($prs = mysql_fetch_array($pr_ex)){

//Whit this query i will find the name of the image
$gimg = mysql_query("SELECT * FROM ".$prefixpresta."image WHERE id_product = ".$prs['id_product']." and position = 1 and cover = 1");
$img = mysql_fetch_array($gimg);

$image = $img['id_product'].'-'.$img['id_image'].'.jpg';
echo $prs['name'].' is successfully added added to OpenCart<br>';

$pt = "INSERT INTO `".$prefixopencart."product` (`product_id`, `model`, `sku`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `status`, `date_added`, `date_modified`, `viewed`) VALUES ('".$prs['id_product']."', 'm_".$prs['id_product']."', 'm_".$prs['id_product']."', '', '".$prs['quantity']."', '7', '".mysql_real_escape_string($image)."', '".$prs['id_manufacturer']."', '1', '".mysql_real_escape_string($prs['price'])."', '', CURDATE(), '".$prs['weight']."', '1', '0.00', '0.00', '0.00', '0', '".$prs['active']."', '".$prs['date_add']."', '".$prs['date_upd']."', '0')";
$pt_ex=mysql_query($pt) or die(mysql_error());

$ptsjc = "INSERT INTO `".$prefixopencart."product_to_store` (`product_id`, `store_id`) VALUES (".$prs['id_product'].", 0)";
$ptsjc_ex=mysql_query($ptsjc);

$pdi = "INSERT INTO `".$prefixopencart."product_description` (`product_id` , `language_id` , `name` , `description`, `meta_description`) VALUES ('".$prs['id_product']."' , '".$langid."' , '".mysql_real_escape_string(htmlspecialchars($prs['name']))."', '".mysql_real_escape_string(htmlspecialchars($prs['description']))."', '".mysql_real_escape_string($prs['meta_description'])."')";
$pdi_ex=mysql_query($pdi) or die(mysql_error());



if(!@copy($imgtmppath.'p/'.$image, $imgprdorig.$image))
{
    echo 'От '.$imgtmppath.'p/'.$image.' to '.$imgprdorig.'p'.$image.' <b>Error</b><br>';
} else {
    echo "File copied from remote!<br>";
}

}

$ptc = "SELECT * FROM `".$prefixpresta."product` ";
$ptc_ex=mysql_query($ptc) or die(mysql_error());

while($ptcs = mysql_fetch_array($ptc_ex)){

$ptjc = "INSERT INTO `".$prefixopencart."product_to_category` (`product_id`, `category_id`) VALUES ('".$ptcs['id_product']."', '".$ptcs['id_category_default']."');";
$ptjc_ex=mysql_query($ptjc) or die(mysql_error());
}
echo '<a href="index.php" class="btn green">Back</a>';
}

if($_GET['m']==3){
$m = "select * FROM ".$prefixpresta."manufacturer ";

$m_ex=mysql_query($m) or die(mysql_error());

while($mm = mysql_fetch_array($m_ex)){

$image = $mm['id_manufacturer'].'.jpg';

$mgo = "INSERT INTO `".$prefixopencart."manufacturer` (`manufacturer_id`, `name`, `image`) VALUES ('".$mm['id_manufacturer']."', '".mysql_real_escape_string(htmlspecialchars($mm['name']))."', '".mysql_real_escape_string($image)."');";

$mts = "INSERT INTO `".$prefixopencart."manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES ('".$mm['id_manufacturer']."', '0');";

$mts_ex=mysql_query($mts) or die(mysql_error());
$mgo_ex=mysql_query($mgo) or die(mysql_error());

if(!@copy($imgtmppath.'m/'.$image, $imgprdorig.$image))
{
    echo '| The image from '.$imgtmppath.$image.' to '.$imgprdorig.$image.' <b>Error</b> The image doesn\'t exist<br>';
} else {
    echo "File copied from remote!<br>";
}

echo $mm['name'].' is added to Opencart';
}

echo 'Ready <a href="index.php" class="btn green">Back</a>';
}

if($_GET['m']==5){

$arr = array($prefixopencart.'category', $prefixopencart.'address', $prefixopencart.'category_description', $prefixopencart.'category_to_store', $prefixopencart.'product_to_store', $prefixopencart.'customer', $prefixopencart.'manufacturer', $prefixopencart.'manufacturer_to_store', $prefixopencart.'product', $prefixopencart.'product_description', $prefixopencart.'product_discount', $prefixopencart.'product_image', $prefixopencart.'product_related', $prefixopencart.'product_special', $prefixopencart.'product_to_category', $prefixopencart.'order', $prefixopencart.'order_history', $prefixopencart.'order_total');

foreach($arr as $a){
$m = "TRUNCATE `".$a."` ";

$m_ex=mysql_query($m) or die(mysql_error());
//echo $m.'<br>';
}
echo 'Tables category, category_description, customer, manufacturer, product, product_description, product_discount, product_image, product_related, product_special, product_to_category, order, order_history, order_total was truncated';

}


if($_GET['m'] == 7){
$pr = "select * FROM ".$prefixopencart."product_description ";
$pr_ex=mysql_query($pr) or die(mysql_error());

while($prs = mysql_fetch_array($pr_ex)){

$seo = html_entity_decode($prs['name'], ENT_QUOTES, 'UTF-8');	
$seo = mb_substr($seo, 0, 120, 'UTF-8');
$seo = str_replace(' ', '-', $seo);
$seo = str_replace('!', '', $seo);
$seo = str_replace('"', '', $seo);
$seo = str_replace(',', '', $seo);
$seo = str_replace('?', '', $seo);
$seo = str_replace('.', '', $seo);
$seo = str_replace('/', '', $seo);

$shotta = "INSERT INTO `".$prefixopencart."url_alias` (`query`, `keyword`) VALUES ('product_id=".mysql_real_escape_string($prs['product_id'])."', '".mysql_real_escape_string($seo).'-'.$prs['product_id']."') ;";
$shotta_ex = mysql_query($shotta) or die(mysql_error());

}

echo 'Ready <a href="index.php" class="btn green">Back</a>';
}

if($_GET['m'] == 8){
$pr = "select * FROM ".$prefixopencart."category_description ";
$pr_ex=mysql_query($pr) or die(mysql_error());

while($prs = mysql_fetch_array($pr_ex)){

$seo = html_entity_decode($prs['name'], ENT_QUOTES, 'UTF-8');	
$seo = str_replace(' ', '-', $seo);
$seo = str_replace('!', '', $seo);
$seo = str_replace('"', '', $seo);
$seo = str_replace(',', '', $seo);
$seo = str_replace('?', '', $seo);
$seo = str_replace('.', '', $seo);
$seo = str_replace('/', '', $seo);

$shotta = "INSERT INTO `".$prefixopencart."url_alias` (`query`, `keyword`) VALUES ('category_id=".mysql_real_escape_string($prs['category_id'])."', '".mysql_real_escape_string($seo).'-'.$prs['category_id']."') ;";
$shotta_ex = mysql_query($shotta) or die(mysql_error());

}

echo 'Ready <a href="index.php" class="btn green">Back</a>';
}

if($_GET['m'] == 9){
$pr = "select * FROM ".$prefixopencart."manufacturer ";
$pr_ex=mysql_query($pr) or die(mysql_error());

while($prs = mysql_fetch_array($pr_ex)){

$seo = html_entity_decode($prs['name'], ENT_QUOTES, 'UTF-8');	
$seo = str_replace(' ', '-', $seo);
$seo = str_replace('!', '', $seo);
$seo = str_replace('"', '', $seo);
$seo = str_replace(',', '', $seo);
$seo = str_replace('?', '', $seo);
$seo = str_replace('.', '', $seo);
$seo = str_replace('/', '', $seo);

$shotta = "INSERT INTO `".$prefixopencart."url_alias` (`query`, `keyword`) VALUES ('manufacturer_id=".mysql_real_escape_string($prs['manufacturer_id'])."', '".mysql_real_escape_string($seo)."') ;";
$shotta_ex = mysql_query($shotta) or die(mysql_error());

}

echo 'Ready <a href="index.php" class="btn green">Back</a>';
}

if($_GET['m'] == 10){
$pro = mysql_query("SELECT * FROM ".$prefixosc."products_attributes GROUP BY products_id, options_id") or die(mysql_error());
$o=1;
//selcet options by attributes
while($aa = mysql_fetch_array($pro)){
$o++;
//selektirame products_options
$propt = mysql_query("SELECT * FROM ".$prefixosc."products_options WHERE products_options_id = ".$aa['options_id']) or die(mysql_error());
$popt = mysql_fetch_array($propt);

if(empty($popt['products_options_name'])){
$popt['products_options_name'] = 'Select Option';
}
echo 'Product id: '.$aa['products_id'].' - '.$popt['products_options_name'].':<br>';

mysql_query("INSERT INTO `".$prefixopencart."product_option` (`product_option_id`, `product_id`, `sort_order`) VALUES ('".$o."', '".mysql_real_escape_string($aa['products_id'])."', '0') ;") or die(mysql_error());

mysql_query("INSERT INTO `".$prefixopencart."product_option_description` (`product_option_id`, `language_id`, `product_id`, `name`) VALUES ('".mysql_real_escape_string($o)."', '".mysql_real_escape_string($langid)."', '".$aa['products_id']."', '".$popt['products_options_name']."') ;") or die(mysql_error());

//selektirame stoinostite na atributite pak ot tablica products_attributes
$st = mysql_query("SELECT * FROM ".$prefixosc."products_attributes WHERE products_id = ".$aa['products_id']." and options_id = ".$aa['options_id']);
while($stex = mysql_fetch_array($st)){
$provt = mysql_query("SELECT * FROM ".$prefixosc."products_options_values WHERE products_options_values_id = ".$stex['options_values_id']) or die(mysql_error());
$povt = mysql_fetch_array($provt);


//
mysql_query("INSERT INTO `".$prefixopencart."product_option_value` (`product_option_id`, `product_id`, `quantity`, `subtract`, `price`, `prefix`, `sort_order`) VALUES ('".mysql_real_escape_string($o)."', '".$aa['products_id']."', '1', '0', '".$povt['options_values_price']."', '', '0') ;") or die(mysql_error());

//vzimame poslednoto value id
$lastval = mysql_query("SELECT max(product_option_value_id) FROM ".$prefixopencart."product_option_value") or die(mysql_error());
$lastvalidget = mysql_fetch_array($lastval);

mysql_query("INSERT INTO `".$prefixopencart."product_option_value_description` (`product_option_value_id`, `language_id`, `product_id`, `name`) VALUES ('".mysql_real_escape_string($lastvalidget[0])."', '".mysql_real_escape_string($langid)."', '".$aa['products_id']."', '".mysql_real_escape_string($povt['products_options_values_name'])."') ;") or die(mysql_error());
//

echo ' - '.$povt['products_options_values_name'].'<br>';
}



}

	echo 'Ready <a href="index.php" class="btn green">Back</a>';
	}
////

	?>
</body>
</html>