<style type="text/css">
.product-grid .image, .product-list .image, .box-product .image2, .box-product .image {
	height:440px;
}
.banner-inferior {
    float: left;
    width: 33.3333%;
    text-align: center;
    margin-bottom: 30px;
}
.banner-inferior img {
	border-top: solid 5px #C03;
}
</style>
<script type="text/javascript">
	if ($('body').width() > 767) {
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight-feat").length){
		$(".maxheight-feat").equalHeights()}
	});
	};
</script>
<div class="box featured" <?php /*  style="float: left; width: 850px;" */ ?>>
  <?php /* <div class="box-heading"><?php echo $heading_title; ?></div> */ ?>
  <div class="box-content">
	<div class="box-product">
		<ul class="row">
		  <?php $i=0; foreach ($products as $product) { $i++ ?>
		  <?php 
			   $perLine = 3;
			   $spanLine = 3;
			   $last_line = "";
							$total = count($products);
							$totModule = $total%$perLine;
							if ($totModule == 0)  { $totModule = $perLine;}
							if ( $i > $total - $totModule) { $last_line = " last_line";}
							if ($i%$perLine==1) {
								$a='first-in-line';
							}
							elseif ($i%$perLine==0) {
								$a='last-in-line';
							}
							else {
								$a='';
							}
						?>
			<li class="<?php echo $a. $last_line ;?> col-sm-<?php echo $spanLine ;?>" style="width: 33.3333%;">
				<script type="text/javascript">
				$(document).ready(function(){
					$("a.colorbox<?php echo $i?>").colorbox({
					rel: 'colorbox',
					inline:true,
					html: true,
					width:'58%',
					maxWidth:'780px',
					height:'70%',
					open:false,
					returnFocus:false,
					fixed: true,
					title: false,
					href:'.quick-view<?php echo $i;?>',
					current:'<?php echo $text_product; ?>'
					});
					});
				</script> 
				<div class="padding">
				
				<div class="image2">
					<div><?php if ($product['thumb']) { ?><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /><?php } else{ ?><img src="catalog/view/theme/theme416/image/no-image.png" alt="" /><?php } ?>
						
						<a class="link-img" href="<?php echo $product['href']; ?>"></a>
					
						<div class="cart-button">
							   <a href="<?php echo $product['href']; ?>" class="colorbox<?php echo $i;?> quick-view-button"><i class=" fa fa-search-plus "></i></a>
							<div class="clear"></div>
							<div class="cart">
								<a title="<?php echo $button_cart; ?>" data-id="<?php echo $product['product_id']; ?>;" class="button addToCart">
									<span><?php echo $button_cart; ?></span>
								</a>
							</div>
							<div class="wishlist">
								<a title="<?php echo $button_wishlist; ?>"  onclick="addToWishList('<?php echo $product['product_id']; ?>');">
									<span><?php echo $button_wishlist; ?></span>
								</a>
							</div>
							<div class="compare">
								<a title="<?php echo $button_compare; ?>"  onclick="addToCompare('<?php echo $product['product_id']; ?>');">
									<span><?php echo $button_compare; ?></span>
								</a>
							</div>
							<span class="clear"></span>
							
						</div>
				</div>					
				</div>
				
				<div style="display:none;">
					<div  class="quick-view<?php echo $i;?> preview">
						<div class="wrapper marg row">
							<?php if ($product['thumb1']) { ?>
							<div class="left col-sm-4">
									<div class="image3">
										<a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb1']; ?>" alt="<?php echo $product['name']; ?>" /></a>
									</div>
							</div>
							<?php } ?>
							<div class="right col-sm-8">
								<h2><?php echo $product['name']; ?></h2>
								<div class="inf">
									<?php if ($product['author']) {?>
										<span class="manufacture"><?php echo $text_manufacturer; ?> <a href="<?php echo $product['manufacturers'];?>"><?php echo $product['author']; ?></a></span>
									<?php }?>
									<?php if ($product['model']) {?>
										<span class="model"><?php echo $text_model; ?><?php echo $product['model']; ?></span>
									<?php }?>
									<span class="prod-stock-2"><?php echo $text_availability; ?></span>
										
										<?php
										   if ($product['text_availability'] > 0) { ?>
										 <span class="prod-stock"><?php echo $text_instock; ?></span>
										<?php } else { ?>
											   <span class="prod-stock"><?php echo $text_outstock; ?></span>
										 <?php
										 }	
										 ?>
									<?php if ($product['price']) { ?>
										<div class="price">
									  <span class="text-price"><?php echo $text_price; ?></span>
									  <?php if (!$product['special']) { ?>
									  <?php echo $product['price']; ?>
									  <?php } else { ?>
									  <span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
									  <?php } ?>
									  <div style="float: right;
    background-color: #CC0033;
    color: #FFF;
    padding: 2px 8px;
    margin-right: 5px;
    font-size: 15px;">Comprar</div>
									</div>
									<?php } ?>
								</div>
								<div class="cart-button">
									<div class="cart">
										<a title="<?php echo $button_cart; ?>" data-id="<?php echo $product['product_id']; ?>;" class="button addToCart-1 ">
											<span><?php echo $button_cart; ?></span>
										</a>
									</div>
									
									<div class="wishlist">
										<a title="<?php echo $button_wishlist; ?>"  onclick="addToWishList('<?php echo $product['product_id']; ?>');">
											<span><?php echo $button_wishlist; ?></span>
										</a>
									</div>
									<div class="compare">
										<a title="<?php echo $button_compare; ?>"  onclick="addToCompare('<?php echo $product['product_id']; ?>');">
											<span><?php echo $button_compare; ?></span>
										</a>
									</div>
									<span class="clear"></span>
								</div>
								<div class="clear"></div>
								<div class="rating">
									<img height="18" src="catalog/view/theme/theme416/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
								</div>
							</div>
						</div>
						<div class="description">
							<?php echo $product['description'];?>
						</div>
						
					</div>
				</div>				
				
				<div class="inner">
					<div class="f-left">
						
						<div class="name maxheight-feat" style="text-align: left; max-height: 20px; overflow: overlay;"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
						<?php if ($product['price'] && $product['price'] !=  "R$ 0,00") { ?>
						<div class="price" style="text-align: left;">
							<?php if (!$product['special']) { ?>
							<?php echo $product['price']; ?>
							<?php } else { ?>
							<span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
							<?php } ?>
							<a href="<?php echo $product['href']; ?>"><div style="float: right;
    background-color: #CC0033;
    color: #FFF;
    padding: 2px 8px;
    margin-right: 5px;
    font-size: 15px;">Comprar</div></a>
						</div>
						<?php } ?>
						
						<div class="cart-button">
												
						<div class="cart">
							<a title="<?php echo $button_cart; ?>" data-id="<?php echo $product['product_id']; ?>;" class="button addToCart">
								<span><?php echo $button_cart; ?></span>
							</a>
						</div>
						<div class="wishlist">
							<a title="<?php echo $button_wishlist; ?>"  onclick="addToWishList('<?php echo $product['product_id']; ?>');">
								<span><?php echo $button_wishlist; ?></span>
							</a>
						</div>
						<div class="compare">
							<a title="<?php echo $button_compare; ?>"  onclick="addToCompare('<?php echo $product['product_id']; ?>');">
								<span><?php echo $button_compare; ?></span>
							</a>
						</div>
						<span class="clear"></span>
						</div>
						
					</div>
					
					<div class="clear"></div>
					<?php if ($product['rating']) { ?>
					<div class="rating">
						<img height="13" src="catalog/view/theme/theme416/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
					</div>
					<?php } ?>
				</div>
				<div class="clear"></div>
				</div>
			</li>
		  <?php } ?>
		</ul>
	</div>
	<div class="clear"></div>
  </div>
