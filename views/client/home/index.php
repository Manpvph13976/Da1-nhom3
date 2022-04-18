<div class="ps-section--features-product ps-section masonry-root pt-100 pb-100">
	<div class="ps-container">
		<div class="ps-section__header mb-50">
			<h3 class="ps-section__title" data-mask="features">- TOP SẢN PHẨM MỚI NHẤT</h3>
		</div>

		<div class="ps-section__content pb-50">
			<div class="masonry-wrapper" data-col-md="4" data-col-sm="2" data-col-xs="1" data-gap="30" data-radio="100%">
				<div class="ps-masonry">
					<div class="grid-sizer"></div>

					<?php foreach ($list_spdacbiet as $list_db) : ?>
						<div class="grid-item kids">
							<div class="grid-item__content-wrapper">
								<div class="ps-shoe mb-30">
									<a href="<?= CLIENT_URL . 'chi-tiet-san-pham?id=' . $list_db['id_product'] . '&id_brand=' . $list_db['id_brand'] ?>">
										<div class="ps-shoe__thumbnail">
											<div class="ps-badge"><span>New</span></div>
											<img alt="" src="<?= PUBLIC_ASSETS . $list_db['product_image'] ?>" />
										</div>
									</a>

									<div class="ps-shoe__content">
										<div class="ps-shoe__variants">
											<div class="ps-shoe__variant normal">
												<img alt="" src="<?= PUBLIC_ASSETS  . $list_db['product_image'] ?>" />
												<img alt="" src="<?= PUBLIC_ASSETS  . $list_db['product_image'] ?>" />
												<img alt="" src="<?= PUBLIC_ASSETS  . $list_db['product_image'] ?>" />
												<img alt="" src="<?= PUBLIC_ASSETS  . $list_db['product_image'] ?>" />
											</div>
										</div>

										<div class="ps-shoe__detail"><a class="ps-shoe__name" href="<?= CLIENT_URL . 'chi-tiet-san-pham?id=' . $list_db['id_product'] . '&id_brand=' . $list_db['id_brand'] ?>"><?= $list_db['product_name'] ?></a>
											<span class="ps-shoe__price"> <?= number_format($list_db['price']) ?></span>
										</div>
									</div>
								</div>
							</div>

						</div>
					<?php endforeach ?>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="ps-section--offer">
	<div class="ps-column"><a class="ps-offer" href="product-listing.html"><img alt="" src="<?= CLIENT_ASSETS ?>images/banner/home-banner-1.png" /></a></div>

	<div class="ps-column"><a class="ps-offer" href="product-listing.html"><img alt="" src="<?= CLIENT_ASSETS ?>images/banner/home-banner-2.png" /></a></div>
</div>



