<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/pages/base/head.jsp"%>

		<html>
			<head>
				<%-- <link rel="stylesheet" href="<%=basePath %>css/base/select2.min.css"/> --%>
					<link rel="stylesheet" href="<%=basePath %>css/markingol/resultOL.css"/>
					<!-- <link rel="icon" href="../../favicon.ico"> -->
					<title>布谷移民——在线评估结果</title>
				</head>
				<body>

					<!-- LOADER -->
					<div id="loader-overflow">
						<div id="loader3" class="loader-cont">Please enable JS</div>
					</div>

					<div id="wrap" class="boxed ">
						<div class="grey-bg">
							<!-- Grey BG -->
							<!-- HEADER 1 FONT BLACK TRANSPARENT -->
							<pg-header class="pg-header" id="nav"></pg-header>
							<!-- PAGE TITLE LARGE 2 GRAY -->
							<pg-head-banner id="ban1" text="评估结果"></pg-head-banner>

							<div class="main container">

								<div class="col-md-12 mt-20 mb-20 pb-30 selector">
									<div class="col-md-10">

										<div class="col-md-12">
											<div class="name">预估语言成绩</div>
											<div class="link-a">
												<a href="showMarkingOL">查看修改其他评估信息<i class="fa fa-angle-double-right"></i>
												</a>
											</div>
										</div>

										<div class="con">
											<div class="col-md-6 lang-ti">
												<b>英语雅思</b>
											</div>
											<div class="col-md-6 lang-ti">
												<b>法语水平</b>
											</div>

											<div class="col-md-12 mb-20 line"></div>

											<div class="col-md-12 pb-10 white">

												<div class="col-md-12 ti">
													<div class="col-md-2"></div>
													<div class="col-md-1">听</div>
													<div class="col-md-1">说</div>
													<div class="col-md-1">读</div>
													<div class="col-md-1">写</div>
													<div class="col-md-2"></div>
													<div class="col-md-1">听</div>
													<div class="col-md-1">说</div>
													<div class="col-md-1">读</div>
													<div class="col-md-1">写</div>
												</div>
												<div class="col-md-12 mb-10 M">
													<div class="col-md-2">您</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[0][0]">
															<option v-for="item in details[0].a[0]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[1][0]">
															<option v-for="item in details[0].a[1]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[2][0]">
															<option v-for="item in details[0].a[2]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[3][0]">
															<option v-for="item in details[0].a[3]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-2"></div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[0][0]">
															<option v-for="item in details[1].a[0]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[1][0]">
															<option v-for="item in details[1].a[1]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[2][0]">
															<option v-for="item in details[1].a[2]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[3][0]">
															<option v-for="item in details[1].a[3]">{{item}}</option>
														</select>
													</div>
												</div>
												<div class="col-md-12 mb-10 W" v-if="answer.length>1">
													<div class="col-md-2">您的伴侣</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[0][1]">
															<option v-for="item in details[0].a[0]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[1][1]">
															<option v-for="item in details[0].a[1]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[2][1]">
															<option v-for="item in details[0].a[2]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[0].value[3][1]">
															<option v-for="item in details[0].a[3]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-2"></div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[0][1]">
															<option v-for="item in details[1].a[0]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[1][1]">
															<option v-for="item in details[1].a[1]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[2][1]">
															<option v-for="item in details[1].a[2]">{{item}}</option>
														</select>
													</div>
													<div class="col-md-1">
														<select class="w-100" dtype="*" @change="dogo" v-model="details[1].value[3][1]">
															<option v-for="item in details[1].a[3]">{{item}}</option>
														</select>
													</div>
												</div>

											</div>
											<div class="" style="float:none; clear:both;"></div>
										</div>

									</div>
									<div class="col-md-2 rb-c">
										<div class="col-md-12">
											<div class="ml-5 button rounded small gray">保存评估结果</div>
										</div>
										<div class="share-icons col-md-12">
											<i class="icon icon-basic-share"></i>分享
											<i class="ml-10 fa fa-weibo"></i>
											<i class="fa fa-weixin"></i>
											<i class="fa fa-qq"></i>
										</div>
									</div>
								</div>

								<div class="clearfix"></div>

								<div class="alert alert-success" v-if="rv.recommend.length>0">
									<span aria-hidden="true" class="alert-icon icon_like"></span>
									<strong>恭喜!</strong>
									根据您提供的个人信息，您符合如下项目的申请条件：
								</div>

								<project-score :msg="rv.recommend" :type="'recommend'" v-if="rv.recommend.length>0"></project-score>

								<div class="alert alert-warning" v-if="rv.promote.length>0">
									<span aria-hidden="true" class="alert-icon icon_error-triangle_alt"></span>
									<strong>提醒!</strong>
									若您及您伴侣（如有）能进一步提高语言成绩，可满足如下项目申请条件：（您可在本页顶部调整预估语言成绩，判断如下项目申请难度）
								</div>

								<project-score :msg="rv.promote" :type="'promote'" v-if="rv.promote.length>0"></project-score>

								<div class="alert alert-info" v-if="rv.Quebec.length>0">
									<span aria-hidden="true" class="alert-icon icon_error-triangle_alt"></span>
									<strong>补充!</strong>
									若您希望申请如下项目，请进一步补充相关信息进行评估：
								</div>

								<div class="col-md-12 zy" v-if="rv.Quebec.length>0">
									<span>补充您及您伴侣（如有）的专业（可多选）</span>
									<span class="con1" @click="rv.Quebec[0].index=0" data-toggle="modal" data-target="#bs-example-modal-sm">
										<span v-if="rv.Quebec[0].specialty[0].length==0">您的专业</span>
										<span class="zy1" v-for="item in rv.Quebec[0].specialty[0]">{{item}}</span>
										<i class="fa fa-caret-down"></i>
									</span>
									<span v-if="answer.length==2" class="con1" @click="rv.Quebec[0].index=1" data-toggle="modal" data-target="#bs-example-modal-sm">
										<span v-if="rv.Quebec[0].specialty[1].length==0">您配偶的专业</span>
										<span class="zy1" v-for="item in rv.Quebec[0].specialty[1]">{{item}}</span>
										<i class="fa fa-caret-down"></i>
									</span>
									<button type="button" class="btn btn-default ml-20" @click="js">计算</button>
								</div>
								<project-score :msg="rv.Quebec" :type="'Quebec'" v-if="rv.Quebec.length>0"></project-score>

							</div>

							<div class="modal fade bs-example-modal-sm bootstrap-modal" id="bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
								<div class="modal-dialog">
									<div class="modal-body">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
												<h4 class="modal-title" id="mySmallModalLabel">选择职业</h4>
											</div>
											<div class="modal-body">
												<div class="">
													<input type="text" id="txt_search" value="" placeholder="输入关键字搜索" @keyup="search"></div>
													<ul>
														<li v-for="item in occup" @click="sel_occup">{{item.cnName}}</li>
													</ul>
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

								<script type="text/x-template" id="project-template">
									<span>
										<div class="pricing-horizontal clearfix item1" :class="type" v-for="item in msg">
											<div class="pricing-horizontal-content-container col-md-10">
												<div class="col-md-12 title">
													<span class="pname">{{item.projectName}}</span>
													<span class="pcountry label label-default">{{item.country}}</span>
													<span class="ptype label label-default">{{item.projectType}}</span>
												</div>
												<div class="col-md-12 content">
													<div class="col-md-4 pl-0 con">
														<div class="col-md-6 pl-0">
															<div class="col-md-6 plr-0">
																<span>
																	<b>主申</b>
																</span>
																<span>
																	<b>资金要求</b>
																</span>
															</div>
															<div class="col-md-6 plr-0">
																<span>{{item.major}}</span>
																<span>{{item.capital}}</span>
															</div>
														</div>
														<div class="col-md-6 plr-0">
															<div class="col-md-6 plr-0">
																<span>
																	<b>签证类别</b>
																</span>
																<span>
																	<b>处理周期</b>
																</span>
															</div>
															<div class="col-md-6 plr-0">
																<span>{{item.visaType}}</span>
																<span>{{item.period}}</span>
															</div>
														</div>
														<div class="col-md-12 mt-20 learn" v-if="type!='Quebec'&&item.projectName=='魁北克省技术移民'">
															<i class="fa" :class="item.learn=='是'?'fa-dot-circle-o':'fa-circle-o'" @click="item.learn=item.learn=='是'?'不是':'是'">
																<span>考虑去魁省学习三个月（可加5分）</span>
															</i>
														</div>
													</div>
													<div class="col-md-8">
														<div class="intro">{{item.intro}}</div>
														<div class="link">
															<a href="#">项目详情</a>
														</div>
													</div>
												</div>
											</div>
											<div class="pricing-horizontal-price-container col-md-2">
												<div class="price-container get-score">
													<span>{{item.score==undefined?'-':item.score}}</span>
													得分
												</div>
												<div class="price-button-container pass-score">
													<span>{{item.pass==undefined?'-':item.pass}}</span>
													通过分
												</div>
											</div>
										</div>
									</span>
								</script>

								<script src="<%=basePath %>javascript/dist/header.js"></script>
								<script src="<%=basePath %>javascript/dist/headerBanner.js"></script>
								<script src="<%=basePath %>javascript/dist/Verify.js"></script>
								<%-- <script src="<%=basePath %>javascript/dist/select2.min.js"></script> --%>
									<script src="<%=basePath %>javascript/pages/resultOL.js"></script>
									<!-- JS end -->
								</body>

							</html>
