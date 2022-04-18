<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from nouthemes.net/html/trueshoes/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Nov 2021 02:08:10 GMT -->

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="format-detection" content="telephone=no">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="apple-touch-icon.png" rel="apple-touch-icon" />
	<link href="favicon.png" rel="icon" />
	<meta name="author" content="Nghia Minh Luong">
	<meta name="keywords" content="Default Description">
	<meta name="description" content="Default keyword">
	<title>Shoes store</title>
	<!-- Fonts-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
	<link href="https://fonts.googleapis.com/css?family=Archivo+Narrow:300,400,700%7CMontserrat:300,400,500,600,700,800,900" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link href="<?= CLIENT_ASSETS ?>plugins/ps-icon/style.css" rel="stylesheet" /><!-- CSS Library-->
	<link href="<?= CLIENT_ASSETS ?>plugins/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/owl-carousel/assets/owl.carousel.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/slick/slick/slick.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/bootstrap-select/dist/css/bootstrap-select.min.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/Magnific-Popup/dist/magnific-popup.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/revolution/css/settings.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/revolution/css/layers.css" rel="stylesheet" />
	<link href="<?= CLIENT_ASSETS ?>plugins/revolution/css/navigation.css" rel="stylesheet" /><!-- Custom-->
	<link href="<?= CLIENT_ASSETS ?>css/style.css" rel="stylesheet" />
