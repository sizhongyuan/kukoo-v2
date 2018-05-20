<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/pages/base/head.jsp"%>

		<html>
			<head>
				<link rel="stylesheet" href="<%=basePath %>css/markingol/showMarkingOL.css"/>
				<!-- <link rel="icon" href="../../favicon.ico"> -->
				<title>布谷移民——在线评估</title>
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
												<h1 class="page-title2">在线评估</h1>
											</div>

											<div class="col-md-4">

												<div class="breadcrumbs2 font-poppins">
													<a class="a-inv" href="/kukoo/homePage/">KUKOO</a>
													<span class="slash-divider">/</span>
													<span class="bread-current">在线评估</span>
												</div>
												<%-- <div class="text-right">
												<span class="bread-current">共12题，答题时间：5分钟</span>
											</div> --%>
												</div>

											</div>
										</div>
									</div>

									<div class="main container">

										<div class="col-md-12 text-right mb-20 mt-20 pr-0">
											共6题，答题时间：3分钟
										</div>

										<div class="clear"></div>

										<div class="list-c">

											<div class="item1" v-for="item in list">
												<div class="pen">
													<div class="ti">{{item.title}}
													</div>
													<div class="question">{{item.question}}</div>
												</div>
												<div class="content">
													<div class="details" v-for="qa in item.details">
														<div v-if="qa.subtitle" class="subtitle">{{qa.subtitle}}</div>
														<div class="qas" v-for="(q,index) in qa.q">
															<div class="q" :class="item.question=='外语水平'?'pl-15':''">{{q}}</div>
															<div class="a">

																<div class="select-style" :class="{'oneline':qa.oneline}">
																	<%-- <select class="w-100" :class="{'color0':qa.oneline,'color1':!qa.oneline,'color3':item.question=='外语水平'}" :q="item.question" v-model="qa.value[index][0]" @change="change"> --%>
																		<select class="w-100 color0" :q="item.question" v-model="qa.value[index][0]" @change="change" dtype="*">
																			<option value="-1">{{qa.oneline?qa.default0:qa.default1}}</option>
																			<option v-for="op in qa.a[index]" :value="op">{{op}}</option>
																		</select>
																	</div>

																	<div class="select-style" v-if="!qa.oneline">
																		<%-- <select class="w-100 color0" :class="{'color0':qa.oneline,'color2':!qa.oneline,'color3':item.question=='外语水平'}" v-model="qa.value[index][1]"> --%>
																			<select class="w-100 color0" v-model="qa.value[index][1]" dtype="*">
																				<option value="-1">{{qa.default2}}</option>
																				<option v-for="op in qa.a[index]" :value="op">{{op}}</option>
																			</select>
																		</div>

																		<div class="clear"></div>

																	</div>
																	<div class="clear"></div>
																</div>
															</div>
														</div>
													</div>

													<div class="item1">
														<div class="pen">
															<div class="ti">6
															</div>
															<div class="question">工作年限</div>
														</div>
														<div class="content">
															<div class="details">
																<div class="qas">
																	<div class="q" style="width:100%">请选择过去十年您及您伴侣（如有）所从事过的工作（可多次添加）,调整色块长度来标注每段工作经历的时间长度，并通过拖拽对每段工作经历按时间先后进行排序</div>
																	<div class="clear"></div>
																</div>
															</div>
														</div>
													</div>

												</div>

												<div class="timeline">
													<div class="mine" @mousedown="isMine=true">
														<div class="ti">您</div>
														<div class="c">
															<div class="areas">
																<div class="area" v-for="(item,index) in mine.works" :tabindex="index" @click="select_area" @keyup.delete="delete1" data-toggle="tooltip" data-placement="top" title="" :data-original-title="item.name">
																	<span class="ltxt">{{item.start}}</span>
																	<div class="lbar" @mousedown="move_bar_down"></div>
																	<span class="ctxt">{{item.name}}<br/>{{item.span+"个"+item.unit}}</span>
																	<div class="rbar" @mousedown="move_bar_down"></div>
																	<span class="rtxt">{{item.end}}</span>
																</div>
															</div>
															<div class="spots">
																<div class="spot" :style="item.left" v-for="item in spot">
																	<span>{{item.text}}</span>
																</div>
															</div>
														</div>
														<div class="line"></div>
														<div class="add" data-toggle="modal" data-target="#bs-example-modal-sm" @click="isMine=true">+</div>
													</div>
													<div class="myWife" v-if="myWife.display=='show'" @mousedown="isMine=false">
														<div class="ti">您的<br/>配偶</div>
														<div class="c">
															<div class="areas">
																<div class="area" v-for="(item,index) in myWife.works" :tabindex="index" @click="select_area" @keyup.delete="delete1" data-toggle="tooltip" data-placement="top" title="" :data-original-title="item.name">
																	<span class="ltxt">{{item.start}}</span>
																	<div class="lbar" @mousedown="move_bar_down"></div>
																	<span class="ctxt">{{item.name}}<br/>{{item.span+"个"+item.unit}}</span>
																	<div class="rbar" @mousedown="move_bar_down"></div>
																	<span class="rtxt">{{item.end}}</span>
																</div>
															</div>
															<div class="spots">
																<div class="spot" :style="item.left" v-for="item in spot">
																	<span>{{item.text}}</span>
																</div>
															</div>
														</div>
														<div class="line"></div>
														<div class="add" data-toggle="modal" data-target="#bs-example-modal-sm" @click="isMine=false">+</div>
													</div>

													<div class="modal fade bs-example-modal-sm bootstrap-modal" id="bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
														<div class="modal-dialog modal-sm">
															<div class="modal-body">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
																		<h4 class="modal-title" id="mySmallModalLabel">选择职业</h4>
																	</div>
																	<div class="modal-body">
																		<ul>
																			<li v-for="item in occup" @click="sel_occup">{{item}}</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>

												</div>
												<div class="btns">
													<span class="button medium blue">提交并查看结果</span>
												</div>

												<div class="dialog-c">
													<div id="dialog_btn" data-toggle="modal" data-target="#alert-dialog"></div>
													<div class="modal fade bs-example-modal-sm bootstrap-modal" id="alert-dialog" tabindex="-1" role="dialog" aria-hidden="true" style="display: none; text-align:left;">
														<div class="modal-dialog modal-sm">
															<div class="modal-body">
																<div class="modal-content">
																	<div class="modal-header">
																		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
																		<h4 class="modal-title" id="mySmallModalLabel">提示</h4>
																	</div>
																	<div class="modal-body" style="text-align:center">
																		请填写完整信息:<br/>
																		<span class="dialog-msg"></span>
																		<br/>
																		<br/>
																		<br/>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>

											</div>

											<div id="footer-offset">
												<!-- FOOTER 4 BLACK -->
												<%@include file="/WEB-INF/pages/base/footer.jsp"%>
												</div>
												<!-- End BG -->
											</div>
											<!-- End wrap -->
											<script src="<%=basePath %>javascript/dist/Verify.js"></script>
											<script src="<%=basePath %>javascript/pages/showMarkingOL.js"></script>
											<!-- JS end -->
										</body>

									</html>
