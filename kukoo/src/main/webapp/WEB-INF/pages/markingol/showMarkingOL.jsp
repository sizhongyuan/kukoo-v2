<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@include file="/WEB-INF/pages/base/head.jsp"%>

		<html>
			<head>
				<link rel="stylesheet" href="<%=basePath %>css/markingol/showMarkingOL.css"/>
				<!-- <link rel="icon" href="../../favicon.ico"> -->
				<title>布谷移民——在线评估</title>
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

						<pg-head-banner id="ban1" text="在线评估"></pg-head-banner>

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
								<script src="<%=basePath %>javascript/dist/header.js"></script>
								<script src="<%=basePath %>javascript/dist/headerBanner.js"></script>
								<script src="<%=basePath %>javascript/dist/Verify.js"></script>
								<script src="<%=basePath %>javascript/pages/showMarkingOL.js"></script>
								<!-- JS end -->
							</body>

						</html>
