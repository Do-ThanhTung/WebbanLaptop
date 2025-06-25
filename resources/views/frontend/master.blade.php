<!DOCTYPE html>
<html>
<head>
	<base href="{{ asset('layout/frontend') }}/"
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title> LapTop Shop - @yield('title')</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/home.css">
	<link rel="stylesheet" href="css/custom.css">
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<script type="text/javascript">
		$(function() {
			var pull        = $('#pull');
			menu        = $('nav ul');
			menuHeight  = menu.height();

			$(pull).on('click', function(e) {
				e.preventDefault();
				menu.slideToggle();
			});
		});

		$(window).resize(function(){
			var w = $(window).width();
			if(w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	</script>
        <style>
           .logout-btn {
                position: absolute;
                right: 107px;
                top: 15px;
                font-size: 17px;
                color: aliceblue;
            }
            .logout-btn  a{
                font-size: 17px;
                color: aliceblue;
                text-decoration: none;
            }
            .contact-icon {
                font-size: 31px;
                position: fixed;
                right: 51px;
                bottom: 88px;
                padding: 9px;
                background: #ffc107;
                border-radius: 50%;
                color: #fff;
                cursor: pointer;
            }
            .contact {
                width: 260px;
                position: fixed;
                right: 52px;
                bottom: 140px;
                padding: 9px;
                background: #fff;
                border-radius: 7px;
                cursor: pointer;
                border: 1.5px solid #ffc107 !important;
                box-sizing: border-box !important;
                box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.15) !important;
                border-radius: 7px !important;
            }
            .contact-title {
                font-size: 17px;
				margin-top: 7px;
            }
            .contact label {
                margin: 0;
            }
            .contact input {
				border: none;
                width: 100%;
                border: 1px solid #d8d8d8;
                border-radius: 3px ;
                padding: 3px;
                margin-bottom: 4px;
            }
            .contact input:focus {
                border: 1px solid #ffc107 ;
				outline: #ffc107;
            }
            .submit-contact-btn {
                padding: 4px 17px;
                border: none;
                border-radius: 5px;
                background: #ffc107;
                color: #fff;
                cursor: pos;
                cursor: pointer;
                margin-top: 6px;
                float: right;
            }
			.close-btn {
				position: absolute;
				right: 9px;
				top: 6px;
				font-size: 21px;
				color: #ffc107;
			}
            .hidden {
                display: none;
            }
			a:hover{
				text-decoration: none !important;
			}
			.subnav li {
                color: black;
                padding: 10px;
                font-size: 17px;
        	}

			.user {
				position: relative;
				padding: 0 20px;
			}
			.icon {
				font-size: 35px;
				padding: 27px;
				color: white;
				cursor: pointer;
                margin-left: 7px;
			}
			.subnav li:hover {
				background-color: rgba(184, 166, 146, 0.2);
			}
            .subnav a {
                color: #ff7b07;
            }

			.user:hover .subnav {
				display: block;
			}

			.user .subnav {
				display: none;
				top: 81px;
				position: absolute;
				list-style-type: none;
				background-color: white;
				box-shadow: 0 0 5px #333;
				border-radius: 3px;
				width: 175px;
				z-index: 1;
			}

			#logo img {
                width: 212px;
        	}

			input {
                padding: 10px;
                border: none;
                cursor: pointer;
                border-radius: 3px;
			}

			.input {
				width: 550px;
				margin-top: 34px;
			}

			.submit {
				background-color: #fff;
			}
            .login-btn {
                position: absolute;
                top: 35px;
                right: 182px;
                color: #fff;
                font-size: 17px;
                height: fit-content;
                padding: 6px 4px;
                border-radius: 5px;
            }
            .register-btn {
                position: absolute;
                top: 35px;
                right: 108px;
                color: #fff;
                font-size: 17px;
                height: fit-content;
                padding: 6px 10px;
                border-radius: 5px;
            }
            .login-btn:hover {
                color: #fff;
                opacity: 0.8;
            }
            .register-btn:hover {
                color: #fff;
                opacity: 0.8;
            }
            .container {
                max-width: 1200px !important;
            }
            .product-item {
                max-width: 223px;
            }
            #header, #footer-t {
                background: linear-gradient(-180deg,#f53d2d,#f63) !important;
            }
            .menu-head {
                background: linear-gradient(-180deg,#f53d2d,#f63) !important;
                color: #fff;
            }
            .menu-item:hover {
                background: #f63;
            }
            .menu-item a:hover {
                color: #fff;
            }
            .product-item img {
                width: 175px !important;
                height: 170px !important;
            }
			/* Làm nổi bật và hiệu ứng phóng to động cho danh mục sản phẩm, không bị nghiêng */
           #menu .menu-item a {
                font-weight: 600;
                color: #333;
                transition: transform 0.25s cubic-bezier(0.22, 1, 0.36, 1), background 0.2s, color 0.2s;
                display: block;
                padding: 10px 16px;
                border-radius: 2px;
            }
            #menu .menu-item a:hover {
                background: #ff6a00;
                color: #fff;
                transform: scale(1.12); /* Không còn rotate */
                box-shadow: 0 4px 16px rgba(255,106,0,0.13);
            }
            #menu .menu-item.menu-head {
                font-size: 17px;
                font-weight: bold;
                color: #fff;
                background: linear-gradient(90deg, #ff6a00 0%, #ff914d 100%);
                border-radius: 2px 2px 0 0;
                padding: 10px 16px;
                text-align: center;
                letter-spacing: 0.5px;
                line-height: 1.2;
                white-space: nowrap;
            }
        </style>
