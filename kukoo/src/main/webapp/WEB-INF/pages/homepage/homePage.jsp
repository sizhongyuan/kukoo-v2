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

							.ma2 {
								width: 30px;
								transition: 0.4s all;
								cursor: pointer;
							}

							.ma2:hover {
								width: 80px;
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
												<img src="<%=basePath %>elementy/png/homepage_bg.jpg" alt="" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg" data-no-retina="data-no-retina">
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
															心之所向&nbsp;身之所往</span>
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
														<span class="text-sm-center">人生是一场旅程，&nbsp;你将去向何方？<br/>现在出发，&nbsp;你的向往没那么远</span>
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
														<a class="tp-button1 button medium full-rounded hover-dark white" href="<%=basePath %>list/lists">GO!</a>
														<a class="tp-button1 button medium full-rounded thin white ml-20" href="<%=basePath %>markingOLController/showMarkingOL">在线评估</a>
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
									<div class="container p-50-cont">

										<div class="col-md-6">
											<div>
												<h1>
													<span class="font-light" style="text-align:left">在线移民评估工具</span>
												</h1>
											</div>
											<div class="post-prev-info font-14 mb-50">
												<P>66.3%的中产阶级符合移民条件&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp;&nbsp;知道自己能移民的不超过1%</P>
											</div>

											<div class="au3-text" style="text-align:left">
												<p>大部分中产阶级都可以匹配到适合自己的移民项目<br/>
													不要因为不了解政策错失机会
													<br/>
													<br/>KUKOO开发了在线评估工具<br/>帮助您在3分钟之内快速评估匹配低成本的移民项目
												</p>
											</div>
											<div class="au3-btn-cont">
												<a class="button medium rounded gray" href="<%=basePath %>markingOLController/showMarkingOL">测一测</a>
											</div>

										</div>

										<div class="col-md-6 mt-60 fes1-img-cont wow fadeInUp">
											<img src="<%=basePath %>elementy/png/first-people3.png" width="90%" alt=""/>
										</div>

									</div>
								</div>

								<!-- WORK PROCESS 2 NORMAL FONT -->
								<div class="container-fluid p-50-cont bg-gray">
									<div class="row">

										<div class="col-lg-3 col-md-6 col-sm-6">
											<div class="work-proc2-cont wow fadeIn">
												<div class="work-proc2-icon-cont pos-l-12 font-norm">
													01
												</div>
												<h3>评估</h3>
												<p>通过KUKOO开发的评估工具测试是否符合移民条件</p>
											</div>
										</div>

										<div class="col-lg-3 col-md-6 col-sm-6">
											<div class="work-proc2-cont wow fadeIn" data-wow-delay="200ms">
												<div class="work-proc2-icon-cont font-norm">
													02
												</div>
												<h3>咨询</h3>
												<p>KUKOO专业的移民顾问为您免费咨询并制定移民方案</p>
											</div>
										</div>

										<div class="col-lg-3 col-md-6 col-sm-6">
											<div class="work-proc2-cont wow fadeIn" data-wow-delay="400ms">
												<div class="work-proc2-icon-cont font-norm">
													03
												</div>
												<h3>交流</h3>
												<p>与KUKOO已经成功登陆的客户交流移民心得</p>
											</div>
										</div>

										<div class="col-lg-3 col-md-6 col-sm-6">
											<div class="work-proc2-a-cont wow fadeIn" data-wow-delay="600ms">
												<a class="work-proc2-a" href="#">
													<div class="work-proc2-a-text">
														Let's work<br/>
														<span class="border-bot">together</span>
													</div>
													<div class="work-proc2-bg-block"></div>
												</a>
											</div>
										</div>

									</div>
								</div>

								<!--移路同行走得更远-->
								<div class="page-section bg-white clearfix">
									<div class="fes7-img-cont col-md-5">
										<div class="fes7-img" style="background-image: url(<%=basePath %>elementy/png/first-people3-2.png)"></div>
									</div>

									<div class="container">
										<div class="row">
											<div class="col-md-6 col-md-offset-6 fes7-text-cont p-80-cont">
												<h1>
													<span class="font-light">移路同行走得更远</span>
												</h1>

												<div class="post-prev-info font-14 mb-50">
													<P>参考移友过往申请进程&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分享交流移民申请经验</P>
												</div>
												<div class="row">

													<div class="col-md-6 col-sm-6">
														<div class="fes7-box wow fadeIn">
															<div class="fes7-box-icon">
																<div class="icon icon-basic-signs"></div>
															</div>
															<h3>移友足迹</h3>
															<p>参考移友真实申请案例及申请进度</p>
														</div>
													</div>

													<div class="col-md-6 col-sm-6">
														<div class="fes7-box wow fadeIn" data-wow-delay="200ms">
															<div class="fes7-box-icon">
																<div class="icon icon-basic-message-multiple"></div>
															</div>
															<h3>经验交流</h3>
															<p>与移民同路人分享交流申请经验</p>
														</div>
													</div>

												</div>

												<div class="row">

													<div class="col-md-6 col-sm-6">
														<div class="fes7-box wow fadeIn" data-wow-delay="400ms">
															<div class="fes7-box-icon">
																<div class="icon icon-basic-world"></div>
															</div>
															<h3>海外生活</h3>
															<p>与新老移民及时分享海外生活信息</p>
														</div>
													</div>

													<div class="col-md-6 col-sm-6">
														<div class="fes7-box wow fadeIn" data-wow-delay="600ms">
															<div class="fes7-box-icon">
																<div>
																	<%-- <i class="fa fa-qrcode"></i> --%>
																		<img class="ma2" src="<%=basePath %>elementy/images/2wm-wx.jpg" alt=""></div>
																	</div>
																	<h3>扫码加入</h3>
																	<p>扫码立即加入移民同路人交流群</p>
																</div>
															</div>

														</div>

													</div>
												</div>
												<!--end of row-->
											</div>
										</div>

										<div class="page-section bg-gray">
											<div class="container pt-50 pb-0">
												<div class="row">

													<div class="col-md-8">

														<div>
															<h1>
																<span class="font-light">互联网化流程管理</span>
															</h1>

															<div class="post-prev-info font-14 mb-50">
																<P>申请过程管理有序&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp申请状态一目了然</P>
															</div>

														</div>
														<div class="au3-text" style="text-align:left">移民申请通常周期较长，申请人缺乏对过程及文档的持续有序管理
															<br/>容易产生材料前后不一、移民局反馈掌握不及时等问题，导致拒签<br/><br/>KUKOO结合丰富的申请经验开发了互联网化的移民流程管理系统
															<br/>有效保障移民申请过程的有序管理，以及移民申请状态的公开透明</div>
														<div class="au3-btn-cont">
															<a class="button medium rounded gray" href="about-us.html">开发中</a>
														</div>
														<div class="row"></div>

													</div>

													<div class="col-md-4 mt-30 fes1-img-cont wow fadeInUp">
														<img src="<%=basePath %>elementy/png/first-computer.png" alt="img"></div>

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
