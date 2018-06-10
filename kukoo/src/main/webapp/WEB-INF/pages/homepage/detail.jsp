<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<html>
<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<title>布谷移民——项目列表</title>
</head>
<script type="text/javascript">
	$("document").ready(function() {
		/* 判断session用户是否登录 start*/
		if ("${userId}" !== "") {
			$('#userCenter', parent.document).removeClass("hidden");
			$("#signUp", parent.document).addClass("hidden");
			$("#signIn", parent.document).addClass("hidden");
		}
		/* 判断session用户是否登录 end*/
	});
	function mainQuery() {
		var country = $("#country").val().trim();
		var project = $("#project").val().trim();
		//alert("submit"+country+"---"+project);
		window.parent.setiframeSrc(country, project);
	}
</script>
<body>

	<!-- LOADER -->
	<div id="loader-overflow">
		<div id="loader3" class="loader-cont">Please enable JS</div>
	</div>

	<div id="wrap" class="boxed ">
		<div class="grey-bg">
			<!-- Grey BG  -->

			<!--[if lte IE 8]>
				<div id="ie-container">
					<div id="ie-cont-close">
						<a href="#" onclick="javascript&#058;this.parentNode.parentNode.style.display="none"; return false;"><img src="images/ie-warn/ie-warning-close.jpg" style="border: none;" alt="Close"></a>
					</div>
					<div id="ie-cont-content" >
						<div id="ie-cont-warning">
							<img src="images/ie-warn/ie-warning.jpg" alt="Warning!">
						</div>
						<div id="ie-cont-text" >
							<div id="ie-text-bold">
								You are using an outdated browser
							</div>
							<div id="ie-text">
								For a better experience using this site, please upgrade to a modern web browser.
							</div>
						</div>
						<div id="ie-cont-brows" >
							<a href="http://www.firefox.com" target="_blank"><img src="images/ie-warn/ie-warning-firefox.jpg" alt="Download Firefox"></a>
							<a href="http://www.opera.com/download/" target="_blank"><img src="images/ie-warn/ie-warning-opera.jpg" alt="Download Opera"></a>
							<a href="http://www.apple.com/safari/download/" target="_blank"><img src="images/ie-warn/ie-warning-safari.jpg" alt="Download Safari"></a>
							<a href="http://www.google.com/chrome" target="_blank"><img src="images/ie-warn/ie-warning-chrome.jpg" alt="Download Google Chrome"></a>
						</div>
					</div>
				</div>
				<![endif]-->

			<!-- HEADER 1 FONT BLACK TRANSPARENT -->
			<header id="nav" class="header header-1 bg-gray">
				<div class="header-wrapper">
					<div class="container-m-30 clearfix">
						<div class="logo-row">

							<!-- LOGO -->
							<div class="logo-container-2">
								<div class="logo-2">
									<a href="<%=basePath %>homePage" class="clearfix"> <img
										src="<%=basePath%>elementy/images/logo.png" class="logo-img"
										alt="Logo">
									</a>
								</div>
							</div>
							<!-- BUTTON -->
							<div class="menu-btn-respons-container">
								<button id="menu-btn" type="button"
									class="navbar-toggle btn-navbar collapsed"
									data-toggle="collapse"
									data-target="#main-menu .navbar-collapse">
									<span aria-hidden="true" class="icon_menu hamb-mob-icon"></span>
								</button>
							</div>
						</div>
					</div>

					<!-- MAIN MENU CONTAINER -->
					<div class="main-menu-container">

						<div class="container-m-30 clearfix">

							<!-- MAIN MENU -->
							<div id="main-menu">
								<div class="navbar navbar-default" role="navigation">

									<!-- MAIN MENU LIST -->
									<nav class="collapse collapsing navbar-collapse right-1024">
										<ul class="nav navbar-nav">
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>homePage"
												class=""><div class="main-menu-title">家</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="<%=basePath %>homePage/list" class=""><div
														class="main-menu-title">项目列表</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="<%=basePath %>homePage/timeLine" class=""><div
														class="main-menu-title">时间轴</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>homePage/dati" class=""><div
														class="main-menu-title">答题</div></a></li>
										</ul>

									</nav>

								</div>
							</div>
							<!-- END main-menu -->

						</div>
						<!-- END container-m-30 -->

					</div>
					<!-- END main-menu-container -->

					<!-- SEARCH READ DOCUMENTATION -->
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
					</ul>
					<!-- cd-header-buttons -->
					<div id="cd-search" class="cd-search">
						<form class="form-search" id="searchForm"
							action="page-search-results.html" method="get">
							<input type="text" value="" name="q" id="q"
								placeholder="Search...">
						</form>
					</div>

				</div>
				<!-- END header-wrapper -->

			</header>
			<!-- PAGE TITLE LARGE 2 GRAY -->
			<div class="page-title-cont page-title-large2-cont bg-gray">
				<div class="relative container align-left">
					<div class="row">

						<div class="col-md-8">
							<h1 class="page-title2">Typography</h1>
						</div>

						<div class="col-md-4">
							<div class="breadcrumbs2 font-poppins">
								<a class="a-inv" href="index.html">home</a><span
									class="slash-divider">/</span><span class="bread-current">typography</span>
							</div>
						</div>

					</div>
				</div>
			</div>


			<!-- COTENT CONTAINER -->
			<div class="container bs-docs-container p-140-cont">
				<div class="row">

					<!-- SIDENAV HIDE -->
					<div class="col-md-3">
						<div id="sidebar-stiky"
							class="bs-sidebar hidden-xs hidden-sm clearfix"
							role="complementary">
							<h4 class="font-20 mt-0">Typography</h4>
							<ul id="nav-sidebar"
								class="nav bs-sidenav2 blog-categories2 font-poppins">
								<li class="current"><a href="#heading">Headings</a></li>
								<li><a href="#dropcaps">Dropcaps</a></li>
								<li><a href="#blockquotes">Blockquotes</a></li>
								<li><a href="#testimonials">Testimonials</a></li>
								<li><a href="#pricing-tables">Pricing Tables</a></li>
								<li><a href="#lists">Lists</a></li>
								<li><a href="#code">Code</a></li>
								<li><a href="#cd-timeline">Timeline</a></li>
								<li><a href="#tables">Tables</a></li>
								<li><a href="#tooltips">Tooltips</a></li>
								<li><a href="#popover">Popover</a></li>
								<li><a href="#highlights">Highlights</a></li>
								<li><a href="#dividers">Dividers</a></li>
							</ul>

						</div>
					</div>

					<!-- COTENT  -->
					<div class="col-md-9">

						<!-- HEADINGS  -->
						<div id="heading" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mt-0 mb-50">Headings</h3>
							</div>

							<h1>H1 Heading</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Autem, iure, magni, perferendis veniam laborum esse optio vel
								praesentium consectetur ea ullam maxime? Eligendi, iste sequi
								asperiores perspiciatis nostrum nisi laborum.</p>

							<h2>H2 Heading</h2>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Autem, iure, magni, perferendis veniam laborum esse optio vel
								praesentium consectetur ea ullam maxime? Eligendi, iste sequi
								asperiores perspiciatis nostrum nisi laborum.</p>

							<h3>H3 Heading</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Autem, iure, magni, perferendis veniam laborum esse optio vel
								praesentium consectetur ea ullam maxime? Eligendi, iste sequi
								asperiores perspiciatis nostrum nisi laborum.</p>

							<h4>H4 Heading</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Autem, iure, magni, perferendis veniam laborum esse optio vel
								praesentium consectetur ea ullam maxime? Eligendi, iste sequi
								asperiores perspiciatis nostrum nisi laborum.</p>

							<h5>H5 Heading</h5>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Autem, iure, magni, perferendis veniam laborum esse optio vel
								praesentium consectetur ea ullam maxime? Eligendi, iste sequi
								asperiores perspiciatis nostrum nisi laborum.</p>

							<h6>H6 Heading</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
								Autem, iure, magni, perferendis veniam laborum esse optio vel
								praesentium consectetur ea ullam maxime? Eligendi, iste sequi
								asperiores perspiciatis nostrum nisi laborum.</p>

							<div class="divider mt-60 mb-20">
								<i class="fa fa-square"></i>
							</div>

							<!-- HEADINGS WITH LINE  -->
							<div class="heading-line h1-line">
								<h1>H1 Heading line</h1>
							</div>
							<div class="heading-line h2-line">
								<h2>H2 Heading with line</h2>
							</div>
							<div class="heading-line h3-line">
								<h3>H3 Heading with line</h3>
							</div>
							<div class="heading-line h4-line">
								<h4>H4 Heading with line</h4>
							</div>
							<div class="heading-line h5-line">
								<h5>H5 Heading with line</h5>
							</div>
							<div class="heading-line h6-line">
								<h6>H6 Heading with line</h6>
							</div>

							<div class="divider mt-40 mb-60">
								<i class="fa fa-square"></i>
							</div>

							<!-- HEADINGS WITH UNDERLINE  -->
							<div class="heading-underline h1-line">
								<h1>H1 Heading with underline</h1>
							</div>
							<div class="heading-underline h2-line">
								<h2>H2 Heading with underline</h2>
							</div>
							<div class="heading-underline h3-line">
								<h3>H3 Heading with underline</h3>
							</div>
							<div class="heading-underline h4-line">
								<h4>H4 Heading with underline</h4>
							</div>
							<div class="heading-underline h5-line">
								<h5>H5 Heading with underline</h5>
							</div>
							<div class="heading-underline h6-line">
								<h6>H6 Heading with underline</h6>
							</div>
						</div>

						<!-- DROPCAPS  -->
						<div id="dropcaps" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Dropcaps</h3>
							</div>
							<div class="row">
								<div class="col-md-6">
									<p class="mb-30">
										<span class="dropcap1">P</span>ras aliquet. Integer faucibus,
										eros ac molestie placerat, enim tellus varius lacus, nec
										dictum nunc tortor id urna eros ac molestie placerat, enim
										tellus. Integer faucibus, eros ac molestie placerat, enim
										tellus varius lacus, nec dictum nunc tortor id urna eros ac
										molestie placerat, enim tellus. Nec dictum nunc tortor id urna
										eros ac molestie placerat, enim tellus.
									</p>
									<p class="mb-30">
										<span class="dropcap2">P</span>ras aliquet. Integer faucibus,
										eros ac molestie placerat, enim tellus varius lacus, nec
										dictum nunc tortor id urna eros ac molestie placerat, enim
										tellus. Nec dictum nunc tortor id urna eros ac molestie
										placerat, enim tellus. Integer faucibus, eros ac molestie
										placerat, enim tellus varius lacus, nec dictum nunc tortor id
										urna eros ac molestie placerat, enim tellus. Nec dictum nunc
										tortor id urna eros ac molestie placerat, enim tellus.
									</p>
								</div>
								<div class="col-md-6">
									<p class="mb-30">
										<span class="dropcap3">P</span>ras aliquet. Integer faucibus,
										eros ac molestie placerat, enim tellus varius lacus, nec
										dictum nunc tortor id urna eros ac molestie placerat, enim
										tellus. Integer faucibus, eros ac molestie placerat, enim
										tellus varius lacus, nec dictum nunc tortor id urna eros ac
										molestie placerat, enim tellus. Nec dictum nunc tortor id urna
										eros ac molestie placerat, enim tellus.
									</p>
									<p class="mb-30">
										<span class="dropcap4">P</span>ras aliquet. Integer faucibus,
										eros ac molestie placerat, enim tellus varius lacus, nec
										dictum nunc tortor id urna eros ac molestie placerat, enim
										tellus. Integer faucibus, eros ac molestie placerat, enim
										tellus varius lacus, nec dictum nunc tortor id urna eros ac
										molestie placerat, enim tellus. Nec dictum nunc tortor id urna
										eros ac molestie placerat, enim tellus.
									</p>
								</div>
							</div>
						</div>

						<!-- BLOCKQUOTES  -->
						<div id="blockquotes" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mb-50">Blockquotes</h3>
							</div>

							<h4 class="mb-30">Blockquote 1</h4>
							<blockquote class="quote1 mb-50 m-p-0">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Harum, maiores esse temporibus accusantium quas soluta quis sed
									rerum.</p>
								<footer>
									<span class="font-black">Amanda Pollock</span>, Doogle Inc.
								</footer>
							</blockquote>

							<h4 class="mb-40">Blockquote 2</h4>
							<div class="row mb-50">
								<div class="col-md-7">
									<blockquote class="testimonial-2 m-0">
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Similique, quis, possimus alias!</p>
									</blockquote>
								</div>

								<div class="col-md-4 col-md-offset-1">
									<div class="ts-author-cont">
										<div class="ts-author-info">
											<div class="ts-name">
												<span class="bold">Amanda Eniston</span>
											</div>
											<div class="ts-type">CEO Company</div>
										</div>
										<div class="ts-author-img">
											<img src="<%=basePath%>elementy/images/ts-author-2.png" alt="photo">
										</div>
									</div>
								</div>
							</div>

							<h4 class="mb-30">Blockquote 3</h4>
							<blockquote class="custom-blockquote mb-50">
								<p>Praesent bibendum lobortis lectus, quis dictum risus
									faucibus sagittis. Mauris a placerat lacus. Mauris rhoncus
									dolor sit amet nisl volutpat at consequat tortor feugiat. Ut
									ornare dui eu ipsum lobortis rhoncus.
								<p>
							</blockquote>

							<h4 class="mb-30">Blockquote 4</h4>
							<blockquote class="mb-50">
								<p>Praesent bibendum lobortis lectus, quis dictum risus
									faucibus sagittis. Mauris a placerat lacus. Mauris rhoncus
									dolor sit amet nisl volutpat at consequat tortor feugiat. Ut
									ornare dui eu ipsum lobortis rhoncus.</p>
							</blockquote>

							<h4 class="mb-30">Blockquote 5</h4>
							<blockquote class="quote2 mb-50 m-p-0 bg-gray">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Harum, maiores esse temporibus accusantium quas soluta quis sed
									rerum.</p>
								<footer>
									<span class="font-black">Amanda Pollock</span>, Doogle Inc.
								</footer>
							</blockquote>

							<h4 class="mb-30">Blockquote 6</h4>
							<div class=" pt-0 pb-50">

								<blockquote class="bq2-cont text-center ls-1 font-20 pb-0">
									<span class="test-quote-before">“</span>I don't work from
									drawings. I don't make sketches and drawings and<br>color
									sketches into a final painting<span class="test-quote-after">”</span>
									<footer class="ls-norm font-18">Jackson Pollock</footer>
								</blockquote>

							</div>

						</div>
						<!-- end section  -->

						<!-- TESTIMONIALS  -->
						<div id="testimonials" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Testimonials</h3>
							</div>

							<!-- TESTIMONIALS Style 1 -->
							<h4 class="mb-30">Testimonials</h4>
							<div class="ts-container mb-50">
								<div class="ts-icon-container-bg">
									<div class="ts-icon-container">
										<span aria-hidden="true"
											class="icon_quotations main-menu-icon"></span>
									</div>
								</div>
								<div class="ts-main-container-bg">
									<div class="ts-main-container clearfix">
										<div class="ts-text-container font-poppins">
											<div>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Aenean nisl orci, condim entum ultrices consequat eu,
												vehicula. Aenean nisl orci</div>
											<div class="right-text t-a-container mt-10">
												<span class="author-testimonial">John Doe</span> <span
													class="quote-author-description">CEO, Company</span>
											</div>
										</div>
										<div class="ts-img-container">
											<img src="<%=basePath%>elementy/images/content/ts-author.jpg" alt="Ipsum">
										</div>
									</div>
								</div>
							</div>

							<!-- TESTIMONIALS Style 2 -->
							<h4 class="mb-30">Testimonials 2</h4>
							<div class="tls-small mb-50">
								<div class="tls-small-text-container bg-lite-gray">Nulla
									venenatis ac orci at placerat. Vivamus quam odio, sagittis
									vitae dui in, faucibus euismod metus. Vivamus purus sem, dictum
									vel egestas sit amet, facilisis ac tortor. Lorem ipsum dolor
									sit amet, consectetur adipiscing elit. Elis mauris, luctus in
									risus et, volutpat malesuada mito.</div>
								<div class="tls-small-author-container  clearfix">
									<div class="tls-small-img-container">
										<img src="<%=basePath%>elementy/images/content/client-1.jpg" alt="client">
									</div>
									<div class="tls-small-author">
										<div class="tls-small-author-name">John Doe</div>
										<div class="tls-small-author-role">CEO, Company</div>
									</div>
								</div>
							</div>

							<!-- TESTIMONIALS Style 3 -->
							<h4 class="mb-30">Testimonials 3</h4>
							<div class="mb-50">
								<blockquote class="custom-blockquote">
									<p>Praesent bibendum lobortis lectus, quis dictum risus
										faucibus sagittis. Mauris a placerat lacus. Mauris rhoncus
										dolor sit amet nisl volutpat at consequat tortor feugiat. Ut
										ornare dui eu ipsum lobortis rhoncus.</p>
									<footer>
										Someone famous in <cite title="Source Title">Source
											Title</cite>
									</footer>
								</blockquote>
							</div>

							<!-- TESTIMONIALS Style 4 -->
							<h4 class="mb-30">Testimonials 4</h4>
							<div class="p-30 pb-5 mb-50 bg-gray">
								<div class="mb-30">
									<div class="ts4-text-cont">Maecenas at interdum odio.
										Curabitur consectetur interdum lectus, sit amet ultrices arcu
										maximus non. Quisque a mauris id nibh facilisis dictum. Duis
										lobortis lorem consectetur, lobortis.</div>
									<div class="ts4-author-cont clearfix">
										<div class="ts4-author-img">
											<img src="<%=basePath%>elementy/images/testimonials/ts-author3.jpg"
												class="img-circle" alt="img">
										</div>
										<div class="ts4-author-info">
											<div class="ts-name">Emma Banks</div>
											<div class="ts-type">Invision Inc</div>
										</div>
									</div>
								</div>
							</div>

							<!-- TESTIMONIALS Style 5 -->
							<h4 class="mb-30">Testimonials 5</h4>
							<div class="mb-50">
								<div class="mb-30">
									<div class="ts4-text-cont  bg-gray">Maecenas at interdum
										odio. Curabitur consectetur interdum lectus, sit amet ultrices
										arcu maximus non. Quisque a mauris id nibh facilisis dictum.
										Duis lobortis lorem consectetur, lobortis.</div>
									<div class="ts4-author-cont clearfix">
										<div class="ts4-author-img">
											<img src="<%=basePath%>elementy/images/testimonials/ts-author3.jpg"
												class="img-circle" alt="img">
										</div>
										<div class="ts4-author-info">
											<div class="ts-name">Emma Banks</div>
											<div class="ts-type">Invision Inc</div>
										</div>
									</div>
								</div>
							</div>

							<!-- TESTIMONIALS-CAROUSEL -->
							<h4 class="mb-0">Testimonials Carousel</h4>
							<div
								class="p-80-cont pt-40 owl-bg-white owl-plugin fullwidth-slider">

								<!-- Slide Item -->
								<div class="pt-20 pb-20">
									<div class="relative">
										<div class="row plr-30">
											<div class="col-md-7">
												<blockquote class="testimonial-2">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Similique, quis, possimus alias!</p>
												</blockquote>
											</div>

											<div class="col-md-4 col-md-offset-1">
												<div class="ts-author-cont">
													<div class="ts-author-info">
														<div class="ts-name">
															<span class="bold">Amanda Eniston</span>
														</div>
														<div class="ts-type">CEO Company</div>
													</div>
													<div class="ts-author-img">
														<img src="<%=basePath%>elementy/images/ts-author-2.png" alt="photo">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Slide Item -->
								<div class="pt-20 pb-20">
									<div class="relative">
										<div class="row plr-30">
											<div class="col-md-7">
												<blockquote class="testimonial-2">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Similique, quis, possimus alias!</p>
												</blockquote>
											</div>

											<div class="col-md-4 col-md-offset-1">
												<div class="ts-author-cont">
													<div class="ts-author-info">
														<div class="ts-name">
															<span class="bold">Jessica Holmes</span>
														</div>
														<div class="ts-type">CEO Company</div>
													</div>
													<div class="ts-author-img">
														<img src="<%=basePath%>elementy/images/ts-author.png" alt="photo">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- Slide Item -->
								<div class="pt-20 pb-20">
									<div class="relative">
										<div class="row plr-30">
											<div class="col-md-7">
												<blockquote class="testimonial-2">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Similique, quis, possimus alias!</p>
												</blockquote>
											</div>

											<div class="col-md-4 col-md-offset-1">
												<div class="ts-author-cont">
													<div class="ts-author-info">
														<div class="ts-name">
															<span class="bold">John Doe</span>
														</div>
														<div class="ts-type">CEO Company</div>
													</div>
													<div class="ts-author-img">
														<img src="<%=basePath%>elementy/images/ts-author-3.png" alt="photo">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>

							<h4>Testimonials Carousel 2</h4>
							<div
								class="p-80-cont pt-40 owl-bg-white owl-plugin fullwidth-slider">

								<!-- Slide Item -->
								<div class="pt-20">
									<div class="relative">
										<div class="row plr-30">
											<div class="col-md-12">
												<blockquote class="testimonial-2">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Similique, quis, possimus alias!</p>
												</blockquote>
											</div>
										</div>
									</div>
								</div>

								<!-- Slide Item -->
								<div class="pt-20">
									<div class="relative">
										<div class="row plr-30">
											<div class="col-md-12">
												<blockquote class="testimonial-2">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Similique, quis, possimus alias!</p>
												</blockquote>
											</div>
										</div>
									</div>
								</div>

								<!-- Slide Item -->
								<div class="pt-20">
									<div class="relative">
										<div class="row plr-30">
											<div class="col-md-12">
												<blockquote class="testimonial-2">
													<p>Lorem ipsum dolor sit amet, consectetur adipisicing
														elit. Similique, quis, possimus alias!</p>
												</blockquote>
											</div>
										</div>
									</div>
								</div>

							</div>

							<!-- TESTIMONIALS CAROUSEL 3 -->
							<h4>Testimonials Carousel 3</h4>
							<div class="row plr-30 pt-20 pb-50 owl-plugin fullwidth-slider">

								<!-- Slide Item 1 -->
								<div class="col-md-12">
									<div class="relative">
										<div class="row">

											<div class="col-md-3">
												<div class="ts3-author-cont">
													<div class="ts3-author-img">
														<img class="img-circle"
															src="<%=basePath%>elementy/images/testimonials/ts-author.jpg" alt="photo">
													</div>
													<div class="ts-author-info text-center">
														<div class="ts-name">
															<strong>Amanda Eniston</strong>
														</div>
														<div class="ts-type">Doodle inc.</div>
													</div>

												</div>
											</div>

											<div class="col-md-9">
												<blockquote class="testimonial-3">
													<p>Nunc nec dictum purus. Nam porttitor molestie dolor
														nec lacinia. Donec placerat magna erat, non eleifend neque
														convallis at. Morbi felis sem, molestie, blandit ac quam.
														Fusce aliquet blandit</p>
												</blockquote>
											</div>

										</div>
									</div>
								</div>

								<!-- Slide Item 2 -->
								<div class="col-md-12">
									<div class="relative">
										<div class="row">

											<div class="col-md-3">
												<div class="ts3-author-cont">
													<div class="ts3-author-img">
														<img class="img-circle"
															src="<%=basePath%>elementy/images/testimonials/ts-author2.jpg" alt="photo">
													</div>
													<div class="ts-author-info text-center">
														<div class="ts-name">
															<strong>Colin Little</strong>
														</div>
														<div class="ts-type">CEO, Pixate</div>
													</div>

												</div>
											</div>

											<div class="col-md-9">
												<blockquote class="testimonial-3">
													<p>Donec euismod vulputate augue, ac sagittis lacus
														lobortis id. Donec varius velit eget interdum semper.
														Mauris quis nunc eget blandit ac quam elit finibus semper
														eu non tellus. Donec at eros sed ante</p>
												</blockquote>
											</div>

										</div>
									</div>
								</div>

								<!-- Slide Item 3 -->
								<div class="col-md-12">
									<div class="relative">
										<div class="row">

											<div class="col-md-3">
												<div class="ts3-author-cont">
													<div class="ts3-author-img">
														<img class="img-circle"
															src="<%=basePath%>elementy/images/testimonials/ts-author4.jpg" alt="photo">
													</div>
													<div class="ts-author-info text-center">
														<div class="ts-name">
															<strong>Robert Jackson</strong>
														</div>
														<div class="ts-type">Founder, Drillbox</div>
													</div>

												</div>
											</div>

											<div class="col-md-9">
												<blockquote class="testimonial-3">
													<p>Etiam vestibulum risus et suscipit finibus. Morbi
														vitae ligula eget sem dignissim iaculis. Mauris blandit ac
														quam vitae velit quis arcu mollis pellentesque nec non
														magna lentesque feu</p>
												</blockquote>
											</div>

										</div>
									</div>
								</div>

							</div>

							<!-- TESTIMONIALS-BOOTSTRAP -->
							<h4 class="mb-30">Naming a source</h4>
							<blockquote class="mb-50">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Integer posuere erat a ante.</p>
								<footer>
									Someone famous in <cite title="Source Title">Source
										Title</cite>
								</footer>
							</blockquote>

							<h4 class="mb-30">Alternate displays</h4>
							<blockquote class="blockquote-reverse">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
									Integer posuere erat a ante.</p>
								<footer>
									Someone famous in <cite title="Source Title">Source
										Title</cite>
								</footer>
							</blockquote>

						</div>
						<!-- end section  -->

						<!-- PRICING TABLES  -->
						<div id="pricing-tables" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Pricing Tables</h3>
							</div>

							<!-- PRICING TABLES STYLE-1 without ANIMATE-->
							<h4 class="mb-30">Pricing Tables</h4>
							<div class="row mb-50">
								<div class="pricing-table clearfix">

									<div class="col-md-6 mb-30">
										<div>
											<h1 class="pt-h1-container">Basic</h1>
											<div class="price-container">
												<span class="currency">$</span><span class="price">10</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>

											<div class="pt-content-container">
												<ul>
													<li>3 Users</li>
													<li>2 Domains</li>
													<li>2 Databases</li>
													<li>3 GB Storage</li>
													<li>5 Users</li>
													<li>50 Email Accounts</li>
													<li>5 GB</li>
													<li>Support Available</li>
												</ul>
											</div>
											<div class="price-button-container">
												<a class="button medium gray price-button">SIGN UP</a>
											</div>
										</div>
									</div>

									<div class="col-md-6 mb-30">
										<div class="pt-best">
											<h1 class="pt-h1-container">Optimal</h1>
											<div class="price-container ">
												<span class="currency">$</span><span class="price">21</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>

											<div class="pt-content-container">
												<ul>
													<li>3 Users</li>
													<li>5 Domains</li>
													<li>5 Databases</li>
													<li>15 GB Storage</li>
													<li>Unlimited Users</li>
													<li>Unlimited</li>
													<li>5 GB</li>
													<li>Support Available</li>
												</ul>
											</div>
											<div class=" price-button-container">
												<a class="button medium price-button">SIGN UP</a>
											</div>
										</div>
									</div>

								</div>
							</div>

							<!-- PRICING TABLES STYLE-2 without ANIMATE-->
							<h4 class="mb-30">Pricing Tables 2</h4>
							<div class=" mb-50">
								<div class="pricing-table-2 price-table-grey-bg  clearfix">
									<div class="col-md-6 mt-30">
										<div>
											<h1>BASIC</h1>
											<div class="price-container2">
												<span class="currency">$</span><span class="price">10</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>

											<div>
												<ul>
													<li>3 Users</li>
													<li>2 Domains</li>
													<li>2 Databases</li>
													<li>3 GB Storage</li>
													<li>5 Users</li>
													<li>50 Email Accounts</li>
													<li>5 GB</li>
													<li>Support Available</li>
												</ul>
											</div>
											<div class=" price-button-container">
												<a class="button medium gray price-button">SIGN UP</a>
											</div>
										</div>
									</div>

									<div class="col-md-6 mt-30">
										<div>
											<h1 class="pt-col-main">OPTIMAL</h1>
											<div class="price-container2 ">
												<span class="currency">$</span><span class="price">21</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>

											<div>
												<ul>
													<li>3 Users</li>
													<li>5 Domains</li>
													<li>5 Databases</li>
													<li>15 GB Storage</li>
													<li>Unlimited Users</li>
													<li>Unlimited</li>
													<li>5 GB</li>
													<li>Support Available</li>
												</ul>
											</div>
											<div class=" price-button-container">
												<a class="button medium price-button">SIGN UP</a>
											</div>
										</div>
									</div>

								</div>

							</div>

							<!-- PRICING TABLES HORIZONTAL without ANIMATE-->
							<h4>Pricing Tables 3 Col</h4>
							<div class="row mb-50">
								<div class="col-md-12">
									<div class="pricing-horizontal clearfix">
										<div class="pricing-horizontal-content-container col-md-9">
											<div class="pricing-title">
												<div class="heading-line h4-line">
													<h4>Lorem Ipsum Dolor Sit Amet</h4>
												</div>
											</div>
											<div class="pricing-features">

												<div class="row">
													<div class="col-md-6">
														<ul class="icon-list elegant-font clearfix">
															<li><span aria-hidden="true"
																class="icon_profile mr-10"></span>3 Users</li>
															<li><span aria-hidden="true"
																class="icon_contacts_alt mr-10"></span>10 Domains</li>
															<li><span aria-hidden="true"
																class="icon_book_alt mr-10"></span>10 Databases</li>
															<li><span aria-hidden="true"
																class="icon_drive mr-10"></span>20 GB Storage</li>
														</ul>
													</div>
													<div class="col-md-6">
														<ul class="icon-list elegant-font clearfix">
															<li><span aria-hidden="true"
																class="icon_group mr-10"></span>Unlimited Users</li>
															<li><span aria-hidden="true"
																class="icon_mail_alt mr-10"></span>Unlimited Email
																Accounts</li>
															<li><span aria-hidden="true"
																class="icon_datareport mr-10"></span>5 GB Bandwidth /
																Month</li>
															<li><span aria-hidden="true"
																class="icon_lifesaver mr-10"></span>Support Available</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
										<div class="pricing-horizontal-price-container col-md-3">
											<div class="price-container">
												<span class="currency">$</span><span class="price">10</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>
											<div class="price-button-container">
												<a class="button medium gray price-button">SIGN UP</a>
											</div>
										</div>
									</div>
								</div>
							</div>


							<!-- PRICING TABLES STYLE 4 -->
							<h4 class="mb-30">Pricing Tables 4</h4>
							<div class="mb-50">
								<div class="clearfix">

									<div class="col-md-6 mb-30 bg-gray-light">
										<div class="pricing-table-4 text-center">
											<h1 class="pt-h4-cont">Basic</h1>
											<div class="price-cont-4">
												<span class="currency-4">$</span><span class="price-4">14</span>
												<span class="cents-cont-4"> <span class="place2-4">/&nbsp;mo</span>
												</span>
											</div>

											<ul class="pt4-ul">
												<li>10 GB Storage</li>
												<li>2 Domains Names</li>
												<li>2 Databases Include</li>
												<li>50 Email Accounts</li>
												<li>Full Access</li>
												<li>Support Available</li>
											</ul>

											<div class="price-button-cont-4">
												<a class="button rounded thin medium gray">GET STARTED</a>
											</div>
										</div>
									</div>

									<div class="col-md-6 mb-30" style="background-color: #dedede;">
										<div class="pricing-table-4 text-center">
											<h1 class="pt-h4-cont">Optimal</h1>
											<div class="price-cont-4">
												<span class="currency-4">$</span><span class="price-4">21</span>
												<span class="cents-cont-4"> <span class="place2-4">/&nbsp;mo</span>
												</span>
											</div>

											<ul class="pt4-ul">
												<li>100 GB Storage</li>
												<li>5 Domains Names</li>
												<li>5 Databases Include</li>
												<li>50 Email Accounts</li>
												<li>Full Access</li>
												<li>Support Available</li>
											</ul>

											<div class="price-button-cont-4">
												<a class="button rounded medium gray">GET STARTED</a>
											</div>
										</div>
									</div>

								</div>
							</div>

							<!-- PRICING TABLES STYLE 5 -->
							<h4 class="mb-30">Pricing Tables 5</h4>
							<div class="row mb-50">
								<div class="clearfix">

									<div class="col-md-6 mb-30">
										<div class="pt-5-cont">
											<div class="pricing-table-4 text-center">
												<h1 class="pt-h4-cont">Basic</h1>
												<div class="price-cont-4">
													<span class="currency-5">$</span><span class="price-5">14</span>
													<span class="cents-cont-4"> <span class="place2-4">/&nbsp;mo</span>
													</span>
												</div>

												<ul class="pt4-ul">
													<li>10 GB Storage</li>
													<li>2 Domains Names</li>
													<li>2 Databases Include</li>
													<li>50 Email Accounts</li>
													<li>Full Access</li>
													<li>Support Available</li>
												</ul>

												<div class="price-button-cont-4">
													<a class="button rounded thin medium gray">GET STARTED</a>
												</div>
											</div>
										</div>
									</div>

									<div class="col-md-6 mb-30">
										<div class="pt-5-cont">
											<div class="pricing-table-4 text-center">
												<h1 class="pt-h4-cont">Optimal</h1>
												<div class="price-cont-4">
													<span class="currency-5">$</span><span class="price-5">21</span>
													<span class="cents-cont-4"> <span class="place2-4">/&nbsp;mo</span>
													</span>
												</div>

												<ul class="pt4-ul">
													<li>100 GB Storage</li>
													<li>5 Domains Names</li>
													<li>5 Databases Include</li>
													<li>50 Email Accounts</li>
													<li>Full Access</li>
													<li>Support Available</li>
												</ul>

												<div class="price-button-cont-4">
													<a class="button rounded medium gray">GET STARTED</a>
												</div>
											</div>
										</div>
									</div>

								</div>
							</div>

							<!-- PRICING TABLES ANIMATE -->
							<h4>Pricing Tables Animate</h4>
							<div class="mb-50">

								<div class="pricing-table-2 price-table-grey-bg  clearfix">
									<div class="col-md-4 mt-30 wow zoomIn"
										data-wow-duration="700ms" data-wow-delay="300ms">
										<div>
											<h1>BASIC</h1>
											<div class="price-container2">
												<span class="currency">$</span><span class="price">10</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>

											<div>
												<ul>
													<li>3 Users</li>
													<li>2 Domains</li>
													<li>2 Databases</li>
													<li>3 GB Storage</li>
													<li>5 Users</li>
													<li>50 Email Accounts</li>
													<li>5 GB</li>
													<li>Support Available</li>
												</ul>
											</div>
											<div class=" price-button-container">
												<a class="button medium gray price-button">SIGN UP</a>
											</div>
										</div>
									</div>
									<div class="col-md-4 mt-30 wow zoomIn"
										data-wow-duration="700ms" data-wow-delay="400ms">
										<div>
											<h1>PRO</h1>
											<div class="price-container2">
												<span class="currency">$</span><span class="price">16</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>

											<div>
												<ul>
													<li>3 Users</li>
													<li>3 Domains</li>
													<li>3 Databases</li>
													<li>8 GB Storage</li>
													<li>Unlimited Users</li>
													<li>Unlimited</li>
													<li>5 GB</li>
													<li>Support Available</li>
												</ul>
											</div>
											<div class="price-button-container">
												<a class="button medium gray price-button">SIGN UP</a>
											</div>
										</div>
									</div>
									<div class="col-md-4 mt-30 wow zoomIn"
										data-wow-duration="700ms" data-wow-delay="500ms">
										<div>
											<h1 class="pt-col-main">OPTIMAL</h1>
											<div class="price-container2 ">
												<span class="currency">$</span><span class="price">21</span>
												<span class="cents-cont"> <span class="cents">99</span>
													<span class="place2">monthly</span>
												</span>
											</div>

											<div>
												<ul>
													<li>3 Users</li>
													<li>5 Domains</li>
													<li>5 Databases</li>
													<li>15 GB Storage</li>
													<li>Unlimited Users</li>
													<li>Unlimited</li>
													<li>5 GB</li>
													<li>Support Available</li>
												</ul>
											</div>
											<div class=" price-button-container">
												<a class="button medium price-button">SIGN UP</a>
											</div>
										</div>
									</div>

								</div>

							</div>

						</div>

						<!-- LISTS  -->
						<div id="lists" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Lists</h3>
							</div>
							<div class="row">

								<div class="col-md-6">

									<h4>Unstyled</h4>
									<ul class="list-unstyled mb-50">
										<li>Lorem ipsum dolor sit amet</li>
										<li>Consectetur adipiscing elit</li>
										<li>Nulla volutpat aliquam velit
											<ul>
												<li>Phasellus iaculis neque</li>
												<li>Purus sodales ultricies</li>
											</ul>
										</li>
										<li>Aenean sit amet erat nunc</li>
										<li>Eget porttitor lorem</li>
									</ul>

									<h4>Description</h4>
									<dl class="mb-50">
										<dt>Description lists</dt>
										<dd>A description list is perfect for defining terms.</dd>
										<dt>Euismod</dt>
										<dd>Vestibulum id ligula porta felis euismod semper eget
											lacinia odio sem nec elit.</dd>
										<dd>Donec id elit non mi porta gravida at eget metus.</dd>
										<dt>Malesuada porta</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
									</dl>
									<h4>Horizontal description</h4>
									<dl class="dl-horizontal mb-50">
										<dt>Description lists</dt>
										<dd>A description list is perfect for defining terms.</dd>
										<dt>Euismod</dt>
										<dd>Vestibulum id ligula porta felis euismod semper eget
											lacinia odio sem nec elit.</dd>
										<dd>Donec id elit non mi porta gravida at eget metus.</dd>
										<dt>Malesuada porta</dt>
										<dd>Etiam porta sem malesuada magna mollis euismod.</dd>
										<dt>Felis euismod semper eget lacinia</dt>
										<dd>Fusce dapibus, tellus ac cursus commodo, tortor
											mauris condimentum nibh, ut fermentum massa justo sit amet
											risus.</dd>
									</dl>

								</div>

								<div class="col-md-6">
									<h4>Any Icon</h4>
									<ul class="icon-list mb-50">
										<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet</li>
										<li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet</li>
										<li><i class="fa fa-angle-double-right"></i>Consectetur
											adipiscing elit</li>
										<li><i class="fa fa-angle-double-right"></i>Consectetur
											adipiscing elit</li>
										<li><i class="fa fa-angle-right"></i>Nulla volutpat
											aliquam velit</li>
										<li><i class="fa fa-angle-right"></i>Nulla volutpat
											aliquam velit</li>
										<li><i class="fa fa-star"></i>Aenean sit amet erat nunc</li>
										<li><i class="fa fa-star"></i>Aenean sit amet erat nunc</li>
										<li><i class="fa fa-cloud-download"></i>Facilisis in
											pretium nisl aliquet</li>
										<li><i class="fa fa-cloud-download"></i>Facilisis in
											pretium nisl aliquet</li>
									</ul>
									<h4>Ordered</h4>
									<ol class="mb-50">
										<li>Lorem ipsum dolor sit amet</li>
										<li>Consectetur adipiscing elit</li>
										<li>Integer molestie lorem at massa</li>
										<li>Facilisis in pretium nisl aliquet</li>
									</ol>

									<h4>Unordered</h4>
									<ul class="mb-50">
										<li>Lorem ipsum dolor sit amet</li>
										<li>Consectetur adipiscing elit</li>
										<li>Nulla volutpat aliquam velit
											<ul>
												<li>Phasellus iaculis neque</li>
												<li>Purus sodales ultricies</li>
												<li>Vestibulum laoreet porttitor sem</li>
											</ul>
										</li>
										<li>Faucibus porta lacus fringilla vel</li>
										<li>Aenean sit amet erat nunc</li>
									</ul>

									<h4>Inline</h4>
									<ul class="list-inline mb-50">
										<li>Lorem ipsum</li>
										<li>Phasellus iaculis</li>
										<li>Nulla volutpat</li>
									</ul>
								</div>

							</div>
						</div>

						<!-- CODE  -->
						<div id="code" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Code</h3>
							</div>
							<div class="row">

								<div class="col-md-6">
									<h4>Inline</h4>
									<p>
										For example,
										<code>&lt;section&gt;</code>
										should be wrapped as inline.
									</p>
								</div>

								<div class="col-md-6">
									<h4>Basic Block</h4>
									<pre>&lt;p&gt;Sample text here...&lt;/p&gt;</pre>
								</div>

							</div>
						</div>

						<!-- TIMELINE -->
						<div class="heading-underline h3-line">
							<h3 class="mb-40">Timeline</h3>
						</div>
						<section id="cd-timeline" class="cd-container mb-100">
							<div class="cd-timeline-start">
								<div class="cd-timeline-start-caption">START COMPANY</div>
								<div class="cd-timeline-start-date">NOVEMBER 2011</div>
							</div>
							<div class="cd-timeline-block">
								<div class="cd-timeline-img cd-picture">
									<span aria-hidden="true" class="icon_house_alt"></span>
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content">
									<h2>LOREM IPSUM DOLOR SIT AMET</h2>
									<div>Iste voluptatibus minus veritatis, consectetur
										adipisicing elit. Iusto, optio, dolorum provident rerum aut</div>
									<span class="cd-date"><span class="cd-date-year">2011</span><span
										class="cd-date-month">NOV 11</span></span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->

							<div class="cd-timeline-block">
								<div class="cd-timeline-img cd-picture">
									<span aria-hidden="true" class="icon_cloud_alt"></span>
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content">
									<h2>HIC QUASI PLACEAT IURE TEMPORA</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Iusto, optio, dolorum provident rerum aut hic quasi
										placeat iure tempora laudantium ipsa ad debitis unde?</p>
									<span class="cd-date"><span class="cd-date-year">2012</span><span
										class="cd-date-month">DEC 31</span></span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->

							<div class="cd-timeline-block">
								<div class="cd-timeline-img cd-picture">
									<span aria-hidden="true" class="icon_heart_alt"></span>
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content">
									<h2>DOLOREM IPSAM QUAE RERUM QUIS</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Excepturi, obcaecati, quisquam id molestias eaque
										asperiores voluptatibus cupiditate error assumenda delectus
										odit similique earum voluptatem doloremque dolorem ipsam quae
										rerum quis. Odit, itaque, deserunt corporis vero ipsum nisi
										eius odio natus ullam provident pariatur temporibus quia eos
										repellat consequuntur perferendis enim amet quae quasi
										repudiandae sed quod veniam dolore possimus rem voluptatum
										eveniet eligendi quis fugiat aliquam sunt similique aut
										adipisci.</p>
									<span class="cd-date"><span class="cd-date-year">2013</span><span
										class="cd-date-month">JUL 21</span></span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->

							<div class="cd-timeline-block">
								<div class="cd-timeline-img cd-picture">
									<span aria-hidden="true" class="icon_gift_alt"></span>
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content">
									<h2>ISTE VOLUPTATIBUS MINUS VERITATIS</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Iusto, optio, dolorum provident rerum aut hic quasi
										placeat iure tempora laudantium ipsa ad debitis unde? Iste
										voluptatibus minus veritatis qui ut.</p>
									<span class="cd-date"><span class="cd-date-year">2014</span><span
										class="cd-date-month">OCT 15</span></span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->

							<div class="cd-timeline-block">
								<div class="cd-timeline-img cd-picture">
									<span aria-hidden="true" class="icon_archive_alt"></span>
								</div>
								<!-- cd-timeline-img -->

								<div class="cd-timeline-content">
									<h2>CONSECTETUR ADIPISICING ELIT</h2>
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit. Iusto, optio, dolorum provident rerum.</p>
									<span class="cd-date"><span class="cd-date-year">2015</span><span
										class="cd-date-month">MAY 10</span></span>
								</div>
								<!-- cd-timeline-content -->
							</div>
							<!-- cd-timeline-block -->

							<div class="cd-timeline-start cd-final">
								<div class="cd-timeline-start-caption">RECENT DAY</div>
							</div>
						</section>
						<!-- cd-timeline -->

						<!-- TABLES  -->
						<div id="tables" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Tables</h3>
							</div>
							<h4>Basic example</h4>
							<table class="table mb-40">
								<thead>
									<tr>
										<th>#</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>

							<h4>Striped rows</h4>
							<table class="table table-striped mb-40">
								<thead>
									<tr>
										<th>#</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>3</td>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>

							<h4>Bordered table</h4>
							<table class="table table-bordered mb-40">
								<thead>
									<tr>
										<th>#</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="2">1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<td>Mark</td>
										<td>Otto</td>
										<td>@TwBootstrap</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>3</td>
										<td colspan="2">Larry the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>

							<h4>Hover rows</h4>
							<table class="table table-hover mb-40">
								<thead>
									<tr>
										<th>#</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>3</td>
										<td colspan="2">Larry the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>

							<h4>Condensed table</h4>
							<table class="table table-condensed mb-40">
								<thead>
									<tr>
										<th>#</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Username</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>Mark</td>
										<td>Otto</td>
										<td>@mdo</td>
									</tr>
									<tr>
										<td>2</td>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>3</td>
										<td colspan="2">Larry the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>

							<h4>Responsive tables</h4>
							<div class="table-responsive mb-40">
								<table class="table">
									<thead>
										<tr>
											<th>#</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
										</tr>
									</tbody>
								</table>
							</div>

							<div class="table-responsive">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th>#</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
											<th>Table heading</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
											<td>Table cell</td>
										</tr>
									</tbody>
								</table>
							</div>

						</div>

						<!-- TOOLTIPS  -->
						<div id="tooltips" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Tooltips</h3>
							</div>
							<div class="bs-example-tooltips text-center">
								<button type="button" class="btn btn-default"
									data-toggle="tooltip" data-placement="left" title=""
									data-original-title="Tooltip on left">Tooltip on left</button>
								<button type="button" class="btn btn-default"
									data-toggle="tooltip" data-placement="top" title=""
									data-original-title="Tooltip on top">Tooltip on top</button>
								<button type="button" class="btn btn-default"
									data-toggle="tooltip" data-placement="bottom" title=""
									data-original-title="Tooltip on bottom">Tooltip on
									bottom</button>
								<button type="button" class="btn btn-default"
									data-toggle="tooltip" data-placement="right" title=""
									data-original-title="Tooltip on right">Tooltip on
									right</button>
							</div>
						</div>

						<!-- POPOVER  -->
						<div id="popover" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Popover</h3>
							</div>
							<div class="bs-example-popovers text-center">
								<button type="button" class="btn btn-default"
									data-container="body" data-toggle="popover"
									data-placement="left"
									data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
									data-original-title="" title="">Popover on left</button>
								<button type="button" class="btn btn-default"
									data-container="body" data-toggle="popover"
									data-placement="top"
									data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
									data-original-title="" title="">Popover on top</button>
								<button type="button" class="btn btn-default"
									data-container="body" data-toggle="popover"
									data-placement="bottom"
									data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
									data-original-title="" title="">Popover on bottom</button>
								<button type="button" class="btn btn-default"
									data-container="body" data-toggle="popover"
									data-placement="right"
									data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus."
									data-original-title="" title="">Popover on right</button>
							</div>
						</div>

						<!-- HIGHLIGHTS  -->
						<div id="highlights" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Highlights</h3>
							</div>
							<p>
								Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed
								diam nonummy nibh euismod tincidunt ut laoreet dolore magna
								aliquam erat volutpat. <span class="highlight-text-grey"
									style="color:; background-color: #C0C0C0;">Ut wisi enim
									ad minim veniam</span>, quis nostrud exerci tation ullamcorper
								suscipit lobortis nisl ut aliquip ex ea commodo
								consequat.&nbsp;Duis autem vel eum iriure dolor in hendrerit in
								vulputate velit esse molestie consequat, <span
									class="highlight-text-grey"
									style="color:; background-color: #C0C0C0;">vel illum
									dolore eu feugiat nulla facilisis at vero eros et accumsan</span> et
								iusto odio dignissim qui blandit praesent luptatum zzril delenit
								augue duis dolore te feugait nulla facilisi. Nam liber tempor
								cum soluta nobis eleifend option congue nihil imperdiet doming
								id quod mazim placerat facer possim assum.
							</p>
							<p>
								<span class="highlight-text">Pellentesque habitant</span> morbi
								tristique senectus et netus et malesuada fames ac turpis
								egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget,
								tempor sit amet, ante.&nbsp;Donec eu libero sit amet quam
								egestas semper. &nbsp;Aenean ultricies mi vitae est.&nbsp;<span
									class="highlight-text">Typi non habent claritatem
									insitam</span>; est usus legentis in iis qui facit eorum claritatem.
								Investigationes demonstraverunt lectores legere me lius quod ii
								legunt saepius. Claritas est etiam processus dynamicus, qui
								sequitur mutationem consuetudium lectorum. Mirum est notare quam
								littera gothica, quam nunc putamus parum claram, anteposuerit
								litterarum formas humanitatis per seacula quarta decima et
								quinta decima. <span class="highlight-text-grey">Eodem
									modo typi, qui nunc nobis videntur parum clari, fiant sollemnes
									in futurum.</span>
							</p>
						</div>

						<!-- DIVIDERS  -->
						<div id="dividers" class="mb-100 bs-docs-section">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">Dividers</h3>
							</div>
							<h4>Divider square</h4>
							<div class="divider">
								<i class="fa fa-square"></i>
							</div>
							<h4>Divider square center</h4>
							<div class="divider divider-center">
								<i class="fa fa-square"></i>
							</div>
							<h4>Divider square o</h4>
							<div class="divider">
								<i class="fa fa-square-o"></i>
							</div>
							<h4>Divider circle</h4>
							<div class="divider">
								<i class="fa fa-circle"></i>
							</div>
							<h4>Divider circle center</h4>
							<div class="divider divider-center">
								<i class="fa fa-circle"></i>
							</div>
							<h4>Divider circle o</h4>
							<div class="divider">
								<i class="fa fa-circle-o"></i>
							</div>
							<h4>Divider any icon</h4>
							<div class="divider">
								<i class="fa fa-star"></i>
							</div>
							<h4>Divider line</h4>
							<div class="divider-line"></div>
							<h4>Divider dashed</h4>
							<div class="divider-dashed"></div>
							<h4>Hr</h4>
							<hr>
							<h4>Hr short</h4>
							<hr class="short">
							<h4>Hr tall</h4>
							<hr class="tall">
							<h4>Hr taller</h4>
							<hr class="taller">
							<h4>Hr invisible</h4>
							<hr class="invisible">
						</div>

					</div>

				</div>
			</div>

			<div id="footer-offset">
				<!-- FOOTER 4 BLACK -->
				<%@include file="/WEB-INF/pages/base/footer.jsp"%>
			</div>
			<!-- End footer-offset -->

		</div>
		<!-- End BG -->
	</div>
	<!-- End wrap -->

	<!-- JS begin -->
	<script>
		$(document).ready(function() {

			//NAV SIDEBAR------------------------------------------------------------------
			var top_offset = $('header').height() - 1; // get height of fixed navbar

			$('#nav-sidebar').onePageNav({
				currentClass : 'current',
				changeHash : false,
				scrollSpeed : 700,
				scrollOffset : top_offset,
				scrollThreshold : 0.5,
				filter : '',
				easing : 'swing',
				begin : function() {
					//I get fired when the animation is starting
				},
				end : function() {
					//I get fired when the animation is ending
				},
				scrollChange : function($currentListItem) {
					//I get fired when you enter a section and I pass the list item of the section
				}
			});

			//SIDEBAR STICKY---------------------------------------------	  
			var //offsetSb = $('.page-title-bg').height(),
			offsetFooter = $('#footer-offset').height() + 30;
			// DM Menu
			jQuery('#sidebar-stiky').affix({
				offset : {
					top : 390, //top offset for header 1 for others headers it will have other value
					bottom : offsetFooter
				}
			});

		});
	</script>

	<!-- JS end -->
</body>

</html>