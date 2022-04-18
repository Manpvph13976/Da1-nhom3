<div class="ps-section--features-product ps-section masonry-root pt-100 pb-100">
    <div class="ps-container">
        <div class="ps-section__header mb-50">
            <h3 class="ps-section__title" data-mask="features">- <?= $brand['brand_name'] ?></h3>
        </div>

        <div class="ps-section__content pb-50">
            <div class="masonry-wrapper" data-col-md="4" data-col-sm="2" data-col-xs="1" data-gap="30" data-radio="100%">
                <div class="ps-masonry">
                    <div class="grid-sizer"></div>
                    <?php foreach ($product_category as $category) : ?>
                        <div class="grid-item kids">
                            <div class="grid-item__content-wrapper">
                                <div class="ps-shoe mb-30">
                                    <a href="<?= CLIENT_URL . 'chi-tiet-san-pham?id=' . $category['id_product'] . '&id_brand=' . $category['id_brand'] ?>">
                                        <div class="ps-shoe__thumbnail">
                                            <img alt="" src="<?= PUBLIC_ASSETS  . $category['product_image'] ?>" />
                                        </div>
                                    </a>

                                    <div class="ps-shoe__content">
                                        <div class="ps-shoe__variants">
                                            <div class="ps-shoe__variant normal">
                                                <img alt="" src="<?= PUBLIC_ASSETS  . $category['product_image'] ?>" />
                                                <img alt="" src="<?= PUBLIC_ASSETS  . $category['product_image'] ?>" />
                                                <img alt="" src="<?= PUBLIC_ASSETS  . $category['product_image'] ?>" />
                                                <img alt="" src="<?= PUBLIC_ASSETS  . $category['product_image'] ?>" />
                                            </div>
                                        </div>

                                        <div class="ps-shoe__detail"><a class="ps-shoe__name" href="<?= CLIENT_URL . 'chi-tiet-san-pham?id=' . $category['id_product'] . '&id_brand=' . $category['id_brand'] ?>"><?= $category['product_name'] ?></a>
                                            <span class="ps-shoe__price"> <?= number_format($category['price']) ?></span>
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
<div class="ps-home-testimonial bg--parallax pb-80" data-background="images/background/parallax.jpg">
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
            <h2 class="ps-section__title" data-mask="News">- Our Story</h2>

            <div class="ps-section__action"><a class="ps-morelink text-uppercase" href="#">View all post</a>
            </div>
        </div>

        <div class="ps-section__content">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="ps-post">
                        <div class="ps-post__thumbnail"><img alt="" src="<?= CLIENT_ASSETS ?>images/blog/1.jpg" /></div>

                        <div class="ps-post__content"><a class="ps-post__title" href="blog-detail.html">An
                                Inside Look at the Breaking2 Kit</a>

                            <p class="ps-post__meta"><span>By:<a class="mr-5" href="blog.html">Alena
                                        Studio</a></span> -<span class="ml-5">Jun 10, 2017</span></p>

                            <p>Leverage agile frameworks to provide a robust synopsis for high level overviews.
                                Iterative approaches to corporate strategy foster collaborative thinking to
                                further&hellip;</p>
                            <a class="ps-morelink" href="blog-detail.html">Read more</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="ps-post">
                        <div class="ps-post__thumbnail"><img alt="" src="<?= CLIENT_ASSETS ?>images/blog/2.jpg" /></div>

                        <div class="ps-post__content"><a class="ps-post__title" href="blog-detail.html">Unpacking the Breaking2 Race Strategy</a>

                            <p class="ps-post__meta"><span>By:<a class="mr-5" href="blog.html">Alena
                                        Studio</a></span> -<span class="ml-5">Jun 10, 2017</span></p>

                            <p>Leverage agile frameworks to provide a robust synopsis for high level overviews.
                                Iterative approaches to corporate strategy foster collaborative thinking to
                                further&hellip;</p>
                            <a class="ps-morelink" href="blog-detail.html">Read more</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
                    <div class="ps-post">
                        <div class="ps-post__thumbnail"><img alt="" src="<?= CLIENT_ASSETS ?>images/blog/3.jpg" /></div>

                        <div class="ps-post__content"><a class="ps-post__title" href="blog-detail.html">Nike&rsquo;s Latest Football Cleat Breaks the Mold</a>

                            <p class="ps-post__meta"><span>By:<a class="mr-5" href="blog.html">Alena
                                        Studio</a></span> -<span class="ml-5">Jun 10, 2017</span></p>

                            <p>Leverage agile frameworks to provide a robust synopsis for high level overviews.
                                Iterative approaches to corporate strategy foster collaborative thinking to
                                further&hellip;</p>
                            <a class="ps-morelink" href="blog-detail.html">Read more</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>