</head>
<body>
    @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif
	<!-- header -->
	<header id="header">
		<div class="container">
			<div style="flex-wrap: unset !important;" class="row">
				<div id="logo" class="col-md-3 col-sm-12 col-xs-12">
					<a style="text-decoration: none;" href="{{ asset('/') }}">
					    <img style="width: 80px !important; margin-top: 10px;" src="img/home/logo-lap.png" alt="">
					</a>
				</div>

				<div>
					<form action="{{asset('/search/')}}" method="get" autocomplete="off" style="position:relative;">
    <input class="input" id="search-input" type="text" name="result" placeholder="Nhập tên sản phẩm ..." required value="{{ (request()->is('/') ? '' : (request('result') ?? '')) }}">
    <input class="submit" type="submit" name="submit" value="Tìm Kiếm">
    <div id="suggestions-box" style="display:none;position:absolute;top:40px;left:0;width:100%;z-index:1000;"></div>
</form>
<script>
$(document).ready(function() {
    var $input = $('#search-input');
    var $box = $('#suggestions-box');
    $input.on('input', function() {
        var q = $(this).val();
        if (q.length < 1) {
            $box.hide();
            return;
        }
        $.get('/api/suggestions?q=' + encodeURIComponent(q), function(data) {
            var html = '';
            if ((data.products && data.products.length > 0) || (data.categories && data.categories.length > 0)) {
                html += '<div class="suggestion-list">';
                if (data.products && data.products.length > 0) {
                    html += '<div style="font-weight:bold;padding-bottom:4px;">Sản phẩm</div>';
                    data.products.forEach(function(item) {
                        html += '<div class="suggestion-item" style="padding:5px 0;cursor:pointer;">' + item + '</div>';
                    });
                }
                if (data.categories && data.categories.length > 0) {
                    html += '<div style="font-weight:bold;padding:8px 0 4px 0;">Danh mục</div>';
                    data.categories.forEach(function(item) {
                        html += '<div class="suggestion-item suggestion-category" style="padding:5px 0;cursor:pointer;color:#ffd700;">' + item + '</div>';
                    });
                }
                html += '</div>';
                $box.html(html).show();
            } else {
                $box.hide();
            }
        });
    });
    $box.on('click', '.suggestion-item', function() {
        $input.val($(this).text());
        $box.hide();
    });
    $(document).on('click', function(e) {
        if (!$(e.target).closest('#search-input, #suggestions-box').length) {
            $box.hide();
        }
    });
});
</script>

				</div>

				<div class="cart icon">
					<a style="color:white;margin-left:10px" class="display" href="{{ asset('cart/show') }}">
						<i class="fa fa-shopping-cart" aria-hidden="true"></i>
					</a>
					<a style="font-size: 18px; color:white" href="{{ asset('cart/show') }}">{{ Cart::count() }}</a>
        		</div>

				<div @if(Auth::check()) class="user icon">
					<i class="fa fa-user-circle-o" aria-hidden="true"></i>
					<ul class="subnav">
                        <li><a style="color: #f53d2d;" href="{{ asset('change-password') }}">Đổi mật khẩu</a></li>
                        <li><a style="color: #f53d2d;" href="{{ asset('list-order') }}">Đơn hàng của tôi</a></li>
                        <li><a style="color: #f53d2d;" href="{{ asset('logout') }}">Đăng xuất</a></li>
					</ul>
                    @endif
        		</div>
			</div>
            @if(!Auth::check())
             <a href="{{ asset('/login') }}" class="login-btn">Đăng nhập |</a>
             <a href="{{ asset('/register') }}" class="register-btn">Đăng ký</a>
            @endif
		</div>
	</header><!-- /header -->
	<!-- endheader -->

	<!-- main -->
	<section id="body">
		<div class="container">
			<div class="row">
				<div id="sidebar" class="col-md-3">
					<nav id="menu">
						<ul style="margin-bottom: 0px;">
							<li class="menu-item menu-head">Danh mục sản phẩm</li>
							@foreach($categories as $category)
							<li class="menu-item"><a style="text-decoration: none;" href="{{ asset('/category/' . $category->cate_id) }}">{{ $category->cate_name }}</a></li>
							@endforeach
						</ul>
						<!-- <a href="#" id="pull">Danh mục</a> -->
					</nav>

					<div id="banner-l" class="text-center">
						<div class="banner-l-item">
							<a href="{{ asset('/') }}"><img src="img/home/banner-1.jpg" alt="" class="img-thumbnail"></a>
						</div>
						<div class="banner-l-item">
							<a href="{{ asset('/') }}"><img src="img/home/banner-2.jpg" alt="" class="img-thumbnail"></a>
						</div>
                        <div class="banner-l-item">
							<a href="{{ asset('/') }}"><img src="img/home/banner-4.jpg" alt="" class="img-thumbnail"></a>
						</div>
                        <div class="banner-l-item">
							<a href="{{ asset('/') }}"><img src="img/home/banner-5.jpg" alt="" class="img-thumbnail"></a>
						</div>
					</div>
				</div>
				<div id="main" class="col-md-9">
					<!-- main -->
					<!-- phan slide la cac hieu ung chuyen dong su dung jquey -->
					<div id="slider">
						<div id="demo" class="carousel slide" data-ride="carousel" data-interval="3000">

							<!-- Indicators -->
							<ul class="carousel-indicators">
								<li data-target="#demo" data-slide-to="0" class="active"></li>
								<li data-target="#demo" data-slide-to="1"></li>
								<li data-target="#demo" data-slide-to="2"></li>
							</ul>

							<!-- The slideshow -->
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img style="border-radius: 5px;" width="900px" height="400px" src="img/home/slide-1.jpg" alt="Banner" >
								</div>
								<div class="carousel-item">
									<img style="border-radius: 5px;" width="900px" height="400px" src="img/home/slide-2.jpg" alt="Banner">
								</div>
								<div class="carousel-item">
									<img style="border-radius: 5px;" width="900px" height="400px" src="img/home/slide-3.jpg" alt="Banner" >
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="carousel-control-prev" href="#demo" data-slide="prev">
								<span class="carousel-control-prev-icon"></span>
							</a>
							<a class="carousel-control-next" href="#demo" data-slide="next">
								<span class="carousel-control-next-icon"></span>
							</a>
						</div>
					</div>

                    @yield('main')

                    </div>
                </div>
            </div>

        </div>
    </section>
        <!-- endmain -->

        <!-- footer -->
        <footer id="footer">
            <div id="footer-t">
                <div class="container">
                    <div class="row">
                        <div id="logo" class="col-md-3 col-sm-12 col-xs-12">
							<a style="text-decoration: none;" href="{{ asset('/') }}">
                                <img style="width: 100px !important;" src="img/home/logo-lap.png" alt="">
                            </a>
                        </div>
                        <div id="about" class="col-md-3 col-sm-12 col-xs-12">
                            <h3>About us</h3>
                            <p class="text-justify"> LapTop Shop thành lập năm 2025. Chúng tôi là cửa hàng bán laptop uy tín, chất lượng hàng đầu Việt Nam cũng như trên toàn thế giới.</p>
                        </div>
                        <div id="hotline" class="col-md-3 col-sm-12 col-xs-12">
                            <h3>Hotline</h3>
                            <p>Phone1: (+84) 333.103.601</p>
                            <p>Phone2: (+84) 559.557.513</p>
                            <p>Email: Shiva422120@gmail.com</p>
                        </div>
                        <div id="contact" class="col-md-3 col-sm-12 col-xs-12">
                            <h3>Contact Us</h3>
                            <p>Address : 1 Phố Nguyễn Trác, Quận Hà Đông, TP.Hà Nội</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- endfooter -->

    </body>
    </html>