<div class="ps-section ps-section--top-sales ps-owl-root pt-80 pb-80">
	<div class="ps-container">
		<div class="ps-section__header mb-50">
			<div class="row">
				<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 ">
					<h3 class="ps-section__title" data-mask="BEST SALE">- TOP SẢN PHẨM YÊU THÍCH NHẤT</h3>
				</div>
			</div>
		</div>

		<div class="ps-section__content pb-50">
			<div class="masonry-wrapper" data-col-md="4" data-col-sm="2" data-col-xs="1" data-gap="30" data-radio="100%">
				<div class="ps-masonry">
					<div class="grid-sizer"></div>
					<?php foreach ($list_sp as $list_sp) : ?>
						<div class="grid-item kids">

							<div class="grid-item__content-wrapper">
								<div class="ps-shoe mb-30">
									<a href="<?= CLIENT_URL . 'chi-tiet-san-pham?id=' . $list_sp['id_product'] . '&id_brand=' . $list_sp['id_brand'] ?>">
										<div class="ps-shoe__thumbnail">
											<img alt="" src="<?= PUBLIC_ASSETS  . $list_sp['product_image'] ?>" />
										</div>
									</a>


									<div class="ps-shoe__content">
										<div class="ps-shoe__variants">
											<div class="ps-shoe__variant normal"><img alt="" src="<?= PUBLIC_ASSETS  . $list_sp['product_image'] ?>" /><img alt="" src="<?= PUBLIC_ASSETS  . $list_sp['product_image'] ?>" /><img alt="" src="<?= PUBLIC_ASSETS  . $list_sp['product_image'] ?>" /><img alt="" src="<?= PUBLIC_ASSETS  . $list_sp['product_image'] ?>" />
											</div>
										</div>

										<div class="ps-shoe__detail"><a class="ps-shoe__name" href="<?= CLIENT_URL . 'chi-tiet-san-pham?id=' . $list_sp['id_product'] . '&id_brand=' . $list_sp['id_brand'] ?>"><?= $list_sp['product_name'] ?></a>
											<span class="ps-shoe__price"> <?= number_format($list_sp['price']) ?></span>
										</div>
									</div>
								</div>
							</div>

						</div>
					<?php endforeach ?>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="ps-home-testimonial bg--parallax pb-80" data-background="<?= PUBLIC_ASSETS ?>client/images/background/parallax.jpg">
	<div class="container">
		<div class="owl-slider" data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut" data-owl-auto="true" data-owl-dots="true" data-owl-duration="1000" data-owl-gap="0" data-owl-item="1" data-owl-item-lg="1" data-owl-item-md="1" data-owl-item-sm="1" data-owl-item-xs="1" data-owl-loop="true" data-owl-mousedrag="on" data-owl-nav="false" data-owl-speed="5000">
			<div class="ps-testimonial">
				<div class="ps-testimonial__thumbnail"><img alt="" src="<?= CLIENT_ASSETS ?>images/helooo.jpg" /></div>

				<header>
					<br><br>
					<p>Cara Delevingne</p>
				</header>

				<footer>
					<p>&ldquo;Tôi dành phần lớn thời gian của mình khoác lên những thứ bất tiện, vì vậy tôi chỉ nghĩ đến những đôi giầy thể thao. &ldquo;</p>
				</footer>
			</div>

			<div class="ps-testimonial">
				<div class="ps-testimonial__thumbnail"><img alt="" src="<?= CLIENT_ASSETS ?>images/heloo.jpg" /></div>

				<header>
					<br><br>
					<p>Cinderella</p>
				</header>

				<footer>
					<p>&ldquo;Một đôi giầy có thể thay đổi cuộc đời bạn.&ldquo;</p>
				</footer>
			</div>

			<div class="ps-testimonial">
				<div class="ps-testimonial__thumbnail"><img alt="" src="<?= CLIENT_ASSETS ?>images/hole.jpg" /></div>

				<header>
					<br><br>
					<p>Oprah Winfrey</p>
				</header>

				<footer>
					<p>&ldquo;Chân tôi vẫn đang trên mặt đất, và tôi chỉ đang đi những đôi giày tốt hơn. &ldquo;</p>
				</footer>
			</div>
		</div>
	</div>
</div>

<div class="ps-section ps-home-blog pt-80 pb-80">
	<div class="ps-container">
		<div class="ps-section__header mb-50">
			<h2 class="ps-section__title" data-mask="News">- CÂU CHUYỆN CỦA CHÚNG TÔI</h2>

			<div class="ps-section__action"><a class="ps-morelink text-uppercase" href="#">Xem tất cả bài đăng</a>
			</div>
		</div>

		<div class="ps-section__content">
			<div class="row">
				<?php foreach ($show_news as $news) : ?>
					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
						<div class="ps-post mb-30">
							<div class="ps-post__thumbnail">
								<a class="ps-post__overlay" href="<?= CLIENT_URL . 'news_detail?id_news=' . $news['id_news'] ?>"></a>
								<img src="<?= PUBLIC_ASSETS  . $news['image_news'] ?>" alt="">
							</div>
							<div class="ps-post__content"><a class="ps-post__title" href="<?= CLIENT_URL . 'news_detail?id_news=' . $news['id_news'] ?>"><?= $news['name_news'] ?></a>
								<p class="ps-post__meta"><span class="ml-5"><?= $news['date_news'] ?></span></p>
								<p><?= $news['especially_news'] ?> </p>
								<a class="ps-morelink" href="<?= CLIENT_URL . 'news_detail?id_news=' . $news['id_news'] ?>">Read more<i class="fa fa-long-arrow-right"></i></a>
							</div>
						</div>
					</div>
				<?php endforeach ?>

			</div>
		</div>
	</div>
</div>