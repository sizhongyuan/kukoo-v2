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
						<style media="screen">
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
					</head>
					<div id="loader-overflow">
						<div id="loader3" class="loader-cont">Please enable JS</div>
					</div>

					<div id="wrap" class="boxed ">
						<div class="grey-bg">
							<!-- Grey BG -->
							<!-- HEADER 1 FONT WHITE TRANSPARENT -->
							<div class="header-black-bg"></div>
							<!-- NEED FOR TRANSPARENT HEADER ON MOBILE -->

							<pg-header homepage="1" class="pg-header header-black affix" id="nav1"></pg-header>

							<!-- SLIDER Revo Hero 4 -->
							<div class="relative">

								<div class="rev_slider_wrapper fullwidthbanner-container" id="rev_slider_280_1_wrapper" style="margin:0px auto;background-color:#101010;padding:0px;margin-top:0px;margin-bottom:0px;">
									<!-- START REVOLUTION SLIDER 5.1.4 fullwidth mode -->
									<div class="rev_slider fullwidthabanner" data-version="5.1.4" id="rev_slider_280_1" style="display:none;">
										<ul>

											<!-- SLIDE -->
											<li data-index="rs-673" data-transition="zoomout" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-description="">
												<!-- MAIN IMAGE -->
												<img src="<%=basePath %>elementy/images/revo-slider/index18-4.png" alt="" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina="data-no-retina">
													<!-- LAYERS -->

													<!-- LAYER NR. 1 -->
													<div
														class="tp-caption font-poppins font-white tp-resizeme rs-parallaxlevel-6"
														id="slide-898-layer-1"
														style="z-index: 8; white-space: nowrap;"
														data-fontsize="['55','50','50','33']"
														data-height="none"
														data-lineheight="['102','82','74','64']"
														data-responsive_offset="on"
														data-splitin="none"
														data-splitout="none"
														data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
														data-whitespace="nowrap"
														data-width="none"
														data-x="['left','left','center','center']"
														data-hoffset="['40','40','0','0']"
														data-y="['center','center','center','center']"
														data-voffset="['-50','-50','-35','-33']">
														<span class="bold">
															Renovation services</span>
													</div>

													<!-- LAYER NR. 2 -->
													<div
														class="tp-caption font-poppins font-white tp-resizeme rs-parallaxlevel-6"
														id="slide-898-layer-2"
														style="z-index: 8; white-space: nowrap;"
														data-fontsize="['16','16','16','16']"
														data-fontweight="300"
														data-height="none"
														data-lineheight="['24','24','24','24']"
														data-responsive_offset="on"
														data-splitin="none"
														data-splitout="none"
														data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":900,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
														data-whitespace="nowrap"
														data-width="none"
														data-x="['left','left','center','center']"
														data-hoffset="['40','40','0','0']"
														data-y="['center','center','center','center']"
														data-visibility="['on','on','off','off']"
														data-voffset="['15','20','0','-0']">
														<span class="text-sm-center">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
															<br/>
															Sed cursus turpis lorem, quis consectetur</span>
													</div>

													<!-- LAYER NR. 3 -->
													<div
														class="tp-caption rs-parallaxlevel-6"
														id="slide-898-layer-3"
														data-x="['left','left','center','center']"
														data-hoffset="['40','40','0','0']"
														data-y="['center','center','center','center']"
														data-voffset="['90','115','40',40']"
														data-width="none"
														data-height="none"
														data-whitespace="nowrap"
														data-frames='[{"from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;","mask":"x:0px;y:0px;s:inherit;e:inherit;","speed":1500,"to":"o:1;","delay":1500,"ease":"Power3.easeInOut"},{"delay":"wait","speed":1000,"to":"y:[100%];","mask":"x:inherit;y:inherit;s:inherit;e:inherit;","ease":"nothing"}]'
														data-splitin="none"
														data-splitout="none"
														data-responsive_offset="on"
														data-responsive="off"
														style="z-index: 8; white-space: nowrap;outline:none;">
														<a class="tp-button1 button medium full-rounded hover-dark white" href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel">PURCHASE</a>
														<a class="tp-button1 button medium full-rounded thin white ml-20" href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel">READ MORE</a>
													</div>

												</li>

											</ul>
											<div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
										</div>
									</div>
									<!-- END REVOLUTION SLIDER -->

								</div>

								<!-- FEATURES 7 -->

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

																	<!-- FOOTER 4 BLACK WITH WORKING HOURS -->
																	<%@include file="/WEB-INF/pages/base/footer.jsp"%>

																	</div>
																	<!-- End BG -->
																</div>
																<!-- End wrap -->

																<!-- JS begin -->

																<script src="<%=basePath %>javascript/dist/header.js"></script>

																<!-- SLIDER REVOLUTION INITIALIZATION -->
																<script>
																	jQuery(document).ready(function () {

																		jQuery("#rev_slider_280_1").show().revolution({
																			sliderType: "hero",
																			jsFileLocation: "revo-slider/js/",
																			sliderLayout: "fullwidth",
																			dottedOverlay: "none",
																			delay: 9000,
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
																				610, 550, 550, 550
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

																	});/*ready*/
																</script>

																<!-- JS end -->

															</body>

														</html>
