<script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight").length){
		$(".maxheight").equalHeights()}
	})
</script>

<script type="text/javascript">
$(document).ready(function(){
$(function(){
$('.new-products  li ').last().addClass('last');
});
}); 
</script>
	<div class="box new-products">
		<div class="box-heading"><?php echo $heading_title; ?></div>
		<div class="box-content">
			<div class="box-product">
				<ul class="row">
		  <?php $i=0; foreach ($products as $product) { $i++ ?>
		  <?php 
			   $perLine = 4;
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
						<li class="<?php echo $a. $last_line ;?> col-sm-<?php echo $spanLine ;?>">
							<div class="padding">
						<div class="image2">
							<div><?php if ($product['thumb']) { ?><img id="img_<?php echo $product['product_id']; ?>" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /><?php } else{ ?><img src="catalog/view/theme/theme416/image/no-image.png" alt="" /><?php } ?>
							<a class="link-img" href="<?php echo $product['href']; ?>"></a>
							<div class="cart-button">
								<a href="<?php echo $product['href']; ?>" class="button details"><i class="fa fa-info-circle"></i></a>								
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
						<div class="inner">
							<div class="f-left">
						
							<div class="name maxheight-feat"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
							<?php if ($product['price']) { ?>
							<div class="price">
								<?php if (!$product['special']) { ?>
								<?php echo $product['price']; ?>
								<?php } else { ?>
								<span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
								<?php } ?>
							</div>
							<?php } ?>						
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
		</div>
	</div>