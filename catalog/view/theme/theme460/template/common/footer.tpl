<div class="clear"></div>

</div>

</div>

</div>

<div class="clear"></div>

</section>

<!-- Footer -->

<div class="container">

	<div class="row">

		<div class="col-sm-12">

		

		

<footer>

		<div class="row">

			<?php if ($informations) { ?>

			<div class="col-sm-3">

				<div class="block">

					<div class="block-heading">

						<?php echo $text_information; ?>

					</div>

					<div class="block-content">

						<ul>

							<?php foreach ($informations as $information) { ?>

							<li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>

							<?php } ?>
<li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>

							<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>

						</ul>

					</div>

				</div>

			</div>

			<?php } ?>

			

			
			
		</div>

	<!-- copyright -->

		<div class="row">

			<div class="col-sm-12">

				<div id="copyright">

					<?php echo $powered; ?><!-- [[%FOOTER_LINK]] -->

				</div>
<img src="catalog/view/theme/theme460/image/card-logo.jpg" class="footer-payment" />

			</div>

		</div>

</footer>

</div>

	</div>

</div>

<script type="text/javascript" 	src="catalog/view/theme/<?php echo $this->config->get('config_template');?>/js/livesearch.js"></script>

</div>

</div>

</div>

</body></html>