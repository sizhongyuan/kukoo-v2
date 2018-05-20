<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/pages/base/head.jsp"%>

		<html>
			<head>
				<!-- <link rel="icon" href="../../favicon.ico"> -->
				<title>布谷移民——项目列表</title>

				<style type="text/css">
					#color {
						background-color: #dfdfdf;
					}
					#icon-color {
						background-color: #f3f3f3;
					}
					.cd-timeline-img.cd-picture {
						background: #dfdfdf;
						text-align: center;
						font-size: 24px;
						padding-top: 16px;
						color: #ffea00;
					}
				</style>
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
						<!-- Grey BG -->

						<!--[if lte IE 8]> <div id="ie-container"> <div id="ie-cont-close"> <a href="#" onclick="javascript&#058;this.parentNode.parentNode.style.display="none"; return false;"><img src="images/ie-warn/ie-warning-close.jpg" style="border: none;"
						alt="Close"></a> </div> <div id="ie-cont-content" > <div id="ie-cont-warning"> <img src="images/ie-warn/ie-warning.jpg" alt="Warning!"> </div> <div id="ie-cont-text" > <div id="ie-text-bold"> You are using an outdated browser </div> <div
						id="ie-text"> For a better experience using this site, please upgrade to a modern web browser. </div> </div> <div id="ie-cont-brows" > <a href="http://www.firefox.com" target="_blank"><img src="images/ie-warn/ie-warning-firefox.jpg" alt="Download
						Firefox"></a> <a href="http://www.opera.com/download/" target="_blank"><img src="images/ie-warn/ie-warning-opera.jpg" alt="Download Opera"></a> <a href="http://www.apple.com/safari/download/" target="_blank"><img
						src="images/ie-warn/ie-warning-safari.jpg" alt="Download Safari"></a> <a href="http://www.google.com/chrome" target="_blank"><img src="images/ie-warn/ie-warning-chrome.jpg" alt="Download Google Chrome"></a> </div> </div> </div> <![endif]-->

						<!-- HEADER 1 FONT BLACK TRANSPARENT -->
						<header id="nav" class="header header-1 bg-gray">
							<div class="header-wrapper">
								<div class="container-m-30 clearfix">
									<div class="logo-row">

										<!-- LOGO -->
										<div class="logo-container-2">
											<div class="logo-2">
												<a href="/kukoo/homePage" class="clearfix">
													<img src="<%=basePath%>elementy/images/logo.svg" class="logo-img" alt="Logo"></a>
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
											<div id="main-menu">
												<div class="navbar navbar-default" role="navigation">

													<!-- MAIN MENU LIST -->
													<nav class="collapse collapsing navbar-collapse right-1024">
														<ul class="nav navbar-nav">
															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/homePage" class="">
																	<div class="main-menu-title">首页</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/list/lists" class="">
																	<div class="main-menu-title">项目列表</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/list/cases" class="">
																	<div class="main-menu-title">案例列表</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/timeline" class="">
																	<div class="main-menu-title">申报移民流程</div>
																</a>
															</li>

															<!-- MENU ITEM -->
															<li class="parent megamenu">
																<a href="/kukoo/markingOLController/showMarkingOL" class="">
																	<div class="main-menu-title">答题</div>
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

									<!-- SEARCH READ DOCUMENTATION 搜索功能 注释掉 <ul class="cd-header-buttons"> <li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li> </ul>-->
									<!-- cd-header-buttons 搜索功能 注释掉 <div id="cd-search" class="cd-search"> <form class="form-search" id="searchForm" action="page-search-results.html" method="get"> <input type="text" value="" name="q" id="q" placeholder="Search..."> </form> </div>-->

								</div>
								<!-- END header-wrapper -->

							</header>
							<!-- PAGE TITLE LARGE 2 GRAY -->
							<div class="page-title-cont page-title-large2-cont bg-gray" style="padding-top: 10px;">
								<div class="relative container align-left">
									<div class="row">

										<div class="col-md-8">
											<h1 class="local-page-title">申报移民流程</h1>
										</div>

										<div class="col-md-4">
											<div class="breadcrumbs2 font-poppins">
												<!-- <a class="a-inv" href="index.html">home</a> <span class="slash-divider">/</span> -->
												<span class="bread-current">共10步</span>
											</div>
										</div>

									</div>
								</div>
							</div>

							<div class="container bs-docs-container p-140-cont" style="padding-top: 30px;">
								<div class="row">
									<!-- TIMELINE -->
									<div class="heading-underline h3-line">
										<h3 class="mb-40">时间轴</h3>
									</div>
									<section id="cd-timeline" class="cd-container mb-100">
										<div class="cd-timeline-start">
											<div class="cd-timeline-start-caption">申请移民流程</div>
											<div class="cd-timeline-start-date">步骤简介</div>
										</div>
										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture" id="icon-color">
												<span aria-hidden="true" class="icon_house_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content">
												<h2>省提名材料准备</h2>
												<div>省提名EE项目需要先注册EE账号， EE申请只需要填写申请人个人身份信息，学历信息， 工作信息，语言成绩，不需要上传相关文件。提交后有EE号码，用于申请省提名时候省政府匹配 档案。同时准备全套的省提名申请材料如：身份文件，学历文件，工作文件，资金证明，定居计 划等。</div>
												<span class="cd-date">
													<span class="cd-date-year">1个月</span>
													<span class="cd-date-month">20个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture">
												<span aria-hidden="true" class="icon_cloud_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content" id="color">
												<h2>在线递交省提名申请</h2>
												<p>加拿大萨省、NS省都有名额限制，并且是抢名额制度，都是不定期开放，需要随时关注动态， 不同省份，提交方式不同：萨省可以提前将申请资料上传系统；NS省要开放名额时候才能上传相关 申请文件提交申请；安省和NB省需要等待邀请，然后提交申请文件。</p>
												<span class="cd-date">
													<span class="cd-date-year">发放名额时间不定</span>
													<span class="cd-date-month">20个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture" id="icon-color">
												<span aria-hidden="true" class="icon_heart_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content">
												<h2>补料</h2>
												<p>递交省提名资料后，中途可能需要补料，补料信通过发email给申请人，一般补料期限2周 到30天左右，常见的补料文件有更新资金文件或者资金解释，进一步补充工作相关文件，更新 定居计划。补料文件准备好通过email发送给省移民部。</p>
												<span class="cd-date">
													<span class="cd-date-year">2个月</span>
													<span class="cd-date-month">3个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture">
												<span aria-hidden="true" class="icon_gift_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content" id="color">
												<h2>获得省提名</h2>
												<p>资料齐全的话，审理周期三个月左右，审理期间可能有背景调查，比如联系推荐人 核实工作背景，也可能电话询问申请人核实情况。调查结束一般很快发提名信。</p>
												<span class="cd-date">
													<span class="cd-date-year">3个月</span>
													<span class="cd-date-month">0个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture" id="icon-color">
												<span aria-hidden="true" class="icon_archive_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content">
												<h2>递交联邦阶段签证申请</h2>
												<p>非EE省提名项目后期联邦签证阶段是递交纸质材料到加拿大境内CIO， 全套纸质资料包括身份文件，学历文件，工作文件，资金证明等，提交申请 时候需要支付申请费（主副申请各自550加币，每个子女150加币），登录 费可以一起提交（每个成人490加币），费用可以在线信用卡支付，也可以办 理汇票支付。</p>
												<span class="cd-date">
													<span class="cd-date-year">1个月</span>
													<span class="cd-date-month">20个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture">
												<span aria-hidden="true" class="icon_house_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content" id="color">
												<h2>档案号</h2>
												<div>一般签证申请资料递交CIO后2个月左右，CIO审核资料完整性，然后会通过email 给申请人发UCI档案号码，收到档案号后可以关联在线My Link Application，这样通 过在线系统查看申请状态；或者通过CIC网站查询申请状态。以后询问申请进度都需要备注 档案号。</div>
												<span class="cd-date">
													<span class="cd-date-year">2个月</span>
													<span class="cd-date-month">0个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture" id="icon-color">
												<span aria-hidden="true" class="icon_cloud_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content">
												<h2>第二次补料</h2>
												<p>CIO给申请人发UCI号码后，会把案子转到申请人所在国家使馆进一步处理， 中国申请人转到加拿大香港使馆，香港使馆一般有个通用的补料信，比如是否递 交户口公证、出生公证、无犯罪公证、登录费等，基本上文件之前都递交CIO了， 需要申请人再次确认哪些没有递交。</p>
												<span class="cd-date">
													<span class="cd-date-year">2个月</span>
													<span class="cd-date-month">3个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture">
												<span aria-hidden="true" class="icon_heart_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content" id="color">
												<h2>体检信</h2>
												<p>申请人收到体检通知后，需要在30天内完成体检。必须到加拿大移民局指定的体检医院去 体检，世界各地任何一家指定的体检医院都可以。主要是检查重大传染性疾病，如：性病、艾 滋病、肺结核、还有恶性肿瘤等，子女根据年龄不同检查项目不同，费用也不同。体检结果由 医院直接上传到加拿大移民系统。如果体检异常的话，医院会单独通知申请人，体检正常的话 ，不会通知申请人。</p>
												<span class="cd-date">
													<span class="cd-date-year">3个月</span>
													<span class="cd-date-month">0个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture" id="icon-color">
												<span aria-hidden="true" class="icon_gift_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content">
												<h2>取签信</h2>
												<p>收到取签信后，需要在30天内把所有申请人的护照递交到签证中心，中国大陆申请人递 交到加拿大北京签证中心，港澳台申请人需要把护照递交到香港签证中心，加拿大境内申请 人需要递交护照到渥太华使馆。递交不同签证中心处理速度不同，最快一周，最慢8周。</p>
												<span class="cd-date">
													<span class="cd-date-year">6个月</span>
													<span class="cd-date-month">0个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-block">
											<div class="cd-timeline-img cd-picture">
												<span aria-hidden="true" class="icon_archive_alt"></span>
											</div>
											<!-- cd-timeline-img -->

											<div class="cd-timeline-content" id="color">
												<h2>贴签证</h2>
												<p>护照递交签证中心后，会给一个tracking no，根据这个跟踪号码可以登录网站查询护照 状态，如果状态显示in process，那就是还没有贴签完成，如果状态显示dispatched，说明 护照已经寄送出来，一般两天就能收到大信封（里面包括贴签护照，移民纸和移民说明）</p>
												<span class="cd-date">
													<span class="cd-date-year">1.5个月</span>
													<span class="cd-date-month">3个<i aria-hidden="true" class="fa fa-file-o"></i>
													</span>
												</span>
											</div>
											<!-- cd-timeline-content -->
										</div>
										<!-- cd-timeline-block -->

										<div class="cd-timeline-start cd-final">
											<div class="cd-timeline-start-caption">祝移民成功</div>
										</div>
									</section>
									<!-- cd-timeline -->
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
							$(document).ready(function () {

								//NAV SIDEBAR------------------------------------------------------------------
								var top_offset = $('header').height() - 1; // get height of fixed navbar

								$('#nav-sidebar').onePageNav({
									currentClass: 'current',
									changeHash: false,
									scrollSpeed: 700,
									scrollOffset: top_offset,
									scrollThreshold: 0.5,
									filter: '',
									easing: 'swing',
									begin: function () {
										//I get fired when the animation is starting
									},
									end: function () {
										//I get fired when the animation is ending
									},
									scrollChange: function ($currentListItem) {
										//I get fired when you enter a section and I pass the list item of the section
									}
								});

								//SIDEBAR STICKY--------------------------------------------- offsetSb = $('.page-title-bg').height(),
								var offsetFooter = $('#footer-offset').height() + 30;
								// DM Menu
								jQuery('#sidebar-stiky').affix({
									offset: {
										top: 390, //top offset for header 1 for others headers it will have other value
										bottom: offsetFooter
									}
								});

							});
						</script>

						<!-- JS end -->
					</body>

				</html>
