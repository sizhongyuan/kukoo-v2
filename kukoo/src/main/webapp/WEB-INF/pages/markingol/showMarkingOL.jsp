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
							<div class="col-md-12 text-right mb-20 mt-20 pr-0 fs-12">
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
															<select class="w-100 color0" :q="item.question" v-model="qa.value[index][0]" @change="change" :dtype="qa.dtype=='no'?'':'*'">
																<option value="-1">{{qa.oneline?qa.default0:qa.default1}}</option>
																<option v-for="op in qa.a[index]" :value="typeof(op)=='string'?(op.indexOf('+')>0?(parseInt(op.substring(0,op.length-1))+1):op):op">{{op}}</option>
															</select>
														</div>

														<div class="select-style" v-if="!qa.oneline">
															<%-- <select class="w-100 color0" :class="{'color0':qa.oneline,'color2':!qa.oneline,'color3':item.question=='外语水平'}" v-model="qa.value[index][1]"> --%>
																<select class="w-100 color0" v-model="qa.value[index][1]" :dtype="qa.dtype=='no'?'':'*'">
																	<option value="-1">{{qa.default2}}</option>
																	<option v-for="op in qa.a[index]" :value="typeof(op)=='string'?(op.indexOf('+')>0?(parseInt(op.substring(0,op.length-1))+1):op):op">{{op}}</option>
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
														<%-- <div class="q" style="width:100%">请选择过去十年您及您伴侣（如有）所从事过的工作（可多次添加）,调整色块长度来标注每段工作经历的时间长度，并通过拖拽对每段工作经历按时间先后进行排序</div> --%>
														<div class="q" style="width:100%">请选择过去十年您及您伴侣（如有）所从事过的工作（可多次添加）</div>
														<div class="clear"></div>
													</div>
												</div>
											</div>
										</div>

									</div>

									<div class="timeline">
										<ts-per myname="您" :yms="yms1" :works="works1" :_type="0" :profession="profession1"></ts-per>
										<ts-per myname="配偶" class="mt-20" :yms="yms2" :works="works2" :_type="1" :profession="profession2" v-if="hasWife"></ts-per>

										<div class="modal fade bs-example-modal-sm bootstrap-modal" id="bs-example-modal-sm" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
											<div class="modal-dialog modal-sm">
												<div class="modal-body">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
															<h4 class="modal-title" id="mySmallModalLabel">选择职业</h4>
														</div>
														<div class="modal-body">
															<ul class="pl-20">
																<li v-for="item in occup" @click="set_profession_val">{{item}}</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>

									</div>

									<%-- <div class="timeline">
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

									</div> --%>

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

									<script type="text/x-template" id="timespanpicker-template">
										<div>
											<div class="mask" v-show="show" @click="mask_click"></div>
											<div class="tsp" v-show="show" v-bind:style="styleObject">
												<div class="row col-md-12 text-center btns">
													<div class="col-md-6 btn" :class="{'on':s==1}" @click="changeS">开始</div>
													<div class="col-md-6 btn" :class="{'on':s==2}" @click="changeS">结束</div>
												</div>

												<div class="row myrow col-md-12 year">
													<div class="col-md-1">
														年
													</div>
													<div class="row col-md-11">

														<span class="row col-md-10">
															<div v-if="index<10" class="col-md-3" v-for="(item,index) in ys" :class="[index<5?'row1':'row2',(item.state==2||item.state==9)?'off':'',item.state==1?'on':'']" :i="index" @click="sel_year">{{item.sy}}</div>
														</span>

														<div class="col-md-2 d11" :class="[(ys[10].state==2||ys[10].state==9)?'off':'',ys[10].state==1?'on':'']" i="10" @click="sel_year">{{ys[10].sy}}</div>

													</div>
												</div>

												<div class="row myrow col-md-12 month1 mt-10">
													<div class="col-md-1">
														月
													</div>
													<div class="row col-md-11">
														<div class="col-md-2" :i="index" :class="[index<6?'row1':'row2',(item.state==2||item.state==9)?'off':'',item.state==1?'on':'']" v-for="(item,index) in ms" @click="sel_month">{{item.sm}}</div>
													</div>
												</div>
											</div>
											<div clsss="list">
												<div class="row">
													<div class="col-md-1">
														<span class="ti" v-html="myname"></span>
													</div>
													<div class="col-md-11">
														<ul class="ul-ed">
															<li class="row col-md-12" v-for="(item,index) in selected">
																<div class="col-md-3" :class="_mt_20" @click="set_timeSpan" :index="index">
																	<span class="todo" :index="index">{{item.start}}</span>
																	<span :index="index">~~</span>
																	<span class="todo" :index="index">{{item.end}}</span>
																</div>
																<div class="col-md-6" :class="_mt_20" @click="set_profession(index)" data-toggle="modal" data-target="#bs-example-modal-sm" :index="index">
																	<span class="todo" :index="index">{{item.profession}}</span>
																</div>
																<div class="col-md-3" :class="_mt_20">
																	<span class="glyphicon glyphicon-minus-sign" aria-hidden="true" @click="remove(index)"></span>
																	<span class="glyphicon glyphicon-plus-sign" aria-hidden="true" @click="add(index)" v-if="index==selected.length-1"></span>
																</div>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</script>

									<!-- End wrap -->
									<script src="<%=basePath %>javascript/dist/header.js"></script>
									<script src="<%=basePath %>javascript/dist/headerBanner.js"></script>
									<script src="<%=basePath %>javascript/dist/Verify.js"></script>
									<script src="<%=basePath %>javascript/dist/timeSpanPicker.js"></script>
									<script src="<%=basePath %>javascript/pages/showMarkingOL.js"></script>
									<!-- JS end -->
								</body>

							</html>
