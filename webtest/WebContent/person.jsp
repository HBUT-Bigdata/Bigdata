<%@page import="java.nio.channels.SeekableByteChannel"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Products</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery-1.11.0.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Free Style Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='http://fonts.useso.com/css?family=Alegreya+Sans+SC:100,300,400,500,700,800,900,100italic,300italic,400italic,500italic,700italic,800italic,900italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
					jQuery(document).ready(function($) {
						$(".scroll").click(function(event){		
							event.preventDefault();
							$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
						});
					});
				</script>	
<!-- start menu -->
<script src="js/simpleCart.min.js"> </script>
<link href="css/memenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/memenu.js"></script>
<script>$(document).ready(function(){$(".memenu").memenu();});</script>				
</head>
<body> 
	
	<div class="top-header">
			<div class="container">
				<div class="top-header-main">
					<div class="col-md-4 top-header-left">
						<div class="search-bar" style="float: left;">
							<input type="text" value="Search" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Search';}">
							<input type="submit" value="">
						</div>
						<div style="float: left;margin-left: -300px;margin-top: -35px;">
							<input type="button" 
							value="个人中心"    width: 32px;height: 34px;/>
						</div>
					</div>
					<div class="col-md-4 top-header-middle">
						<a href="index.html"><img src="" alt="" /></a>
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
							<a href="index.html">主页</a>
						</li>
						<li class="grid">
							<a href="#">编程开发</a>
							<div class="mepanel">
								<div class="row">
									<div class="col1 me-one">
										<h4>编程语言</h4>
										<ul>
											<li>
												<a href="products.html">Python</a>
											</li>
											<li>
												<a href="products.html">PHP</a>
											</li>
											<li>
												<a href="products.html">Java</a>
											</li>
											<li>
												<a href="products.html">C</a>
											</li>
											<li>
												<a href="products.html">C++</a>
											</li>
											<li>
												<a href="products.html">C#</a>
											</li>
											<li>
												<a href="products.html">Swift</a>
											</li>
											<li>
												<a href="products.html">Git</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>网络营销</h4>
										<ul>
											<li>
												<a href="products.html">新媒体营销</a>
											</li>
											<li>
												<a href="products.html">SEO</a>
											</li>
											<li>
												<a href="products.html">SEM</a>
											</li>
											<li>
												<a href="products.html">销售技巧</a>
											</li>
											<li>
												<a href="products.html">大客户关系</a>
											</li>
											<li>
												<a href="products.html">网店运营</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>办公软件</h4>
										<ul>
											<li>
												<a href="products.html">PPT</a>
											</li>
											<li>
												<a href="products.html">Excel</a>
											</li>
											<li>
												<a href="products.html">Word</a>
											</li>
											<li>
												<a href="products.html">Outlook</a>
											</li>
											<li>
												<a href="products.html">Keynote</a>
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
												<a href="products.html">Python</a>
											</li>
											<li>
												<a href="products.html">PHP</a>
											</li>
											<li>
												<a href="products.html">Java</a>
											</li>
											<li>
												<a href="products.html">C</a>
											</li>
											<li>
												<a href="products.html">C++</a>
											</li>
											<li>
												<a href="products.html">C#</a>
											</li>
											<li>
												<a href="products.html">Swift</a>
											</li>
											<li>
												<a href="products.html">Git</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>网络营销</h4>
										<ul>
											<li>
												<a href="products.html">新媒体营销</a>
											</li>
											<li>
												<a href="products.html">SEO</a>
											</li>
											<li>
												<a href="products.html">SEM</a>
											</li>
											<li>
												<a href="products.html">销售技巧</a>
											</li>
											<li>
												<a href="products.html">大客户关系</a>
											</li>
											<li>
												<a href="products.html">网店运营</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>办公软件</h4>
										<ul>
											<li>
												<a href="products.html">PPT</a>
											</li>
											<li>
												<a href="products.html">Excel</a>
											</li>
											<li>
												<a href="products.html">Word</a>
											</li>
											<li>
												<a href="products.html">Outlook</a>
											</li>
											<li>
												<a href="products.html">Keynote</a>
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
												<a href="products.html">Python</a>
											</li>
											<li>
												<a href="products.html">PHP</a>
											</li>
											<li>
												<a href="products.html">Java</a>
											</li>
											<li>
												<a href="products.html">C</a>
											</li>
											<li>
												<a href="products.html">C++</a>
											</li>
											<li>
												<a href="products.html">C#</a>
											</li>
											<li>
												<a href="products.html">Swift</a>
											</li>
											<li>
												<a href="products.html">Git</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>网络营销</h4>
										<ul>
											<li>
												<a href="products.html">新媒体营销</a>
											</li>
											<li>
												<a href="products.html">SEO</a>
											</li>
											<li>
												<a href="products.html">SEM</a>
											</li>
											<li>
												<a href="products.html">销售技巧</a>
											</li>
											<li>
												<a href="products.html">大客户关系</a>
											</li>
											<li>
												<a href="products.html">网店运营</a>
											</li>
										</ul>
									</div>
									<div class="col1 me-one">
										<h4>办公软件</h4>
										<ul>
											<li>
												<a href="products.html">PPT</a>
											</li>
											<li>
												<a href="products.html">Excel</a>
											</li>
											<li>
												<a href="products.html">Word</a>
											</li>
											<li>
												<a href="products.html">Outlook</a>
											</li>
											<li>
												<a href="products.html">Keynote</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</li>

				</div>
			</div>
	<!--bottom-header-->
	<!--start-breadcrumbs-->
	
	<!--end-breadcrumbs-->
	<!--start-product--> 
	<div class="product">
		<div class="container">
			<div class="product-main">
				<div class="col-md-9 p-left">
				<div class="product-one">
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-1.jpg" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>从0开始进阶数据分析大师</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-2.jpg" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>IT入门精选</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-3.jpg" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>计算机入门课程</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="product-one">
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-4.png" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>从0进阶互联网数据分析师</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-5.jpg" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>Python Web开发</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-6.jpg" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>fabric实战</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
					</div>
				</div>
			<div class="clearfix"> </div>
			</div>
			<div class="product-one">
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-7.png" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>Python Django</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
						
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-8.jpg" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>Python数据分析机器学习</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
						
					</div>
				</div>
				<div class="col-md-4 product-left single-left"> 
					<div class="p-one simpleCart_shelfItem">
						<a href="player.html">
								<img src="images/course-9.png" alt="" />
								<div class="mask mask1">
									<span>点击进入</span>
								</div>
							</a>
						<h4>Python机器学习实战</h4>
						<p><a class="item_add" href="#"><i></i> <span class=" item_price">主讲人:老王</span></a></p>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			</div>
			<div class="col-md-3 p-right single-right">
				<h3>热门课程</h3>
					<ul class="product-categories">
						<li><a href="#">C++大系：C++内存管理机制</a> <span class="count"></span></li>
						<li><a href="#">用python做那些事</a> <span class="count"></span></li>
						<li><a href="#">python数据分析与机器学习实战</a> <span class="count"></span></li>
						<li><a href="#">C/C++黑客编程实战</a> <span class="count"></span></li>
						<li><a href="#">0基础入门学习python</a> <span class="count"></span></li>
						<li><a href="#">汇编语言从0开始</a> <span class="count"></span></li>
					</ul>
					<h3>精选好课</h3>
					<ul class="product-categories">
						<li><a href="#">从0开始学HTML</a> <span class="count"></span></li>
						<li><a href="#">十天学会PHP</a> <span class="count"></span></li>
						<li><a href="#">网页制作前端及PHP网站搭建</a> <span class="count"></span></li>
						<li><a href="#">JavaScript深入浅出</a> <span class="count"></span></li>
						<li><a href="#">ARM Linux驱动大全</a> <span class="count"></span></li>
						<li><a href="#">用java学编程</a> <span class="count"></span></li>
					</ul>
					<h3>即将开设</h3>
					<ul class="product-categories">
						<li><a href="#">Java应用基础:项目实战篇</a> <span class="count"></span></li>
						<li><a href="#">C++综合考核</a> <span class="count"></span></li>
						<li><a href="#">C++实践考核项目</a> <span class="count"></span></li>
						<li><a href="#">学会开发灵活的网页</a> <span class="count"></span></li>
						<li><a href="#">Java应用基础:设计篇</a> <span class="count"></span></li>
					</ul>
					
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	</div>
	<!--end-product-->
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
									<a href="contact.html">题库</a>
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
									<a href="account.html">随到随学课程</a>
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
									<a href="account.html">电子邮箱:123456789@qq.com</a>
								</li>
								<li>
									<a href="#">联系电话:010-12345678</a>
								</li>
								
							</ul>
						</div>
						
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
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-text-->	
</body>
</html>    