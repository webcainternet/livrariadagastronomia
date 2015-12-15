<div class="clear"></div>
</div>
</div>
</div>
<div class="clear"></div>
</section>
<style type="text/css">
@media (min-width: 768px) {
	.col-sm-2 {
	    width: 22.666667%;
	}
}
</style>
<footer>
	<div class="container">
		<div class="row">
			<?php if ($informations) { ?>
			<div class="col-sm-2">
				<h3><?php echo $text_information; ?></h3>
				<ul>
				<?php foreach ($informations as $information) { ?>
				<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
				<?php } ?>
				</ul>
			</div>
			<?php } ?>
			<div class="col-sm-2">
				<h3><?php echo $text_service; ?></h3>
				<ul>
				<li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
				<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
				<li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
				</ul>
			</div>
			<div class="col-sm-2">
				<h3><?php echo $text_account; ?></h3>
				<ul>
				<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
				<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
				<li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
				</ul>
			</div>			
			<div class="col-sm-3" style="display: block;">
				<?php if ($logo) { ?>
					<div id="logo-f"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" /></a></div>
				<?php } ?>
				<div class="foot-phone">					
					<div class="extra-wrap">
						<div><?php echo $address; ?></div>
						<div class="phone"><span><?php echo $telephone_tx; ?></span><?php echo $telephone; ?></div>
						<div class="email"><span><?php echo $email_tx; ?></span><?php echo $email; ?></div>						
					</div>
				</div>
				<ul>
					
				</ul>
			</div>
		</div>
		
	</div>
	
	<div id="copyright">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">				
					<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->
				</div>
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>
</div>
</div>
</div>
</body></html>