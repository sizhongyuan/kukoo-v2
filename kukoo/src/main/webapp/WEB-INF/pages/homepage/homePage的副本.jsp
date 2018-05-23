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
					<body class="font-raleway">
						<!-- LOADER -->
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

								<!-- SLIDER Revo Hero 1 FONT MONTSERRAT -->
								<%-- <div class="relative">
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
										</div> --%>

										<div class="relative">

						            <div class="forcefullwidth_wrapper_tp_banner" id="rev_slider_280_1_forcefullwidth" style="position:relative;width:100%;height:auto;margin-top:0px;margin-bottom:0px"><div class="rev_slider_wrapper fullwidthbanner-container" id="rev_slider_280_1_wrapper" style="margin: 0px auto; background-color: rgb(16, 16, 16); padding: 0px; position: absolute; overflow: visible; height: 610px; width: 1872px; left: 0px;">
						                <!-- START REVOLUTION SLIDER 5.1.4 fullwidth mode -->
						                <div class="rev_slider fullwidthabanner revslider-initialised tp-simpleresponsive rev_redraw_on_blurfocus" data-version="5.1.4" id="rev_slider_280_1" style="max-height: 610px; margin-top: 0px; margin-bottom: 0px; height: 610px;" data-slideactive="rs-673">
						                    <ul class="tp-revslider-mainul" style="visibility: visible; display: block; overflow: hidden; width: 100%; height: 100%; max-height: none;">

						                        <!-- SLIDE  -->
						                        <li data-index="rs-673" data-transition="zoomout" data-slotamount="default" data-easein="default" data-easeout="default" data-masterspeed="default" data-rotate="0" data-saveperformance="off" data-description="" class="tp-revslider-slidesli active-revslide" style="width: 100%; height: 100%; overflow: hidden; z-index: 20; visibility: inherit; opacity: 1; background-color: rgba(255, 255, 255, 0);">
						                            <!-- MAIN IMAGE -->
						                            <div class="slotholder" style="position: absolute; top: 0px; left: 0px; z-index: 0; width: 100%; height: 100%; backface-visibility: hidden; transform: translate3d(0px, 0px, 0px); visibility: inherit; opacity: 1;"><!--Runtime Modification - Img tag is Still Available for SEO Goals in Source - <img src="images/revo-slider/constr5.jpg" alt="" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="5" class="rev-slidebg defaultimg" data-no-retina="">--><div class="tp-bgimg defaultimg " data-bgcolor="undefined" style="background-repeat: no-repeat; background-image: url(&quot;<%=basePath %>elementy/images/revo-slider/index18-4.png&quot;); background-size: cover; background-position: center top; width: 100%; height: 100%; opacity: 1; visibility: inherit; z-index: 20;" src="images/revo-slider/constr5.jpg"></div></div>
						                            <!-- LAYERS -->

						                            <!-- LAYER NR. 1 -->
						                            <div class="tp-parallax-wrap  tp-parallax-container" style="position: absolute; display: block; visibility: visible; transform: matrix(1, 0, 0, 1, 0, 0); left: 356px; top: 204px; z-index: 8;"><div class="tp-loop-wrap" style="position:absolute;display:block;;"><div class="tp-mask-wrap" style="position: absolute; display: block; overflow: hidden; transform: matrix(1, 0, 0, 1, 0, 0);"><div class="tp-caption font-poppins font-white tp-resizeme rs-parallaxlevel-6" id="slide-898-layer-1" style="z-index: 8; white-space: nowrap; visibility: inherit; transition: none; text-align: inherit; line-height: 102px; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; font-weight: 400; font-size: 55px; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;" data-fontsize="['55','50','50','33']" data-height="none" data-lineheight="['102','82','74','64']" data-responsive_offset="on" data-splitin="none" data-splitout="none" data-frames="[{&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;speed&quot;:1500,&quot;to&quot;:&quot;o:1;&quot;,&quot;delay&quot;:500,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1000,&quot;to&quot;:&quot;y:[100%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;nothing&quot;}]" data-whitespace="nowrap" data-width="none" data-x="['left','left','center','center']" data-hoffset="['40','40','0','0']" data-y="['center','center','center','center']" data-voffset="['-50','-50','-35','-33']"><span class="bold" style="transition: none; text-align: inherit; line-height: 102px; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; font-weight: 700; font-size: 55px;"> Renovation services</span></div></div></div></div>

						                            <!-- LAYER NR. 2 -->
						                            <div class="tp-parallax-wrap  tp-parallax-container" style="position: absolute; display: block; visibility: visible; transform: matrix(1, 0, 0, 1, 0, 0); left: 356px; top: 296px; z-index: 8;"><div class="tp-loop-wrap" style="position:absolute;display:block;;"><div class="tp-mask-wrap" style="position: absolute; display: block; overflow: hidden; transform: matrix(1, 0, 0, 1, 0, 0);"><div class="tp-caption font-poppins font-white tp-resizeme rs-parallaxlevel-6" id="slide-898-layer-2" style="z-index: 8; white-space: nowrap; visibility: inherit; transition: none; text-align: inherit; line-height: 24px; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; font-weight: 300; font-size: 16px; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;" data-fontsize="['16','16','16','16']" data-fontweight="300" data-height="none" data-lineheight="['24','24','24','24']" data-responsive_offset="on" data-splitin="none" data-splitout="none" data-frames="[{&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;speed&quot;:1500,&quot;to&quot;:&quot;o:1;&quot;,&quot;delay&quot;:900,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1000,&quot;to&quot;:&quot;y:[100%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;nothing&quot;}]" data-whitespace="nowrap" data-width="none" data-x="['left','left','center','center']" data-hoffset="['40','40','0','0']" data-y="['center','center','center','center']" data-visibility="['on','on','off','off']" data-voffset="['15','20','0','-0']">
						                              <span class="text-sm-center" style="transition: none; text-align: inherit; line-height: 24px; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; font-weight: 300; font-size: 16px;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. <br>
						                              	Sed cursus turpis lorem, quis consectetur</span>
						                            </div></div></div></div>

						                            <!-- LAYER NR. 3 -->
						                            <div class="tp-parallax-wrap  tp-parallax-container" style="position: absolute; display: block; visibility: visible; transform: matrix(1, 0, 0, 1, 0, 0); left: 356px; top: 372px; z-index: 8;"><div class="tp-loop-wrap" style="position:absolute;display:block;;"><div class="tp-mask-wrap" style="position: absolute; display: block; overflow: hidden; transform: matrix(1, 0, 0, 1, 0, 0);"><div class="tp-caption rs-parallaxlevel-6" id="slide-898-layer-3" data-x="['left','left','center','center']" data-hoffset="['40','40','0','0']" data-y="['center','center','center','center']" data-voffset="['90','115','40',40']" data-width="none" data-height="none" data-whitespace="nowrap" data-frames="[{&quot;from&quot;:&quot;y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;&quot;,&quot;mask&quot;:&quot;x:0px;y:0px;s:inherit;e:inherit;&quot;,&quot;speed&quot;:1500,&quot;to&quot;:&quot;o:1;&quot;,&quot;delay&quot;:1500,&quot;ease&quot;:&quot;Power3.easeInOut&quot;},{&quot;delay&quot;:&quot;wait&quot;,&quot;speed&quot;:1000,&quot;to&quot;:&quot;y:[100%];&quot;,&quot;mask&quot;:&quot;x:inherit;y:inherit;s:inherit;e:inherit;&quot;,&quot;ease&quot;:&quot;nothing&quot;}]" data-splitin="none" data-splitout="none" data-responsive_offset="on" data-responsive="off" style="z-index: 8; white-space: nowrap; outline: none; visibility: inherit; transition: none; text-align: inherit; line-height: 25px; border-width: 0px; margin: 0px; padding: 0px; letter-spacing: 0px; font-weight: 400; font-size: 14px; min-height: 0px; min-width: 0px; max-height: none; max-width: none; opacity: 1; transform: matrix3d(1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1); transform-origin: 50% 50% 0px;"><a class="tp-button1 button medium full-rounded hover-dark white" href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel">PURCHASE</a><a class="tp-button1 button medium full-rounded thin white ml-20" href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel">READ MORE</a>
						                            </div></div></div></div>

						                        </li>

						                    </ul>
						                    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important; width: 0%;"></div>
						                <div class="tp-loader spinner2" style="display: none;"><div class="dot1"></div><div class="dot2"></div><div class="bounce1"></div><div class="bounce2"></div><div class="bounce3"></div></div></div>
						            </div><div class="tp-fullwidth-forcer" style="width: 100%; height: 610px;"></div></div>
						            <!-- END REVOLUTION SLIDER -->

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
																		<script src="<%=basePath %>javascript/dist/header.js"></script>
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
