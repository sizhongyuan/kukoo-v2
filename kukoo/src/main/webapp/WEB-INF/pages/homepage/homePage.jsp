<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/pages/base/head.jsp"%>

		<html>
			<head>
				<!-- <link rel="icon" href="../../favicon.ico"> -->
				<title>布谷移民——移民解决方案专家</title>
				<link href="<%=basePath %>css/homepage/homepage-querybar.css" rel="stylesheet" type="text/css">
					<link href="<%=basePath %>javascript/bootstrap-select/css/bootstrap-select.min.css" rel="stylesheet" type="text/css">
						<script src="<%=basePath %>javascript/bootstrap-select/js/bootstrap-select.min.js"></script>
						<script src="<%=basePath %>javascript/bootstrap-select/js/i18n/defaults-zh_CN.min.js"></script>
					</head>
					<script type="text/javascript">
						$("document").ready(function () {
							/* 判断session用户是否登录 start*/
							if ("${userId}" !== "") {
								$('#userCenter', parent.document).removeClass("hidden");
								$("#signUp", parent.document).addClass("hidden");
								$("#signIn", parent.document).addClass("hidden");
							}
							/* 判断session用户是否登录 end*/
							/* 个性化动画新增查询栏 */
							$("#querybar").delay(1000).fadeIn(1000);
							checkProject();
						});
						function mainQuery() {
							var country = $("#country").val().trim();
							var project = $("#project").val().trim();
							//alert("submit"+country+"---"+project);
							window.parent.setiframeSrc(country, project);
						}
						function checkProject() {
							var country = $("#country").val().trim();
							var CanadaArray = [
								'加拿大联邦EE快速通道',
								'萨省提名技术移民SINP',
								'新斯科舍省提名技术移民NSNP',
								'魁北克省技术移民QSW',
								'安省提名技术移民OINP',
								'新不伦瑞克省提名技术移民NBPNP'
							];
							var AustralianArray = ['189独立技术移民', '190州担保技术移民'];
							if (country == '加拿大') {
								$("#project").empty();

								$("#project").prepend("<option value=''>请选择项目</option>");
								for (var i = 0; i < CanadaArray.length; i++) {
									$("#project").append("<option value='" + CanadaArray[i] + "'>" + CanadaArray[i] + "</option>");
								}

							} else if (country == '澳大利亚') {
								$("#project").empty();
								$("#project").prepend("<option value=''>请选择项目</option>");
								for (var i = 0; i < AustralianArray.length; i++) {
									$("#project").append("<option value='" + AustralianArray[i] + "'>" + AustralianArray[i] + "</option>");
								}
							} else if (country == '') {
								$("#project").empty();
								$("#project").prepend("<option value=''>请选择项目</option>");
								for (var i = 0; i < CanadaArray.length; i++) {
									$("#project").append("<option value='" + CanadaArray[i] + "'>" + CanadaArray[i] + "</option>");
								}
								for (var i = 0; i < AustralianArray.length; i++) {
									$("#project").append("<option value='" + AustralianArray[i] + "'>" + AustralianArray[i] + "</option>");
								}
							} else if (country == '美国') {
								$("#project").empty();
								$("#project").prepend("<option value=''>暂无可选项目</option>");
							}

						}
					</script>
					<style>
						/*去除选择框的outline*/
						#countryDiv button:focus {
							outline: none !important;
						}
						#projectDiv button:focus {
							outline: none !important;
						}
						option {
							color: #333333;
						}
						#nav1 {
							width: 100%;
						}
						.col1-1 {
							margin-top: 238px;
							text-align: center;
						}
						.col1-1 span {
							/* margin-left: 15px; */
						}
						.col1-2 {
							margin-top: 20px;
							font-size: 14px;
							text-align: center;
						}
						.col1-2 span {
							color: #17a2d3;
						}
						.row {
							font-family: "pingfang" !important;
						}

						@media screen and (max-width: 400px) {
							.tp-bgimg {
								background-position: 70% center !important;
							}
						}
						@media screen and (max-width: 820px) {
							#querybar {
								bottom: 0 !important;
							}
						}
					</style>
					<body class="font-raleway">

						<!-- LOADER -->
						<div id="loader-overflow">
							<div id="loader3" class="loader-cont">Please enable JS</div>
						</div>

						<div id="wrap" class="boxed ">
							<div class="grey-bg">
								<!-- Grey BG -->

								<!--[if lte IE 8]> <div id="ie-container"> <div id="ie-cont-close"> <a href='#' onclick='javascript&#058;this.parentNode.parentNode.style.display="none"; return false;'><img src='images/ie-warn/ie-warning-close.jpg' style='border: none;'
								alt='Close'></a> </div> <div id="ie-cont-content" > <div id="ie-cont-warning"> <img src='images/ie-warn/ie-warning.jpg' alt='Warning!'> </div> <div id="ie-cont-text" > <div id="ie-text-bold"> You are using an outdated browser </div> <div
								id="ie-text"> For a better experience using this site, please upgrade to a modern web browser. </div> </div> <div id="ie-cont-brows" > <a href='http://www.firefox.com' target='_blank'><img src='images/ie-warn/ie-warning-firefox.jpg' alt='Download
								Firefox'></a> <a href='http://www.opera.com/download/' target='_blank'><img src='images/ie-warn/ie-warning-opera.jpg' alt='Download Opera'></a> <a href='http://www.apple.com/safari/download/' target='_blank'><img
								src='images/ie-warn/ie-warning-safari.jpg' alt='Download Safari'></a> <a href='http://www.google.com/chrome' target='_blank'><img src='images/ie-warn/ie-warning-chrome.jpg' alt='Download Google Chrome'></a> </div> </div> </div> <![endif]-->

								<!-- HEADER 1 FONT WHITE TRANSPARENT -->
								<div class="header-black-bg"></div>
								<!-- NEED FOR TRANSPARENT HEADER ON MOBILE -->
								<header id="nav1" class="header header-1 header-black affix">
									<div class="header-wrapper">
										<div class="container-m-30 clearfix">
											<div class="logo-row">

												<!-- LOGO -->
												<div class="logo-container-2">
													<div class="logo-2">
														<a href="/kukoo/homePage" class="clearfix">
															<img src="<%=basePath %>elementy/images/logo-white.svg" class="logo-img" alt="Logo"></a>
														</div>
													</div>
													<!-- BUTTON -->
													<div class="menu-btn-respons-container">
														<button id="menu-btn" type="button" class="navbar-toggle btn-navbar collapsed" data-toggle="collapse" data-target="#main-menu .navbar-collapse">
															<span aria-hidden="true" class="icon_menu hamb-mob-icon"></span>
														</button>
													</div>
												</div>
											</div>

											<!-- MAIN MENU CONTAINER -->
											<div class="main-menu-container">

												<div class="container-m-30 clearfix">

													<!-- MAIN MENU -->
													<div id="main-menu" class="font-raleway">
														<div class="navbar navbar-default" role="navigation">

															<!-- MAIN MENU LIST -->
															<nav class="collapse collapsing navbar-collapse right-1024">
																<ul class="nav navbar-nav">

																	<!-- MENU ITEM -->
																	<!-- <li class="parent current"><a href="#" class="open-sub"><div class="main-menu-title">Home</div></a> <ul class="sub"> <li class="parent"><a class="current open-sub" href="#">Home</a> <ul class="sub"> <li><a href="index.html">Home 1</a></li>
																	<li><a href="index2.html">Home 2</a></li> <li><a href="index3.html">Home 3</a></li> <li><a href="index4.html">Home 4</a></li> <li><a href="index5.html">Home 5</a></li> <li><a href="index6.html">Home 6</a></li> <li><a href="index7.html">Home
																	7</a></li> <li><a href="index8.html">Home 8</a></li> <li><a class="current" href="index9.html">Home 9</a></li> <li><a href="index10.html">Home 10</a></li> <li><a href="index-center.html">Home 11 <span class="label-new">NEW</span></a></li> <li><a
																	href="index-sticky-header-on-mobile.html">Home 12 <span class="label-new">NEW</span> </a></li> <li><a href="index-hiding-logo-header.html">Home 13 <span class="label-new">NEW</span> </a></li> </ul></li> <li class="parent"><a href="#"
																	class="open-sub">Blog</a> <ul class="sub"> <li><a href="index-blog.html">Blog Layout 1</a></li> <li><a href="index-blog2.html">Blog Layout 2</a></li> </ul></li> <li class="parent"><a href="#" class="open-sub">Landing</a> <ul class="sub"> <li><a
																	href="index-landing.html">Landing 1</a></li> <li><a href="index-landing2.html">Landing 2</a></li> <li><a href="index-landing3.html">Landing 3</a></li> <li><a href="index-landing-left.html">Landing 4 <span class="label-new">NEW</span> </a></li> <li><a
																	href="index-landing-app.html">App Landing</a></li> </ul></li> <li class="parent"><a href="#" class="open-sub">Minimal Menu</a> <ul class="sub"> <li><a href="index-side-menu.html">Side Menu</a></li> <li><a href="index-full-screen-menu.html">Fullscreen
																	Menu</a></li> <li><a href="index-full-screen-menu-sub.html">Fullscreen Menu Sub</a></li> </ul></li> <li class="parent"><a href="#" class="open-sub">Finance</a> <ul class="sub"> <li><a href="index-finance.html">Finance</a></li> <li><a
																	href="index-finance2.html">Finance 2</a></li> </ul></li> <li class="parent"><a href="#" class="open-sub">Construction</a> <ul class="sub"> <li><a href="index-construction.html">Construction</a></li> <li><a href="index-construction2.html">Construction
																	2</a></li> </ul></li> <li><a href="index-portfolio.html">Portfolio</a></li> <li><a href="index-photo.html">Photo</a></li> <li><a href="index-shop.html">Shop</a></li> <li><a href="index-cars.html">Car Tuning</a></li> <li><a href="about-me.html">About
																	Me</a></li> <li><a href="index-travel.html">Travel</a></li> <li><a href="index-magazine.html">Magazine</a></li> <li><a href="intro.html#one-pages">One Page</a></li> </ul></li> -->

																	<!-- MENU ITEM -->
																	<li class="parent megamenu">
																		<a href="/kukoo/homePage" class="">
																			<div class="main-menu-title">首页</div>
																		</a>
																	</li>

																	<!-- MENU ITEM -->
																	<li class="parent megamenu">
																		<a href="/kukoo/list/lists" class="">
																			<div class="main-menu-title">移民项目</div>
																		</a>
																	</li>

																	<!-- MENU ITEM -->
																	<li class="parent megamenu">
																		<a href="/kukoo/list/cases" class="">
																			<div class="main-menu-title">移友足迹</div>
																		</a>
																	</li>

																	<!-- MENU ITEM -->
																	<%-- <li class="parent megamenu">
																		<a href="/kukoo/timeline" class="">
																			<div class="main-menu-title">申报移民流程</div>
																		</a>
																	</li> --%>

																		<!-- MENU ITEM -->
																		<li class="parent megamenu">
																			<a href="/kukoo/markingOLController/showMarkingOL" class="">
																				<div class="main-menu-title">在线评估</div>
																			</a>
																		</li>
																	</ul>

																</nav>

															</div>
														</div>
														<!-- END main-menu -->

													</div>
													<!-- END container-m-30 -->

												</div>
												<!-- END main-menu-container -->

												<!-- SEARCH READ DOCUMENTATION 首页搜索功能 注释掉 <ul class="cd-header-buttons"> <li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li> </ul>-->
												<!-- cd-header-buttons 首页搜索功能 注释掉 <div id="cd-search" class="cd-search"> <form class="form-search" id="searchForm" action="page-search-results.html" method="get"> <input type="text" value="" name="q" id="q" placeholder="Search..."> </form> </div> -->
											</div>
											<!-- END header-wrapper -->

										</header>

										<!-- SLIDER Revo Hero 1 FONT MONTSERRAT -->
										<div class="relative">
											<div id="header">
												<div class="rev_slider_wrapper fullscreen-container" id="rev_slider_280_1_wrapper" style="background-color: #fff; padding: 0px;">
													<!-- START REVOLUTION SLIDER 5.1.4 fullscreen mode -->
													<div class="rev_slider fullscreenbanner" data-version="5.1.4" id="rev_slider_280_1" style="display: none;">
														<ul>
															<!-- SLIDE -->
															<li
																data-description=""
																data-easein="Power2.easeInOut"
																data-easeout="default"
																data-index="rs-898"
																data-masterspeed="1500"
																data-param1=""
																data-param10=""
																data-param2=""
																data-param3=""
																data-param4=""
																data-param5=""
																data-param6=""
																data-param7=""
																data-param8=""
																data-param9=""
																data-rotate="0"
																data-saveperformance="off"
																data-slotamount="default"
																data-title="Slide"
																data-transition="fade">
																<!-- MAIN IMAGE -->
																<img alt="img" class="rev-slidebg" data-bgparallax="12" data-bgposition="center center" data-duration="30000" data-ease="Linear.easeNone" data-no-retina="" src="<%=basePath %>elementy/images/revo-slider/index18-3.jpeg">
																	<!-- LAYERS -->
																	<!-- LAYER NR. 1 data-fontsize="['90','85','80','55']"-->
																	<div
																		class="tp-caption font-raleway font-white tp-resizeme rs-parallaxlevel-6"
																		id="slide-898-layer-1"
																		style="z-index: 8; white-space: nowrap;color:#17a2d3 !important"
																		data-fontsize="['60','57','53','37']"
																		data-fontweight="100"
																		data-height="none"
																		data-lineheight="['105','100','95','70']"
																		data-responsive_offset="on"
																		data-splitin="none"
																		data-splitout="none"
																		data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":100,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
																		data-whitespace="nowrap"
																		data-width="none"
																		data-x="['left','left','left','left']"
																		data-hoffset="['40','40','40','20']"
																		data-y="['center','center','center','center']"
																		data-voffset="['-100','-90','-80','-60']">我是丁丁妈妈
																	</div>
																	<!-- LAYER NR. 2 -->
																	<div
																		class="tp-caption font-raleway font-black tp-resizeme rs-parallaxlevel-6"
																		id="slide-898-layer-2"
																		style="z-index: 8; white-space: nowrap;"
																		data-fontsize="['21','21','20','14']"
																		data-fontweight="100"
																		data-height="none"
																		data-lineheight="['21','21','20','14']"
																		data-responsive_offset="on"
																		data-splitin="none"
																		data-splitout="none"
																		data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":300,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
																		data-whitespace="nowrap"
																		data-width="none"
																		data-x="['left','left','left','left']"
																		data-hoffset="['40','40','40','20']"
																		data-y="['center','center','center','center']"
																		data-voffset="['0','0','0','0']">来到蒙特利尔生活后，我们和孩子体会到了不同的世界</div>
																	<!-- LAYER NR. 3 -->
																	<div
																		class="tp-caption font-raleway font-black tp-resizeme rs-parallaxlevel-6"
																		id="slide-898-layer-3"
																		style="z-index: 8; white-space: nowrap;"
																		data-fontsize="['21','21','20','14']"
																		data-fontweight="100"
																		data-height="none"
																		data-lineheight="['21','21','20','14']"
																		data-responsive_offset="on"
																		data-splitin="none"
																		data-splitout="none"
																		data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
																		data-whitespace="nowrap"
																		data-width="none"
																		data-x="['left','left','left','left']"
																		data-hoffset="['40','40','40','20']"
																		data-y="['center','center','center','center']"
																		data-voffset="['30','27','25','20']">原本内向的丁丁爱上了这里丰富多彩的学校生活</div>

																	<div
																		class="tp-caption font-raleway font-black tp-resizeme rs-parallaxlevel-6"
																		id="slide-898-layer-3"
																		style="z-index: 8; white-space: nowrap;"
																		data-fontsize="['21','21','20','14']"
																		data-fontweight="100"
																		data-height="none"
																		data-lineheight="['21','21','20','14']"
																		data-responsive_offset="on"
																		data-splitin="none"
																		data-splitout="none"
																		data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
																		data-whitespace="nowrap"
																		data-width="none"
																		data-x="['left','left','left','left']"
																		data-hoffset="['40','40','40','20']"
																		data-y="['center','center','center','center']"
																		data-voffset="['60','54','50','40']">还结交了一群打冰球的好朋友</div>

																	<div
																		class="tp-caption font-raleway font-black tp-resizeme rs-parallaxlevel-6"
																		id="slide-898-layer-3"
																		style="z-index: 8; white-space: nowrap;"
																		data-fontsize="['21','21','20','14']"
																		data-fontweight="100"
																		data-height="none"
																		data-lineheight="['21','21','20','14']"
																		data-responsive_offset="on"
																		data-splitin="none"
																		data-splitout="none"
																		data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
																		data-whitespace="nowrap"
																		data-width="none"
																		data-x="['left','left','left','left']"
																		data-hoffset="['40','40','40','20']"
																		data-y="['center','center','center','center']"
																		data-voffset="['90','81','75','60']">我们还有很多移民后的收获，可以慢慢讲给你听</div>
																</li>
															</ul>
															<div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
														</div>
													</div>
													<!-- END REVOLUTION SLIDER -->
													<!-- querybar add by szy start -->
													<div id="querybar" class="booking-row content-padding-xs" style="display:none">
														<div class="container">
															<div class="row">
																<form id="booking-form" role="form" action="/kukoo/list/lists" method="POST">
																	<div class="col-md-4 col-sm-1"></div>

																	<div id="countryDiv" class="col-md-3 col-sm-4 icon-arrow">
																		<!-- <label class="sr-only" for="country">country</label> -->
																		<select id="country" name="country" class="form-control" onchange="checkProject()">
																			<option value="">请选择国家</option>
																			<option value="加拿大">加拿大</option>
																			<option value="澳大利亚">澳大利亚</option>
																			<option value="美国">美国</option>
																		</select>
																	</div>
																	<div id="projectDiv" class="col-md-3 col-sm-4 icon-arrow">
																		<!-- <label class="sr-only" for="project">project</label> -->
																		<select id="project" name="project" class="form-control">
																			<option value="">请选择项目</option>
																		</select>
																	</div>
																	<div class="col-md-2 col-sm-3">
																		<input type="submit" class="btn btn-primary btn-block" value="查询"></div>

																	</form>
																</div>
															</div>
														</div>
														<!-- querybar add by szy end -->
														<!-- SCROLL ICON -->
														<div class="local-scroll-cont font-white">
															<a href="#about" class="scroll-down smooth-scroll">
																<div class="icon icon-arrows-down"></div>
															</a>
														</div>
													</div>
												</div>

												<!-- FEATURES 13 OUR SERVICES FONT RALEWAY -->

												<div class="page-section bg-white">
													<div class="container">

														<div class="row">
															<br/>
															<br/>
														</div>
														<!-- TABS CONTENT & IMAGES -->
														<div class="row">

															<!-- TABS CONTENT -->
															<div class="col-md-6">
																<div class="fes14-tab-content tab-content" style="padding-bottom: 100px;">

																	<!-- TAB 1 -->
																	<div class="tab-pane fade in active" id="web-design">
																		<h1 class="fes14-tab-title font-montserrat">
																			<strong style="font-size: 50px;">在线移民评估工具</strong>
																		</h1>
																		<h2 class="fes14-tab-sub-title font-montserrat">
																			<strong style="font-size: 16px;">超过75.4%的中产阶级符合移民条件，而了解到自己能够移民的不超过4%</strong>
																		</h2>
																		<p class="fes14-tab-text">
																			大部分中青年中产阶级都可以匹配到适合自己的低成本移民项目
																			<br/>
																			不要因为不了解政策错失机会
																			<br/>
																			<br/>
																			KUKOO开发的在线移民评估工具
																			<br>3分钟 评估符合您的移民项目
																			</p>
																			<div class="fes12-btn-cont mt-30">
																				<a class="button medium thin gray" href="javascript:void(0)">
																					<strong>测一下可以申请哪些移民项目</strong>
																				</a>
																			</div>
																		</div>

																	</div>
																</div>

																<!-- IMAGES -->
																<div class="col-md-6 fes9-img-cont clearfix" style="padding-bottom: 30px;">
																	<div class="fes9-img-center clearfix">

																		<%-- <embed src="<%=basePath %>elementy/svg/firstpage-people.svg" width="100%" style="margin-top: 60px;" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/> --%>
																			<img src="<%=basePath %>elementy/png/firstpage-people.png" width="100%" style="margin-top: 60px;" alt="">
																				<div class="col1-1">
																					<span>蓝领技工</span>
																					<span style="margin: 0 75px;">白领职员</span>
																					<span>中小企业家</span>
																				</div>
																				<div class="col1-2">
																					教育背景 + 语言水平 + 少量资金 =
																					<span>全家移民</span>
																				</div>
																			</div>

																		</div>
																	</div>
																</div>
															</div>

															<%-- 2 --%>
																<div class="page-section bg-gray">
																	<div class="container">

																		<!-- TABS NAV -->
																		<div class="row">
																			<div class="col-md-12">

																				<ul class="fes14-nav-tabs nav nav-tabs bootstrap-tabs pull-right" style="margin-right: 30px;">
																					<li>
																						<a href="#development-tab" class="fes14-nav-a" data-toggle="tab">
																							<div class="tab-nav-icon icon icon-basic-archive-full"></div>
																							<div class="tab-nav-text font-montserrat">移友数据</div>
																						</a>
																					</li>
																					<li>
																						<a href="#ui-design" class="fes14-nav-a" data-toggle="tab">
																							<div class="tab-nav-icon icon icon-software-horizontal-align-center"></div>
																							<div class="tab-nav-text font-montserrat">经验交流</div>
																						</a>
																					</li>
																					<li>
																						<a href="#branding-tab" class="fes14-nav-a" data-toggle="tab">
																							<div class="tab-nav-icon icon icon-ecommerce-diamond"></div>
																							<div class="tab-nav-text font-montserrat">移民生活</div>
																						</a>
																					</li>
																				</ul>

																			</div>
																		</div>

																		<!-- TABS CONTENT & IMAGES -->
																		<div class="row">

																			<!-- TABS CONTENT -->
																			<div class="col-md-6 pull-right">
																				<div class="fes14-tab-content tab-content" style="padding-bottom: 100px;">

																					<!-- TAB 1 -->
																					<div class="tab-pane fade in active" id="web-design">
																						<h1 class="fes14-tab-title font-montserrat">
																							<strong style="font-size: 50px;">移路同行才能走得更远</strong>
																						</h1>
																						<h2 class="fes14-tab-sub-title font-montserrat">
																							<strong style="font-size: 16px;">参考移友过往申请进程 分享交流移民申请经验</strong>
																						</h2>
																						<p class="fes14-tab-text">
																							全面参考移友真实申请案例及申请进度<br/>
																							与移民同路人分享交流移民申<br/>
																							与新老移民及时分享海外生活信息
																						</p>
																						<div class="fes12-btn-cont mt-30">
																							<a class="button medium thin gray pull-left" href="javascript:void(0)">
																								<strong>看一下移友过往申请进程</strong>
																							</a>

																							<div class="pull-left" style="margin-left:20px;">
																								<embed src="<%=basePath %>elementy/svg/firstpage-erweima.svg" width="45px" height="45px" style="" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/>
																							</div>
																							<div class="pull-left" style="margin-left: 15px;height: 45px;line-height: 75px; font-size: 12px;">
																								扫描二维码立即加入移民同路人交流群</div>
																						</div>
																					</div>

																				</div>
																			</div>

																			<!-- IMAGES -->
																			<div class="col-md-6 fes9-img-cont clearfix">
																				<div class="fes9-img-center clearfix ml-20">
																					<%-- <embed src="<%=basePath %>elementy/svg/first-timeline.svg" width="100%" style="margin-top: 60px;" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/> --%>
																						<img src="<%=basePath %>elementy/png/first-timeline.png" alt="" style="margin-top: 60px;"></div>

																					</div>
																				</div>
																			</div>

																			<%-- 3 --%>
																				<div class="page-section bg-white">
																					<div class="container">

																						<!-- TABS NAV -->
																						<div class="row">
																							<div class="col-md-12">

																								<ul class="fes14-nav-tabs nav nav-tabs bootstrap-tabs">
																									<li>
																										<a href="#web-design" class="fes14-nav-a" data-toggle="tab">
																											<div class="tab-nav-icon icon icon-basic-laptop"></div>
																											<div class="tab-nav-text font-montserrat">在线跟进办理</div>
																										</a>
																									</li>
																									<li>
																										<a href="#graphic-design" class="fes14-nav-a" data-toggle="tab">
																											<div class="tab-nav-icon icon icon-basic-sheet-pen"></div>
																											<div class="tab-nav-text font-montserrat">申请状态查询</div>
																										</a>
																									</li>
																									<li>
																										<a href="#development-tab" class="fes14-nav-a" data-toggle="tab">
																											<div class="tab-nav-icon icon icon-basic-archive-full"></div>
																											<div class="tab-nav-text font-montserrat">资料系统管理</div>
																										</a>
																									</li>
																								</ul>

																							</div>
																						</div>

																						<!-- TABS CONTENT & IMAGES -->
																						<div class="row">

																							<!-- TABS CONTENT -->
																							<div class="col-md-6">
																								<div class="fes14-tab-content tab-content" style="padding-bottom: 100px;">

																									<!-- TAB 1 -->
																									<div class="tab-pane fade in active" id="web-design">
																										<h1 class="fes14-tab-title font-montserrat">
																											<strong style="font-size: 50px;">互联网化的流程管理系统</strong>
																										</h1>
																										<h2 class="fes14-tab-sub-title font-montserrat">
																											<strong style="font-size: 16px;">申请过程管理有序 申请状态一目了然</strong>
																										</h2>
																										<p class="fes14-tab-text">
																											移民申请一般周期较长，申请人通常缺乏对申请过程及资料文档的持续有序管理<br/>
																											从而产生材料提交不一致，或移民局反馈情况掌握不及时等问题，导致申请失败<br/>
																											<br/>
																											KUKOO结合过往丰富的申请经验，开发了互联网化的移民流程管理系统<br/>
																											有效保障移民申请过程的有序管理，以及移民申请状态的公开透明<br/>
																										</p>
																										<div class="fes12-btn-cont mt-30">
																											<a class="button medium thin gray" href="javascript:void(0)">
																												<strong>开发中</strong>
																											</a>
																										</div>
																									</div>

																								</div>
																							</div>

																							<!-- IMAGES -->
																							<div class="col-md-6 fes9-img-cont clearfix">
																								<div class="fes9-img-center clearfix">
																									<embed src="<%=basePath %>elementy/svg/firstpage-tv.svg" width="100%" style="margin-top: 60px;" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/>
																								</div>

																							</div>
																						</div>
																					</div>

																					<!-- VIEW MORE PROJECTS -->
																					<!-- <div class="port-view-more-cont"> <a class="port-view-more font-raleway bg-gray-light" href="portfolio-masonry-4col.html">View All Projects</a> </div> -->
																					<!-- END PORTFOLIO SECTION -->

																					<!-- FOOTER 4 BLACK FONT RALEWAY -->
																					<%@include file="/WEB-INF/pages/base/footer.jsp"%>
																					</div>
																					<!-- End BG -->
																				</div>
																				<!-- End wrap -->

																				<!-- JS begin -->
																				<!-- SLIDER REVOLUTION INITIALIZATION -->
																				<script>
																					jQuery(document).ready(function () {

																						jQuery("#rev_slider_280_1").show().revolution({
																							sliderType: "hero",
																							jsFileLocation: "revo-slider/js/",
																							sliderLayout: "fullscreen",
																							dottedOverlay: "none",
																							delay: 9000,
																							/*navigation: {},*/
																							responsiveLevels: [
																								1240, 1024, 778, 480
																							],
																							visibilityLevels: [
																								1240, 1024, 778, 480
																							],
																							gridwidth: [
																								1240, 1024, 778, 480
																							],
																							gridheight: [
																								868, 768, 960, 720
																							],
																							lazyType: "none",
																							parallax: {
																								type: "off",
																								origo: "slidercenter",
																								speed: 1000,
																								levels: [0],
																								type: "scroll",
																								disable_onmobile: "on"
																							},
																							shadow: 0,
																							spinner: "spinner2",
																							autoHeight: "off",
																							fullScreenAutoWidth: "off",
																							fullScreenAlignForce: "off",
																							fullScreenOffsetContainer: "",
																							fullScreenOffset: "",
																							disableProgressBar: "on",
																							hideThumbsOnMobile: "off",
																							hideSliderAtLimit: 0,
																							hideCaptionAtLimit: 0,
																							hideAllCaptionAtLilmit: 0,
																							debugMode: false,
																							fallbacks: {
																								simplifyAll: "off",
																								disableFocusListener: false
																							}
																						});

																						//$("#nav").attr('class', "header header-1 header-black affix"); $(window).scrollTop(1);

																					});/*ready*/
																				</script>
																				<!-- JS end -->

																			</body>

																		</html>