</div>


<div style="background-color: #FFF7F0;
    height: 340px;
    border-radius: 30px;
    width: 1120px;
    padding: 20px;
    margin: auto;
    margin-bottom: 25px;
    padding-top: 45px;">

	<div class="banner-inferior">
		<img src="http://www.livrariadagastronomia.com.br/img/cms/BOLO.jpg" width="300" height="250" alt="bolo" title="bolo">
	</div>

	<div class="banner-inferior">
		<img src="http://www.livrariadagastronomia.com.br/img/cms/20151002%20-%20LIVRARIA%20DA%20GASTRONOMIA%20-%20SITE%20-%20BANNER%20PARCEIROS%20-%20SALADA%20DE%20FRUTA%20COPO.jpg" width="300" height="250" alt="bolo" title="bolo">
	</div>

	<div class="banner-inferior">
		<img src="http://www.livrariadagastronomia.com.br/img/cms/20151002%20-%20LIVRARIA%20DA%20GASTRONOMIA%20-%20SITE%20-%20BANNER%20PARCEIROS%20-%20PAO%20E%20TRIGO.jpg" width="300" height="250" alt="bolo" title="bolo">
	</div>

	<!-- 
	<img src="http://www.livrariadagastronomia.com.br/img/cms/20151002%20-%20LIVRARIA%20DA%20GASTRONOMIA%20-%20SITE%20-%20BANNER%20PARCEIROS%20-%20SORVETE%20E%20FRUTAS%20AMARELA.jpg" width="300" height="250" alt="bolo" title="bolo"><br><br>
	<img src="http://www.livrariadagastronomia.com.br/img/cms/20151002%20-%20LIVRARIA%20DA%20GASTRONOMIA%20-%20SITE%20-%20BANNER%20PARCEIROS%20-%20TORTA%20DE%20AMEIXA.jpg" width="300" height="250"> -->
</div>