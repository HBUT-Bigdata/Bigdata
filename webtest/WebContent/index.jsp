<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!DOCTYPE html>
<html>

	<head>
		<title>Home</title>
		<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery-1.11.0.min.js"></script>
		<!-- Custom Theme files -->
		<!--theme-style-->
		<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
		<!--//theme-style-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript">
			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		</script>
		<!--fonts-->
		
		<link href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
		<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
		<!--//fonts-->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event) {
					event.preventDefault();
					$('html,body').animate({
						scrollTop: $(this.hash).offset().top
					}, 1000);
				});
			});
		</script>
		<!-- start menu -->
		<script src="js/simpleCart.min.js">
		</script>
		<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="js/memenu.js"></script>
		<script>
			$(document).ready(function() {
				$(".memenu").memenu();
			});
		</script>
	</head>

	<body>
		<!--top-header-->
		 
		<div class="top-header">
			<div class="container">
				<div class="top-header-main">
					<div class="col-md-4 top-header-left">
						<div class="search-bar" style="float: left;">
							<input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="">
						</div>
						<div style="float: left; font-size: 20px; margin-left: -100px;margin-top: -35px;">
						<a href="person.jsp" class="templatemo-create-new">Person<i class="fa fa-arrow-circle-o-right"></i></a>
						</div>
						<div style="float:left;font-size: 20px; margin-left: -5px;margin-top: -35px;">
						<a href="register_choose.jsp" class="templatemo-create-new">Register<i class="fa fa-arrow-circle-o-right"></i></a>
						</div>
						<div style="float:left;font-size: 20px; margin-left: 100px;margin-top: -35px;">
						<a href="login.jsp" class="templatemo-create-new">LoginOut<i class="fa fa-arrow-circle-o-right"></i></a>
						</div>
						
					</div>
					<div class="col-md-4 top-header-middle">
						<a href="index.jsp"><img src="" alt="" /></a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<!--top-header-->
		<!--bottom-header-->
		<div class="header-bottom">
			<div class="container">
				<div class="top-nav">
					<ul class="memenu skyblue">
						<li class="active">
							<a href="index.jsp">主页</a>
						</li>
						<li class="grid">
							<a href="#">编程开发</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1 me-one">
										<h4>编程语言</h4>
										<ul>
											<li>
												<a href="products.jsp">Python</a>
											</li>
											<li>
												<a href="products.jsp">PHP</a>
											</li>
											<li>
												<a href="products.jsp">Java</a>
											</li>
											<li>
												<a href="products.jsp">C</a>
											</li>
											<li>
												<a href="products.jsp">C++</a>
											</li>
											<li>
												<a href="products.jsp">C#</a>
											</li>
											<li>
												<a href="products.jsp">Swift</a>
											</li>
											<li>
												<a href="products.jsp">Git</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>网络营销</h4>
										<ul>
											<li>
												<a href="products.jsp">新媒体营销</a>
											</li>
											<li>
												<a href="products.jsp">SEO</a>
											</li>
											<li>
												<a href="products.jsp">SEM</a>
											</li>
											<li>
												<a href="products.jsp">销售技巧</a>
											</li>
											<li>
												<a href="products.jsp">大客户关系</a>
											</li>
											<li>
												<a href="products.jsp">网店运营</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>办公软件</h4>
										<ul>
											<li>
												<a href="products.jsp">PPT</a>
											</li>
											<li>
												<a href="products.jsp">Excel</a>
											</li>
											<li>
												<a href="products.jsp">Word</a>
											</li>
											<li>
												<a href="products.jsp">Outlook</a>
											</li>
											<li>
												<a href="products.jsp">Keynote</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="grid">
							<a href="#">市场营销</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1 me-one">
										<h4>编程语言</h4>
										<ul>
											<li>
												<a href="products.jsp">Python</a>
											</li>
											<li>
												<a href="products.jsp">PHP</a>
											</li>
											<li>
												<a href="products.jsp">Java</a>
											</li>
											<li>
												<a href="products.jsp">C</a>
											</li>
											<li>
												<a href="products.jsp">C++</a>
											</li>
											<li>
												<a href="products.jsp">C#</a>
											</li>
											<li>
												<a href="products.jsp">Swift</a>
											</li>
											<li>
												<a href="products.jsp">Git</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>网络营销</h4>
										<ul>
											<li>
												<a href="products.jsp">新媒体营销</a>
											</li>
											<li>
												<a href="products.jsp">SEO</a>
											</li>
											<li>
												<a href="products.jsp">SEM</a>
											</li>
											<li>
												<a href="products.jsp">销售技巧</a>
											</li>
											<li>
												<a href="products.jsp">大客户关系</a>
											</li>
											<li>
												<a href="products.jsp">网店运营</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>办公软件</h4>
										<ul>
											<li>
												<a href="products.jsp">PPT</a>
											</li>
											<li>
												<a href="products.jsp">Excel</a>
											</li>
											<li>
												<a href="products.jsp">Word</a>
											</li>
											<li>
												<a href="products.jsp">Outlook</a>
											</li>
											<li>
												<a href="products.jsp">Keynote</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						<li class="grid">
							<a href="#">办公效率</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1 me-one">
										<h4>编程语言</h4>
										<ul>
											<li>
												<a href="products.jsp">Python</a>
											</li>
											<li>
												<a href="products.jsp">PHP</a>
											</li>
											<li>
												<a href="products.jsp">Java</a>
											</li>
											<li>
												<a href="products.jsp">C</a>
											</li>
											<li>
												<a href="products.jsp">C++</a>
											</li>
											<li>
												<a href="products.jsp">C#</a>
											</li>
											<li>
												<a href="products.jsp">Swift</a>
											</li>
											<li>
												<a href="products.jsp">Git</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>网络营销</h4>
										<ul>
											<li>
												<a href="products.jsp">新媒体营销</a>
											</li>
											<li>
												<a href="products.jsp">SEO</a>
											</li>
											<li>
												<a href="products.jsp">SEM</a>
											</li>
											<li>
												<a href="products.jsp">销售技巧</a>
											</li>
											<li>
												<a href="products.jsp">大客户关系</a>
											</li>
											<li>
												<a href="products.jsp">网店运营</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>办公软件</h4>
										<ul>
											<li>
												<a href="products.jsp">PPT</a>
											</li>
											<li>
												<a href="products.jsp">Excel</a>
											</li>
											<li>
												<a href="products.jsp">Word</a>
											</li>
											<li>
												<a href="products.jsp">Outlook</a>
											</li>
											<li>
												<a href="products.jsp">Keynote</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>
						</ul>
						</div>
				</div>
			</div>
			<!--bottom-header-->

			<!--banner-starts-->
			<div class="bnr" id="home">
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider4">
						<li>
							<div class="banner-1"></div>
						</li>
						<li>
							<div class="banner-2"></div>
						</li>
						<li>
							<div class="banner-3"></div>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<!--banner-ends-->
			<!--Slider-Starts-Here-->
			<script src="js/responsiveslides.min.js"></script>
			<script>
				// You can also use "$(window).load(function() {"
				$(function() {
					// Slideshow 4
					$("#slider4").responsiveSlides({
						auto: true,
						pager: true,
						nav: false,
						speed: 500,
						namespace: "callbacks",
						before: function() {
							$('.events').append("<li>before event fired.</li>");
						},
						after: function() {
							$('.events').append("<li>after event fired.</li>");
						}
					});

				});
			</script>
			<!--End-slider-script-->
			<!--start-banner-bottom-->

			<!--end-banner-bottom-->
			<!--start-shoes-->
			<div class="shoes">
				<div class="container"><h2>核心课程</h2>
					<div class="product-one">
						
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">
								<a href="SearchClass?num=1">
									<img src="images/pic-1.jpg" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>Swift</h4>

							</div>
						</div>
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">

								<a href="SearchClass?num=2">
									<img src="images/pic-2.png" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>Python</h4>

							</div>
						</div>
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">
								<a href="SearchClass?num=3">
									<img src="images/pic-3.png" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>Java</h4>
							</div>
						</div>
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">
								
								<a href="SearchClass?num=4">
									<img src="images/pic-4.jpg" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>SEO</h4>

							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<h2>特色课程</h2>
					<div class="product-one">
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">
								<a href="SearchClass?num=5">
									<img src="images/pic-5.png" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>PHP</h4>
							</div>
						</div>
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">
								<a href="SearchClass?num=6">
									<img src="images/pic-6.jpg" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>android</h4>
							</div>
						</div>
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">

								<a href="SearchClass?num=7">
									<img src="images/pic-7.jpg" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>Big data</h4>
							</div>
						</div>
						<div class="col-md-3 product-left">
							<div class="p-one simpleCart_shelfItem">

								<a href="SearchClass?num=8">
									<img src="images/pic-8.jpg" alt="" />
									<div class="mask">
										<span>点击进入</span>
									</div>
								</a>
								<h4>信息安全</h4>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!--end-shoes-->
			<!--start-abt-shoe-->
			
			<!--end-abt-shoe-->
			<!--start-footer-->
			<div class="footer">
				<div class="container">
					<div class="footer-top">
						<div class="col-md-3 footer-left">
							<h3>特色板块</h3>
							<ul>
								<li>
									<a href="#">微专业</a>
								</li>
								<li>
									<a href="#">题库</a>
								</li>
								<li>
									<a href="#">笔记</a>
								</li>
								<li>
									<a href="#">系列课程</a>
								</li>
								<li>
									<a href="#">进度管理与学习监督</a>
								</li>
								<li>
									<a href="#">问答</a>
								</li>
							</ul>
						</div>
						<div class="col-md-3 footer-left">
							<h3>帮助中心</h3>
							<ul>
								<li>
									<a href="#">随到随学课程</a>
								</li>
								<li>
									<a href="#">定时开课课程</a>
								</li>
								<li>
									<a href="#">iPhone购买问题指南</a>
								</li>
								<li>
									<a href="#">微专业</a>
								</li>
								
							</ul>
						</div>
						<div class="col-md-3 footer-left">
							<h3>常见问题</h3>
							<ul>
								<li>
									<a href="#">我怎样注册登录云课堂？</a>
								</li>
								<li>
									<a href="#">为什么用电脑访问时视频无法播放？</a>
								</li>
								<li>
									<a href="#">我可以在云课堂中开设自己的课程吗？</a>
								</li>
							</ul>
						</div>
						<div class="col-md-3 footer-left">
							<h3>联系我们</h3>
							<ul>
								<li>
									<a href="#">电子邮箱:123456789@qq.com</a>
								</li>
								<li>
									<a href="#">联系电话:010-12345678</a>
								</li>
								
							</ul>
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
			<!--end-footer-->
			<!--end-footer-text-->
			<div class="footer-text">

				<script type="text/javascript">
					$(document).ready(function() {
						/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/

						$().UItoTop({
							easingType: 'easeOutQuart'
						});

					});
				</script>
				<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
			</div>
			<!--end-footer-text-->
	</body>

</html>