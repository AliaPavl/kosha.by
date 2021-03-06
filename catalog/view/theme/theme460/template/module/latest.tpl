<script type="text/javascript">
		(function($){$.fn.equalHeights=function(minHeight,maxHeight){tallest=(minHeight)?minHeight:0;this.each(function(){if($(this).height()>tallest){tallest=$(this).height()}});if((maxHeight)&&tallest>maxHeight)tallest=maxHeight;return this.each(function(){$(this).height(tallest)})}})(jQuery)
	$(window).load(function(){
		if($(".maxheight").length){
		$(".maxheight").equalHeights()}
	})
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
							<!-- Product image -->
							<div class="product_image image2">
								<?php if ($product['thumb']) { ?><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a><?php } ?>
								
							</div>
							<div class="inner">
								<div class="f-left">
									<!-- Product rating -->
									<?php if ($product['rating']) { ?>
										<div class="product_rating rating">
											<img height="13" src="catalog/view/theme/theme460/image/stars-<?php echo $product['rating']; ?>.png" alt="<?php echo $product['reviews']; ?>" />
										</div>
									<?php } ?>
									<!-- Product price -->
									<?php if ($product['price']) { ?>
									<div class="product_price price">
										<?php if (!$product['special']) { ?>
										<?php echo $product['price']; ?>
										<?php } else { ?>
										<span class="price-new"><?php echo $product['special']; ?></span><span class="price-old"><?php echo $product['price']; ?></span>
										<?php } ?>
									</div>
									<?php } ?>
									<!-- Product name -->
									<div class="product_name name maxheight"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
									<!-- Product description -->
									<?php if ($product['description']) {?>
										<div class="product_description description"><?php echo mb_substr($product['description1'],0,70,'UTF-8').'...';?></div>
									<?php } ?>
								</div>
								<!-- Product buttons -->
								<div class="product_buton cart-button">
									<div class="cart">
										<a title="<?php echo $button_cart; ?>" data-id="<?php echo $product['product_id']; ?>;" class="button addToCart">
											<span><?php echo $button_cart; ?></span>
										</a>
									</div>
									<span class="clear"></span>
								</div>
								<div class="clear"></div>
								
							</div>
							<div class="clear"></div>
						</div>
					</li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>