</head>
<body class="ps-loading">
	<main class="ps-main">
		<div class="header--sidebar"></div>
		<header class="header">
			<div class="header__top">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6 col-md-8 col-sm-6 col-xs-12 ">
							<p>123 Trịnh Văn Bô, Quận Nam Từ Liêm, Hà Nội - Hotline: 0376701485</p>
						</div>

						<div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ">
							<?php if (isset($_SESSION['khach_hang'])) { ?>
								<?php if ($_SESSION['khach_hang']['role'] == 1) : ?>
									<div class="header__actions"><a href="<?= ADMIN_URL . 'tai-khoan' ?>">Trang quản trị</a></div>
									<div class="header__actions"><a href="<?= CLIENT_URL . 'profile' ?>"><?= $_SESSION['khach_hang']['full_name'] ?></a>
									<?php else : ?>
										<div class="header__actions"><a href="<?= CLIENT_URL . 'profile' ?>"><?= $_SESSION['khach_hang']['full_name'] ?></a>
										<?php endif ?>

									<?php } else { ?>
										<div class="header__actions"><a href="<?= CLIENT_URL . 'dang-nhap' ?>">Đăng nhập &amp; Đăng ký</a>
										<?php } ?>
										</div>
										</div>
									</div>
						</div>
					</div>

					<nav class="navigation">
						<div class="container-fluid">
							<div class="navigation__column left">
								<div class="header__logo"><a class="ps-logo" href="<?= BASE_URL ?>"><img alt="" src="<?= CLIENT_ASSETS ?>images/logo.png" /></a></div>
							</div>

							<div class="navigation__column center">
								<ul class="main-menu menu">
									<li class="menu-item menu-item-has-children dropdown"><a href="<?= BASE_URL ?>">TRANG CHỦ</a>
									</li>
									<li class="menu-item menu-item-has-children dropdown"><a href="javascript: void(0)">Thương Hiệu</a>
										<ul class="sub-menu">
											<?php if (category()) : ?>
												<?php foreach (category() as $ds) : ?>
													<li class="menu-item">
														<a href="<?= CLIENT_URL ?>product-category?id_brand=<?= $ds['id_brand'] ?>"><?= $ds['brand_name'] ?></a>
													</li>
												<?php endforeach ?>
											<?php endif ?>
										</ul>
									</li>
									<li class="menu-item"><a href="<?= CLIENT_URL . 'shoes' ?>">GIÀY</a></li>
									<li class="menu-item menu-item-has-children dropdown"><a href="<?= CLIENT_URL . 'news' ?>">TIN TỨC</a>

									</li>
									<li class="menu-item menu-item-has-children dropdown"><a href="<?= CLIENT_URL . 'lien-he' ?>">LIÊN HỆ</a>

									</li>
								</ul>
							</div>

							<div class="navigation__column right">
								<form action="<?= CLIENT_URL ?>search" class="ps-search--header" method="get">
									<input class="form-control" placeholder="Tìm kiếm sản phẩm..." type="text" name="query" />
									<button type="submit"><i class="fas fa-search"></i></button>
								</form>
								<?php if (isset($_SESSION['cart'])) : ?>
									<?php if (!empty($_SESSION['cart'])) : ?>
										<div class="ps-cart"><a class="ps-cart__toggle" href="<?= CLIENT_URL . 'gio-hang' ?>"><i class="fas fa-cart-plus"></i></i></a>

											<div class="ps-cart__listing">
												<div class="ps-cart__content">

													<?php
													$totalPrice = 0;
													$count = 0;
													?>
													<?php foreach ($_SESSION['cart'] as $cart) : ?>
														<div class="ps-cart-item">
															<div class="ps-cart-item__thumbnail"><img alt="" src="<?= PUBLIC_ASSETS  . $cart['product_image'] ?>" />
															</div>

															<div class="ps-cart-item__content"><a class="ps-cart-item__title"><?= $cart['product_name'] ?></a>

																<p><span>Quantity:<i><?= $cart['quantity'] ?></i></span><span>Total:<i><?= number_format($cart['price'] * $cart['quantity']) ?></i></span></p>
															</div>
														</div>
														<?php $totalPrice += $cart['price'] * $cart['quantity'];
														$count++; ?>

													<?php endforeach ?>
													<div class="ps-cart__total">
														<p>Number of items:<span><?= $count ?></span></p>

														<p>Total money:<span><?= number_format($totalPrice) ?></span></p>
														<div class="ps-cart__footer"><a class="ps-btn" href="<?= CLIENT_URL . 'gio-hang/checkout' ?>">Check out</a></div>
													</div>
												</div>
											</div>
										</div>
									<?php else : ?>
										<div class="ps-cart"><a class="ps-cart__toggle"><i class="fas fa-cart-plus"></i></i></a>

											<div class="ps-cart__listing">
												<div class="ps-cart__content">
													<div class="ps-cart-item__content"><a class="ps-cart-item__title">Bạn chưa có sản phẩm nào trong giỏ hàng</a></div>

												</div>

												<div class="menu-toggle"></div>
											</div>
										</div>
									<?php endif ?>
								<?php else : ?>
									<div class="ps-cart"><a class="ps-cart__toggle"><i class="fas fa-cart-plus"></i></i></a>

										<div class="ps-cart__listing">
											<div class="ps-cart__content">
												<div class="ps-cart-item__content"><a class="ps-cart-item__title">Bạn chưa có sản phẩm nào trong giỏ hàng</a></div>

											</div>

											<div class="menu-toggle"></div>
										</div>
									</div>
								<?php endif ?>
					</nav>
		</header>

		<div class="header-services">
			<div class="ps-services owl-slider" data-owl-auto="true" data-owl-dots="false" data-owl-duration="1000" data-owl-gap="0" data-owl-item="1" data-owl-item-lg="1" data-owl-item-md="1" data-owl-item-sm="1" data-owl-item-xs="1" data-owl-loop="true" data-owl-mousedrag="on" data-owl-nav="true" data-owl-speed="7000">
				<p class="ps-service"><strong>Giao hàng miễn phí </strong>:  : Nhận giao hàng tiêu chuẩn miễn phí cho mọi đơn hàng với Shoe Store</p>

				<p class="ps-service"><strong> Bảo Hành</strong>: 1 đổi 1 Trong vòng 3 ngày sau khi nhận hàng</p>

				<p class="ps-service"><strong>Chất Lượng</strong>: đảm bảo chất lượng cho tất cả sản phẩm bán tại Shoes store </p>
			</div>
		</div>
		<!-- end-header -->
		<?php include_once $businessClientView; ?>
		

		<div class="ps-footer bg--cover" data-background="images/background/parallax.jpg">
			<div class="ps-footer__content">
			    <a class="ps-logo d-flex justify-content-center" href="index.html"><img alt="" src="<?= CLIENT_ASSETS ?>images/logo-white.png" /></a>
				<div class="container">
					<div class="d-flex justify-content-around">
						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
							<aside class="ps-widget--footer ps-widget--info">
								<header>
									<h3 class="ps-widget__title">Chi Nhánh Miền Bắc</h3>
								</header>

								<footer>
									<p><strong>123 Trịnh Văn Bô, Quận Nam Từ Liêm, Hà Nội</strong></p>
									<p>Email: manpvph13976@fpt.edu.vn</span></a>
									</p>
									<p>Phone: 0376701485</p>
								</footer>
							</aside>
						</div>

						<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 ">
							<aside class="ps-widget--footer ps-widget--info second">
								<header>
									<h3 class="ps-widget__title">Chi Nhánh Miền Nam</h3>
								</header>

								<footer>
									<p><strong>Q.Bình Tân: 338 Nguyễn Thị Tú, Bình Hưng Hòa B</strong></p>

									<p>Email: hungttph13998@fpt.edu.vn
									</p>

									<p>Phone: 0345968851</p>
								</footer>
							</aside>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 ">
							<aside class="ps-widget--footer ps-widget--link">
								<header>
									<h3 class="ps-widget__title">Hỗ Trợ</h3>
								</header>

								<footer>
									<ul class="ps-list--line">
										<li><a href="#">Tình trạng đặt hàng</a></li>
										<li><a href="#">Vận chuyển và Giao hàng</a></li>
										<li><a href="#">Lợi nhuận</a></li>
										<li><a href="#">Các lựa chọn thanh toán</a></li>
										<li><a href="<?= CLIENT_URL . 'lien-he' ?>">Liên hệ chúng tôi</a></li>
									</ul>
								</footer>
							</aside>
						</div>
					</div>
				</div>
			</div>

			
	</main>
	<!-- JS Library-->

	<script data-cfasync="false" src="..flo/../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/gmap3.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/imagesloaded.pkgd.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/isotope.pkgd.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/jquery.matchHeight-min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/slick/slick/slick.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/elevatezoom/jquery.elevatezoom.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/Magnific-Popup/dist/jquery.magnific-popup.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/jquery-ui/jquery-ui.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA-XBs8xkUbYA0ykeWNnxWRP8SMOSQHFW8&amp;region=GB"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
	<!-- Custom scripts-->
	<script type="text/javascript" src="<?= CLIENT_ASSETS ?>js/main.js"></script>
	<?php if (count($jsFiles) > 0) : ?>
		<?php foreach ($jsFiles as $jsFile) : ?>
			<script src="<?= PUBLIC_ASSETS . $jsFile ?>" type="text/javascript"></script>
		<?php endforeach ?>
	<?php endif ?>
</body>

<!-- Mirrored from nouthemes.net/html/trueshoes/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 13 Nov 2021 02:11:18 GMT -->

</html>