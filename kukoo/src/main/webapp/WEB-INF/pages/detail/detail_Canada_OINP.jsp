<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<html>

<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<link rel="stylesheet"
	href="<%=basePath%>css/detail/detail-templete.css" />
<style>
#blockquotes table tr td:first-child {
	width: 160px;
}

@media ( max-width : 1024px) {
	#blockquotes table tr td:first-child {
		width: 100px;
	}
}
</style>

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
	// 获取到这个DOM节点，然后初始化

	//显示更多start
	function showMore() {
		if ($("#more").text() == "更多详情") {
			$("#desc")
					.text(
							"加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内居住地限制，目前采用EE快速通道筛选系统，审理快速，周期最快8个月登陆加拿大。本项目具有办理周期短，对语言等条件要求高等特点；适合学历高，年龄轻，英语好的申请人。");
			$("#more").text("收起");
		} else {
			$("#desc")
					.text(
							"加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内......");
			$("#more").text("更多详情");
		}
	}
	//显示更多end
</script>
<body>
	<div class="side-bar">
		<a href="#" class="icon-qq" style="background-position: -14px -76px;"></a>
		<a href="" class="icon-chat" style="background-position: -14px -144px"></a>
		<a target="_blank" href="" class="icon-blog"
			style="background-position: -14px -212px"></a> <a
			href="mailto:admin@admin.com" class="icon-mail"
			style="background-position: -14px -280px"></a>
	</div>

	<script src="http://echarts.baidu.com/dist/echarts.min.js"></script>
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
										src="<%=basePath%>elementy/images/logo.svg" class="logo-img"
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
												class=""><div class="main-menu-title">首页</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>list/lists"
												class=""><div class="main-menu-title">项目列表</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>timeline"
												class=""><div class="main-menu-title">申报移民流程</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="<%=basePath %>markingOLController/showMarkingOL" class=""><div
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

					<!-- SEARCH READ DOCUMENTATION 搜索功能 注释掉
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
					</ul>-->
					<!-- cd-header-buttons 搜索功能 注释掉
					<div id="cd-search" class="cd-search">
						<form class="form-search" id="searchForm"
							action="page-search-results.html" method="get">
							<input type="text" value="" name="q" id="q"
								placeholder="Search...">
						</form>
					</div>-->

				</div>
				<!-- END header-wrapper -->

			</header>
			<!-- PAGE TITLE LARGE 2 GRAY -->
			<div class="page-title-cont page-title-large2-cont bg-gray"
				style="padding-top: 120px">
				<div class="relative container align-left">
					<div class="row" style="font-size: 13px;">

						<div class="col-md-6">
							<h1 class="local-page-title" style="margin: 0 0 0 0">安省提名技术移民</h1>
							<div class="row" style="margin-top: 30px">
								<div class="col-xs-3 font-bold">项目简介</div>
								<div class="col-xs-9 row-margin detail-width">
									<p style="margin: 0 0 -2px;">加拿大安大略省省提名项目 Ontario Immigrant
										Nominee Program，简称
										OINP。安省省提名包含多个类别：商业类，雇主类，非雇主类，中国申请人一般申请非雇主类，其中EE
										HCP技能优先类别（Human Capital Priorities Stream）是比较常见的一个类别。
										HCP类别不限制申请人职业（Regulated职业除外），安省从EE系统筛选总分数达到400分的申请人，收到安省邀请后再提交申请。安省提名批准后向加拿大联邦申请永居签证，在线递交申请后一般联邦审理周期6个月内签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。</p>
								</div>
							</div>
						</div>

						<div class="col-md-6 ">

							<div class="row" style="margin-top: 67px">
								<div class="col-xs-3 font-bold">签证类型</div>
								<div class="col-xs-3 row-margin">PR/工签+PR</div>
								<div class="col-xs-3 font-bold row-margin-label">办理周期</div>
								<div class="col-xs-3 row-margin">2年</div>
							</div>
							<div class="row">
								<div class="col-xs-3 font-bold">总费用</div>
								<div class="col-xs-3 row-margin">XXX</div>
								<div class="col-xs-3 font-bold row-margin-label">居住要求</div>
								<div class="col-xs-3 row-margin">5年2年</div>
							</div>
							<div class="row">
								<div class="col-xs-3 font-bold">状态</div>
								<div class="col-xs-3 row-margin">开放</div>
								<div class="col-xs-3 font-bold row-margin-label">政策来源</div>
								<div class="col-xs-3 row-margin">
									<a
										href="http://www.ontarioimmigration.ca/en/pnp/OI_PNPABOUT.html ">http://www.ontarioimmigration.ca/</a>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<%-- <div style="position:fixed;right:0px;height:40px;width:40px;border:1px solid rgb(234,234,234);">
				<img src="<%=basePath%>img/detail/share.png" width="40px"
					height="40px">
			</div> --%>

		<!-- <div id="pordAttr" class="small-tab"> -->
		<div id="pordAttr" class="bs-sidebar clearfix small-tab"
			role="complementary">
			<ul id="nav-sidebar-small"
				class="nav bs-sidenav2 blog-categories2 font-poppins"
				style="margin-top: 5px">
				<li class="current li-style-long-margin"><a href="#heading">政策解读</a></li>
				<li class="li-style-margin"><a href="#dropcaps">申请流程</a></li>
				<li class="li-style-margin"><a href="#blockquotes">申请条件</a></li>
				<li class="li-style-margin"><a href="#testimonials">材料清单</a></li>
				<li class="li-style-margin"><a href="#pricing-tables">费用详情</a></li>
			</ul>
		</div>

		<!-- COTENT CONTAINER -->
		<div class="container bs-docs-container p-140-cont"
			style="padding-top: 35px">
			<div class="row">

				<!-- SIDENAV HIDE -->
				<div class="col-md-3">
					<div id="sidebar-stiky"
						class="bs-sidebar hidden-xs hidden-sm clearfix"
						role="complementary">
						<h3 class="font-20 mt-0">新斯科舍省提名技术移民</h3>
						<ul id="nav-sidebar"
							class="nav bs-sidenav2 blog-categories2 font-poppins">
							<li class="current"><a href="#heading">政策解读</a></li>
							<li><a href="#dropcaps">申请流程</a></li>
							<li><a href="#blockquotes">申请条件</a></li>
							<li><a href="#testimonials">材料清单</a></li>
							<li><a href="#pricing-tables">费用详情</a></li>
						</ul>

					</div>
				</div>

				<!-- COTENT  -->
				<div class="col-md-9" style="font-size: 13px;">

					<!-- HEADINGS  -->
					<div id="heading" class="bs-docs-section mb-100"
						style="margin-top: 25px;">
						<div class="heading-underline h3-line">
							<h3 class="mt-0 mb-50">政策解读</h3>
						</div>

						<p style="margin-top: -20px;">加拿大安大略省省提名项目 Ontario Immigrant
							Nominee Program，简称
							OINP。安省省提名包含多个类别：商业类，雇主类，非雇主类，中国申请人一般申请非雇主类，其中EE HCP技能优先类别（Human
							Capital Priorities Stream）是比较常见的一个类别。
							HCP类别不限制申请人职业（Regulated职业除外），安省从EE系统筛选总分数达到400分的申请人，收到安省邀请后再提交申请。安省提名批准后向加拿大联邦申请永居签证，在线递交申请后一般联邦审理周期6个月内签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。</p>

						<p>2018年1月18日，安省公布2018年的配额为6600，与2017年相比增加600配额。截止目前为止2018年历次邀请的CRS分数以及人数统计如下：</p>

						<table class="table table-striped mb-40">
							<thead class="font-bold">
								<th>邀请日期</th>
								<th>邀请人数</th>
								<th>邀请分数</th>
							</thead>
							<tbody>
								<tr>
									<td>2018/2/27</td>
									<td>511</td>
									<td>433-441</td>
								</tr>
								<tr>
									<td>2018/2/13</td>
									<td>488</td>
									<td>435-441</td>
								</tr>
								<tr>
									<td>2018/2/8</td>
									<td>89</td>
									<td>433-444</td>
								</tr>
								<tr>
									<td>2018/1/26</td>
									<td>380</td>
									<td>433-444</td>
								</tr>
								<tr>
									<td>2018/1/23</td>
									<td>340</td>
									<td>440-446</td>
								</tr>
							</tbody>
						</table>
						<!-- <div class="charts" id="charts"></div> -->
					</div>

					<!-- DROPCAPS  -->
					<div id="dropcaps" class="bs-docs-section mb-100">
						<div class="heading-underline h3-line">
							<h3 class="mb-40">申请流程</h3>
						</div>
						<p class="font-bold" style="margin-top: -20px;">OINP的HCP类别申请流程​​</p>
						<p>1.确认满足EE400分以上的标准，注册提交ＥＥ申请。</p>
						<p>注册EE时意向居住地选安省或所有省份及领地；</p>
						<p>2.安省不定期发邀请，通过IRCC在线账号给申请人发邀请。</p>
						<p>3.收到邀请后４５天内在线提交安省省提名申请。</p>
						<p>4.获得安省省提名后，EE系统加600分，等待ITA。</p>
						<p>5.申请人获得移民邀请ITA后，通过在线递交正式的签证申请，此时移民部承诺大部分申请6个月以内审理完毕（从递交之日算起）。</p>

						<p class="font-bold">办理周期</p>

						<table class="table table-striped mb-40">
							<thead class="font-bold">
								<th></th>
								<th>事项</th>
								<th>周期</th>
								<th>办理内容</th>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>缴纳第一阶段咨询服务费</td>
									<td>1天</td>
									<td>签约、缴纳服务费</td>
								</tr>
								<tr>
									<td>2</td>
									<td>准备材料</td>
									<td>1~2周</td>
									<td>提交移民信息表，收集资料，缴纳第三方费用，资料处理</td>
								</tr>
								<tr>
									<td>3</td>
									<td>递交EE申请</td>
									<td>1~2周</td>
									<td>在线填写EE Profile</td>
								</tr>
								<tr>
									<td>4</td>
									<td>等待安省发送邀请</td>
									<td>不定期</td>
									<td>收到安省邀请时，EE系统内会收到一封Notification of Interest letter</td>
								</tr>
								<tr>
									<td>5</td>
									<td>递交安省省提名材料，等待省提名</td>
									<td>3-6个月</td>
									<td>提交全套申请资料后，可能有补料或者调查</td>
								</tr>
								<tr>
									<td>6</td>
									<td>获得安省省提名后，等待ITA</td>
									<td>1~2周</td>
									<td>获得安省提名后EE系统加600分，很快可以被邀请（即ITA）</td>
								</tr>
								<tr>
									<td>7</td>
									<td>准备资料递交申请签证</td>
									<td>2~4周</td>
									<td>向移民局提交全套签证材料</td>
								</tr>
								<tr>
									<td>8</td>
									<td>签证申请获批、取得签证</td>
									<td>6个月内</td>
									<td>获得永居签证，进行登录前辅导</td>
								</tr>
								<tr>
									<td>9</td>
									<td>登陆</td>
									<td>1年内</td>
									<td>登陆加拿大，开启美好海外生活</td>
								</tr>
							</tbody>
						</table>

					</div>

					<!-- BLOCKQUOTES  -->
					<div id="blockquotes" class="bs-docs-section mb-100">
						<div class="heading-underline h3-line">
							<h3 class="mb-50">申请条件</h3>
						</div>

						<p class="font-bold" style="margin-top: -20px;">OINP的HCP 申请要求：</p>
						<p>1 进入EE池子总分最低达到400分；</p>
						<p>2 至少本科学历及以上</p>
						<p>3 最近5年内至少一年全职或者等同于全职的兼职工作经验，必须属于NOC 0 A B类工作</p>
						<p>
							4 申请人的职业需要避开regulated职业 ，确认是否regulated职业参考官网 <a
								href="http://www.ontarioimmigration.ca/en/working/OI_HOW_WORK_PROF_PROFS.html">http://www.ontarioimmigration.ca/en/working/OI_HOW_WORK_PROF_PROFS.html</a>
						</p>

						<p class="font-bold">OINP的HCP评分标准</p>
						<p class="font-bold">首先满足FSWP打分，满足67分（满分100分）才能进ＥＥ池子</p>

						<p>评分标准如下：</p>
						<p>
							官方网站：<a
								href="https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers/six-selection-factors-federal-skilled-workers.html">https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers/six-selection-factors-federal-skilled-workers.html</a>
						</p>


						<table class="table table-striped mb-40" cellspacing="0">
							<tr>
								<td class="font-bold">评分项</td>
								<td colspan=4 class="font-bold">加拿大技术移民评分因素及对应评分</td>
							</tr>
							<tr>
								<td rowspan=2 class="font-bold"
									style="background-color: rgb(247, 247, 247); line-height: 40px;">语言加分</td>
								<td>第一语言CLB 7</td>
								<td>第一语言CLB 8</td>
								<td>第一语言CLB 9</td>
								<td>第二语言CLB 5</td>
							</tr>
							<tr>
								<td>4分/项</td>
								<td>5分/项</td>
								<td>6分/项</td>
								<td>1分/项</td>
							</tr>
							<tr>
								<td rowspan=6 class="font-bold"
									style="background-color: rgb(247, 247, 247); line-height: 120px;">年龄加分</td>
								<td>&lt;=35岁</td>
								<td>36岁</td>
								<td>37岁</td>
								<td>38岁</td>
							</tr>
							<tr>
								<td>12分</td>
								<td>11分</td>
								<td>10分</td>
								<td>9分</td>
							</tr>
							<tr>
								<td>39岁</td>
								<td>40岁</td>
								<td>41岁</td>
								<td>42岁</td>
							</tr>
							<tr>
								<td>8分</td>
								<td>7分</td>
								<td>6分</td>
								<td>5分</td>
							</tr>
							<tr>
								<td>43岁</td>
								<td>44岁</td>
								<td>45岁</td>
								<td>46岁</td>
							</tr>
							<tr>
								<td>4分</td>
								<td>3分</td>
								<td>2分</td>
								<td>1分</td>
							</tr>
							<tr>
								<td rowspan=2 class="font-bold"
									style="background-color: rgb(247, 247, 247); line-height: 40px;">工作加分</td>
								<td>1年</td>
								<td>2-3年</td>
								<td>4-5年</td>
								<td>6年+</td>
							</tr>
							<tr>
								<td>9分</td>
								<td>11分</td>
								<td>13分</td>
								<td>15分</td>
							</tr>
							<tr>
								<td rowspan=4 class="font-bold"
									style="background-color: rgb(247, 247, 247); line-height: 80px;">教育加分</td>
								<td>博士</td>
								<td>硕士</td>
								<td>双学历</td>
								<td>3年文凭</td>
							</tr>
							<tr>
								<td>25分</td>
								<td>23分</td>
								<td>22分</td>
								<td>21分</td>
							</tr>
							<tr>
								<td>2年文凭</td>
								<td>一年文凭</td>
								<td>高中</td>
								<td></td>
							</tr>
							<tr>
								<td>19分</td>
								<td>15分</td>
								<td>5分</td>
								<td></td>
							</tr>
							<tr>
								<td class="font-bold"
									style="background-color: rgb(247, 247, 247);">Arranged
									Employment 加分</td>
								<td colspan=4>10分</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td rowspan=4 class="font-bold" style="line-height: 80px">适应能力</td>
								<td>主申加拿大工作</td>
								<td>主申加拿大学习</td>
								<td>主副申加拿大直系亲属</td>
								<td>AEO</td>
							</tr>
							<tr>
								<td>10分</td>
								<td>5分</td>
								<td>5分</td>
								<td>5分</td>
							</tr>
							<tr>
								<td>配偶加拿大工作</td>
								<td>配偶雅思（CLB 4）</td>
								<td></td>
								<td></td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td>5分</td>
								<td>5分</td>
								<td></td>
								<td></td>
							</tr>
						</table>

						<p class="font-bold">CRS评分标准</p>
						<p>EE评分系统的CRS综合排名体系 (Comprehensive Ranking
							System)，满分1200分，主要涉及4个方面：核心要素（年龄、教育、语言和加拿大工作经验）；配偶加分（教育、语言和加拿大工作经验）；适应能力（教育、工作经验和加拿大资格证书）；雇主offer和省提名。总分
							1200=核心分数+配偶加分+适应分数+其他分数。</p>
						<p class="font-bold">下面标准适用于2016-11-19后新的 EE 评分标准。</p>


						<table class="table table-striped mb-40" cellspacing="0">
							<tr class="font-bold">
								<td>I. 核心评分要素</td>
								<td colspan=2>有配偶，最高460 分</td>
								<td colspan=2>单身，最高500 分</td>
							</tr>
							<tr class="font-bold">
								<td>年龄加分</td>
								<td colspan=2>已婚最高100分</td>
								<td colspan=2>单身最高110分</td>
							</tr>
							<tr>
								<td>未超过17周岁</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>18周岁</td>
								<td colspan=2>90</td>
								<td colspan=2>99</td>
							</tr>
							<tr>
								<td>19周岁</td>
								<td colspan=2>95</td>
								<td colspan=2>105</td>
							</tr>
							<tr>
								<td>20 - 29周岁</td>
								<td colspan=2>100</td>
								<td colspan=2>110</td>
							</tr>
							<tr>
								<td>30周岁</td>
								<td colspan=2>95</td>
								<td colspan=2>105</td>
							</tr>
							<tr>
								<td>31周岁</td>
								<td colspan=2>90</td>
								<td colspan=2>99</td>
							</tr>
							<tr>
								<td>32周岁</td>
								<td colspan=2>85</td>
								<td colspan=2>94</td>
							</tr>
							<tr>
								<td>33周岁</td>
								<td colspan=2>80</td>
								<td colspan=2>88</td>
							</tr>
							<tr>
								<td>34周岁</td>
								<td colspan=2>75</td>
								<td colspan=2>83</td>
							</tr>
							<tr>
								<td>35周岁</td>
								<td colspan=2>70</td>
								<td colspan=2>77</td>
							</tr>
							<tr>
								<td>36周岁</td>
								<td colspan=2>65</td>
								<td colspan=2>72</td>
							</tr>
							<tr>
								<td>37周岁</td>
								<td colspan=2>60</td>
								<td colspan=2>66</td>
							</tr>
							<tr>
								<td>38周岁</td>
								<td colspan=2>55</td>
								<td colspan=2>61</td>
							</tr>
							<tr>
								<td>39周岁</td>
								<td colspan=2>50</td>
								<td colspan=2>55</td>
							</tr>
							<tr>
								<td>40周岁</td>
								<td colspan=2>45</td>
								<td colspan=2>50</td>
							</tr>
							<tr>
								<td>41周岁</td>
								<td colspan=2>35</td>
								<td colspan=2>39</td>
							</tr>
							<tr>
								<td>42周岁</td>
								<td colspan=2>25</td>
								<td colspan=2>28</td>
							</tr>
							<tr>
								<td>43周岁</td>
								<td colspan=2>15</td>
								<td colspan=2>17</td>
							</tr>
							<tr>
								<td>44周岁</td>
								<td colspan=2>5</td>
								<td colspan=2>6</td>
							</tr>
							<tr>
								<td>45周岁 or more</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr class="font-bold">
								<td>教育加分</td>
								<td colspan=2>已婚最高140分</td>
								<td colspan=2>单身最高150分</td>
							</tr>
							<tr>
								<td>初中以下</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>初高中</td>
								<td colspan=2>28</td>
								<td colspan=2>30</td>
							</tr>
							<tr>
								<td>一年高等教育</td>
								<td colspan=2>84</td>
								<td colspan=2>90</td>
							</tr>
							<tr>
								<td>二年高等教育</td>
								<td colspan=2>91</td>
								<td colspan=2>98</td>
							</tr>
							<tr>
								<td>三年及以上高等教育</td>
								<td colspan=2>112</td>
								<td colspan=2>120</td>
							</tr>
							<tr>
								<td>两个以上高等教育且其<span>中一个为3年制及以上</span></td>
								<td colspan=2>119</td>
								<td colspan=2>128</td>
							</tr>
							<tr>
								<td>硕士</td>
								<td colspan=2>126</td>
								<td colspan=2>135</td>
							</tr>
							<tr>
								<td>博士</td>
								<td colspan=2>140</td>
								<td colspan=2>150</td>
							</tr>
							<tr class="font-bold">
								<td>第一语言，单项</td>
								<td colspan=2>已婚最高128分</td>
								<td colspan=2>单身最高136分</td>
							</tr>
							<tr>
								<td>Less than CLB 4，</td>
								<td colspan=2>0分/项</td>
								<td colspan=2>0分/项</td>
							</tr>
							<tr>
								<td>CLB 4 or 5</td>
								<td colspan=2>6分/项</td>
								<td colspan=2>6分/项</td>
							</tr>
							<tr>
								<td>CLB 6</td>
								<td colspan=2>8分/项</td>
								<td colspan=2>9分/项</td>
							</tr>
							<tr>
								<td>CLB 7</td>
								<td colspan=2>16分/项</td>
								<td colspan=2>17分/项</td>
							</tr>
							<tr>
								<td>CLB 8</td>
								<td colspan=2>22分/项</td>
								<td colspan=2>23分/项</td>
							</tr>
							<tr>
								<td>CLB 9</td>
								<td colspan=2>29分/项</td>
								<td colspan=2>31分/项</td>
							</tr>
							<tr>
								<td>CLB 10 or more</td>
								<td colspan=2>32分/项</td>
								<td colspan=2>34分/项</td>
							</tr>
							<tr class="font-bold">
								<td>第二语言，单项</td>
								<td colspan=2>已婚最高22分</td>
								<td colspan=2>单身最高24分</td>
							</tr>
							<tr>
								<td>CLB 4 or less</td>
								<td colspan=2>0分/项</td>
								<td colspan=2>0分/项</td>
							</tr>
							<tr>
								<td>CLB 5 or 6</td>
								<td colspan=2>1分/项</td>
								<td colspan=2>1分/项</td>
							</tr>
							<tr>
								<td>CLB 7 or 8</td>
								<td colspan=2>3分/项</td>
								<td colspan=2>3分/项</td>
							</tr>
							<tr>
								<td>CLB 9 or more</td>
								<td colspan=2>6分/项</td>
								<td colspan=2>6分/项</td>
							</tr>
							<tr class="font-bold">
								<td>加拿大工作经验加分</td>
								<td colspan=2>已婚最高70分</td>
								<td colspan=2>单身最高80分</td>
							</tr>
							<tr>
								<td>不到一年</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>1 年</td>
								<td colspan=2>35</td>
								<td colspan=2>40</td>
							</tr>
							<tr>
								<td>2 年</td>
								<td colspan=2>46</td>
								<td colspan=2>53</td>
							</tr>
							<tr>
								<td>3 年</td>
								<td colspan=2>56</td>
								<td colspan=2>64</td>
							</tr>
							<tr>
								<td>4 年</td>
								<td colspan=2>63</td>
								<td colspan=2>72</td>
							</tr>
							<tr>
								<td>5 年及以上</td>
								<td colspan=2>70</td>
								<td colspan=2>80</td>
							</tr>
							<tr class="font-bold">
								<td>II. 配偶加分</td>
								<td colspan=2>有配偶，最高40分</td>
								<td colspan=2>单身不适用</td>
							</tr>
							<tr class="font-bold">
								<td>配偶教育加分</td>
								<td colspan=2>最高10分</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>初中以下</td>
								<td colspan=2>0</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>初高中</td>
								<td colspan=2>2</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>一年高等教育</td>
								<td colspan=2>6</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>二年高等教育</td>
								<td colspan=2>7</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>三年及以上高等教育</td>
								<td colspan=2>8</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>两个以上高等教育且其<span>中一个为3年制及以上</span></td>
								<td colspan=2>9</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>硕士</td>
								<td colspan=2>10</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>博士</td>
								<td colspan=2>10</td>
								<td colspan=2></td>
							</tr>
							<tr class="font-bold">
								<td>配偶第一语言加分</td>
								<td colspan=2>最高20分</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>CLB 4 or less</td>
								<td colspan=2>0分/项</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>CLB 5 or 6</td>
								<td colspan=2>1分/项</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>CLB 7 or 8</td>
								<td colspan=2>3分/项</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>CLB 9 or more</td>
								<td colspan=2>5分/项</td>
								<td colspan=2></td>
							</tr>
							<tr class="font-bold">
								<td>配偶加拿大工作经验</td>
								<td colspan=2>最高10分</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>不到一年</td>
								<td colspan=2>0</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>1 年</td>
								<td colspan=2>5</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>2 年</td>
								<td colspan=2>7</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>3 年</td>
								<td colspan=2>8</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>4 年</td>
								<td colspan=2>9</td>
								<td colspan=2></td>
							</tr>
							<tr>
								<td>5 年及以上</td>
								<td colspan=2>10</td>
								<td colspan=2></td>
							</tr>
							<tr class="font-bold">
								<td colspan=5>III. 加拿大技术移民适应分，最高100，对加拿大工作，学历，语言及海外学历综合评分</td>
							</tr>
							<tr class="font-bold">
								<td colspan=5>备注：以下五项评分中，一和二总分最高为50分，三和四总分最高为50分，所有项总分最高100分！</td>
							</tr>
							<tr class="font-bold">
								<td>一、学历奖励分，基于<span>语言,50</span></td>
								<td colspan=2>第一语言单项都达到CLB 7的学历奖励分</td>
								<td colspan=2>第一语言单项都达到CLB 9学历奖励分</td>
							</tr>
							<tr>
								<td>中学 (levels 1&amp;2)</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>一年及以上高等教育(lev<span>els 3,4 &amp; 5)</span></td>
								<td colspan=2>13</td>
								<td colspan=2>25</td>
							</tr>
							<tr>
								<td>两个及以上高等学历且<span>一个学历年制超过3年(levels 6,7 &amp; 8)</span></td>
								<td colspan=2>25</td>
								<td colspan=2>50</td>
							</tr>
							<tr class="font-bold">
								<td>二、学历奖励分，基于<span>加拿大工作，50</span></td>
								<td colspan=2>有一年以上加拿大工作经验的学历奖励分</td>
								<td colspan=2>有二年以上加拿大工作经验的学历奖励分</td>
							</tr>
							<tr>
								<td>中学 (levels 1&amp;2)</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>一年及以上高等教育(lev<span>els 3,4 &amp; 5)</span></td>
								<td colspan=2>13</td>
								<td colspan=2>25</td>
							</tr>
							<tr>
								<td>两个及以上高等学历且<span>一个学历年制超过3年(levels 6,7 &amp; 8)</span></td>
								<td colspan=2>25</td>
								<td colspan=2>50</td>
							</tr>
							<tr class="font-bold">
								<td>三、工作分，基于语言<span>，50</span></td>
								<td colspan=2>第一语言单项都达到 CLB 7 的海外工作经验加分</td>
								<td colspan=2>第一语言单项都达到 CLB 9 的海外工作经验加分</td>
							</tr>
							<tr>
								<td>无加拿大外工作经验</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>1-2年加拿大外工作</td>
								<td colspan=2>13</td>
								<td colspan=2>25</td>
							</tr>
							<tr>
								<td>3年以上加拿大外工作</td>
								<td colspan=2>25</td>
								<td colspan=2>50</td>
							</tr>
							<tr class="font-bold">
								<td>四、工作分，有加拿大<span>工作，50</span></td>
								<td colspan=2>有1年加拿大工作经验的海外工作奖励加分</td>
								<td colspan=2>有2年加拿大工作经验的海外工作奖励加分</td>
							</tr>
							<tr>
								<td>无加拿大外工作经验</td>
								<td colspan=2>0</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>1-2年加拿大外工作</td>
								<td colspan=2>13</td>
								<td colspan=2>25</td>
							</tr>
							<tr>
								<td>3年以上加拿大外工作</td>
								<td colspan=2>25</td>
								<td colspan=2>50</td>
							</tr>
							<tr class="font-bold">
								<td>五、加拿大技工职业证<span>书及官方语言，50</span></td>
								<td colspan=2>语言单项不低于 CLB 5 且有一项达到 7</td>
								<td colspan=2>语言单项都达到 CLB 7</td>
							</tr>
							<tr>
								<td>持有加拿大技工 certific<span>ate of qualification</span></td>
								<td colspan=2>25</td>
								<td colspan=2>50</td>
							</tr>
							<tr class="font-bold">
								<td>IV. 其他加分 Additional<span> points</span></td>
								<td colspan=4>Maximum 600 points</td>
							</tr>
							<tr>
								<td>加拿大公民或永居的兄<span>弟姐妹</span></td>
								<td colspan=4>15</td>
							</tr>
							<tr>
								<td>法语 NCLC 7 级同时英<span>语 CLB 4级</span></td>
								<td colspan=4>15</td>
							</tr>
							<tr>
								<td>法语 NCLC 7 级同时英<span>语 CLB 5级</span></td>
								<td colspan=4>30</td>
							</tr>
							<tr>
								<td>1-2年加拿大高等学历</td>
								<td colspan=4>15</td>
							</tr>
							<tr>
								<td>3 年及以上加拿大高等<span>教育</span></td>
								<td colspan=4>30</td>
							</tr>
							<tr>
								<td>NOC 00 开头高管职业<span>雇佣安排</span></td>
								<td colspan=4>200（获得 LMIA 或已经在加拿大工作一年以上）</td>
							</tr>
							<tr>
								<td>其他 NOC 0，A，B 职<span>业雇佣安排</span></td>
								<td colspan=4>50（获得 LMIA 或已经在加拿大工作一年以上）</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td>EE 下省提名</td>
								<td colspan=4>600</td>
							</tr>
						</table>

						<p class="font-bold">
							NS紧缺职业清单，参考布谷网站上NS省职业列表 <a href="https://www.kukoo.org/ns">https://www.kukoo.org/ns</a>
						</p>
						<p class="font-bold">
							官方说明参看链接 <a
								href="https://novascotiaimmigration.com/wp-content/uploads/Demand-AppGuide-English-1.pdf
								Page5">https://novascotiaimmigration.com/wp-content/uploads/Demand-AppGuide-English-1.pdf
								Page5</a>
						</p>

					</div>
					<!-- end section  -->

					<!-- TESTIMONIALS  -->
					<div id="testimonials" class="bs-docs-section mb-100">
						<div class="heading-underline h3-line">
							<h3 class="mb-40">材料清单</h3>
						</div>

						<table class="table table-striped mb-40"
							style="margin-top: -20px;" cellspacing="0">
							<thead>
								<th>材料</th>
								<th>主申/副申/子女</th>
								<th>是否必须</th>
								<!-- <th>样例及说明</th> -->
							</thead>
							<tbody>
							<tr>
								<td>移民信息表</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>安省NOI意向信</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>整本护照扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>结婚证公证扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>身份证正反面扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>主副申请出生公证扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>子女出生医学证明扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>户口本公证扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>移民照片电子版</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业证/学位证公证扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业成绩单公证扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>加拿大对等学历认证件扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>雅思或TEF成绩单扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>个人简历</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>签字工作证明信扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>工资单、个税、社保、聘用合同公证扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>资金证明原件扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>银行流水扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>安省居住意向信</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>全套签字申请表</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>无犯罪公证扫描件（签证阶段需要）</td>
								<td></td>
								<td>是</td>
							</tr>
							</tbody>
						</table>


					</div>
					<!-- end section  -->

					<!-- PRICING TABLES  -->
					<div id="pricing-tables" class="mb-100 bs-docs-section">
						<div class="heading-underline h3-line">
							<h3 class="mb-40">费用详情</h3>
						</div>

						<p class="font-bold" style="margin-top: -20px;">总共涉及的资金：一人办理约5.2万
							人民币 三口之家办理约6万人民币，其中：</p>
						<p>* 布谷服务费：4万人民币</p>
						<p>* 官方及第三方费用：1.2-2万人民币</p>


						<table class="table table-striped mb-40" cellspacing="0">
							<thead>
								<th>费用详情</th>
								<th>费用项</th>
								<th>收费机构</th>
								<th>金额</th>
								<th>收费时间/阶段</th>
								<th>退款标准</th>
							</thead>
							<tbody>
								<tr>
									<td>咨询服务费</td>
									<td>咨询服务费</td>
									<td>布谷</td>
									<td>4万人民币</td>
									<td>签约</td>
									<td>可退</td>
								</tr>
								<tr>
									<td>第三方费用</td>
									<td>翻译、公证费</td>
									<td>相关机构</td>
									<td>按量收取，1000-3000人民币/户</td>
									<td>递交申请前支付</td>
									<td>不退</td>
								</tr>
								<tr>
									<td>第三方费用</td>
									<td>学历认证费</td>
									<td>学历认证机构</td>
									<td>按量收取，1600-3000人民币/份</td>
									<td>递交申请前支付</td>
									<td>不退</td>
								</tr>
								<tr>
									<td style="line-height: 40px">官方费用</td>
									<td style="line-height: 40px">省申请费</td>
									<td style="line-height: 40px">省政府</td>
									<td>萨省300加币/家庭，安省1500加币/家庭，NB省250加币/家庭     魁省主申请785加币，随同人员每人168加币</td>
									<td style="line-height: 40px">递交申请前支付</td>
									<td style="line-height: 40px">不退</td>
								</tr>
								<tr>
									<td rowspan="3" style="line-height: 60px">官方费用</td>
									<td rowspan="3" style="line-height: 60px">申请费</td>
									<td rowspan="3" style="line-height: 60px">加拿大联邦移民局</td>
									<td>主申请人：550加币/人</td>
									<td rowspan="3" style="line-height: 60px">递交申请前支付</td>
									<td rowspan="3" style="line-height: 60px">不退</td>
								</tr>
								<tr>
									<td style="background-color: rgb(247,247,247)">随行配偶：550加币/人</td>
								</tr>
								<tr>
									<td>随行未满22周岁子女：150加币/人</td>
								</tr>
								<tr>
									<td>官方费用</td>
									<td>登陆费</td>
									<td>加拿大联邦移民局</td>
									<td>申请人和配偶：490加币/人（未婚随行子女不交）</td>
									<td>获批登陆前</td>
									<td>未登录可退</td>
								</tr>
								<tr
									style="background-color: rgb(247,247,247); border-bottom: 1px solid #ddd;">
									<td rowspan="2" style="line-height: 40px">第三方费用</td>
									<td rowspan="2" style="line-height: 40px">体检费</td>
									<td rowspan="2" style="line-height: 40px">指定体检医院</td>
									<td>15周岁以上：1700人民币/人</td>
									<td rowspan="2" style="line-height: 40px">申请签证前</td>
									<td rowspan="2" style="line-height: 40px">不退</td>
								</tr>
								<tr
									style="background-color: rgb(247,247,247); border-bottom: 1px solid #ddd;">
									<td>15周岁以下：500-1250人民币/人</td>
								</tr>
							</tbody>
						</table>
						<p class="font-bold">备注：</p>
						<p>1. 以上涉及的翻译、公证、认证可委托布谷办理或自行办理</p>
						<p>2. 因移民局或第三方代办机构调整费用，以及客户文件的数量不同，以上费用以实际发生为准</p>
						<p>3. 汇率按照1:5计算</p>
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

			var elm = $('#pordAttr');
			var startPos = $(elm).offset().top;
			$.event.add(window, "scroll", function() {
				var p = $(window).scrollTop();
				$(elm).css('position', ((p) > startPos) ? 'fixed' : 'static');
				$(elm).css('top', ((p) > startPos) ? '0px' : '');
			});

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
			$('#nav-sidebar-small').onePageNav({
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
			/* var //offsetSb = $('.page-title-bg').height(),
			offsetFooter = $('#footer-offset').height() + 30; */
			if (document.body.clientWidth > 1024) {
				var offsetFooter = $('#footer-offset').height() + 30;
			}

			// DM Menu
			jQuery('#sidebar-stiky').affix({
				offset : {
					top : 390, //top offset for header 1 for others headers it will have other value
					bottom : offsetFooter
				}
			});
			jQuery('#pordAttr').affix({
				offset : {
					top : 390, //top offset for header 1 for others headers it will have other value
					bottom : offsetFooter
				}
			});

		});
		/* var myChart = echarts.init(document.getElementById("charts"));
		var chartsCopy = echarts.init(document.getElementById("chartsCopy"));
		option = {
			    title: {
			        text: ''
			    },
			    tooltip: {
			        trigger: 'axis'
			    },
			    color:['#DDBF5C','rgb(234,234,234)'], 
			    legend: {
			        data:['EE分数','EE人数']
			    },
			    grid: {
			        left: '3%',
			        right: '4%',
			        bottom: '3%',
			        containLabel: true
			    },
			    toolbox: {
			        feature: {
			            saveAsImage: {}
			        },
			        x:'700'
			    },
			    xAxis: {
			    		splitLine:{show: false},
			        type: 'category',
			        boundaryGap: false,
			        data: ['	2015/1/31','2015/2/7	','2015/2/20','2015/2/27','2015/3/20','2015/3/27','2015/4/10',
			        		   '2015/4/17','2015/5/22','2015/6/12','2015/6/26','2015/7/10	','2015/7/17','2015/8/7',
			        		   '2015/8/21','2015/9/8','2015/9/18','2015/10/2','2015/10/23','2015/11/13','2015/11/27',
			        		   '2015/12/4','2015/12/18','2016/1/6','2016/1/13','2016/1/27	','2016/2/10','2016/2/24',
			        		   '2016/3/9','2016/3/23','2016/4/6','2016/4/20','2016/5/6','	2016/5/18','2016/6/1',
			        		   '2016/6/15','2016/6/29','2016/7/13','2016/7/27','2016/8/10','2016/8/24','2016/9/7',
			        		   '2016/9/21','2016/10/12','2016/10/19','2016/11/2','2016/11/16','2016/11/30','2016/12/16',
			        		   '	2016/12/22','2017/1/4','2017/1/11','2017/1/25','2017/2/8','2017/2/22','2017/3/1',
			        		   '	2017/3/24','	2017/4/5','2017/4/12','2017/4/19','2017/5/4','2017/5/17','2017/5/31',
			        		   '	2017/6/28','	2017/7/12','2017/8/2','2017/8/9','2017/8/23','2017/9/6']
			    },
			    yAxis: {
			    		splitLine:{show: false},
			        type: 'value'
			    },
			    series: [
			        {
			            name:'EE人数',
			            type:'line',
			            itemStyle:{  
		                    normal : {  
		                        lineStyle:{  
		                            color:'rgb(234,234,234)'  
		                        }  
		                    }  
		                },
			            data:[779,779,849,1187,1620,1637,925,715,1361,1501,1575,1516,1581,1402,1535,1517,1545,
			            		  1530,1502,1506,1559,1451,1503,1463,1518,1468,1505,1484,1013,1014,954,1018,799,
			            		  763,762,752,773,747,755,754,750,1000,1288,1518,1804,2080,2427,559,1936,2878,2902,
			            		  3334,3508,3664,3611,3884,3749,3753,3923,3665,3796,3687,3877,3409,3202,3264,2991,3035,2772]
			        },
			        {
			            name:'EE分数',
			            type:'line',
			            itemStyle:{  
		                    normal : {  
		                        lineStyle:{  
		                            color:'#DDBF5C'  
		                        }  
		                    }  
		                },
			            data:[886,818,808,735,481,453,469,453,755,482,469,463,451,471,456,459,450,450,489,484,472,461,
			            		  460,461,453,457,459,453,473,470,470,468,534,484,483,488,482,482,488,490,538,491,483,484,
			            		  475,472,470,786,497,475,468,459,453,447,441,434,441,431,423,415,423,415,413,449,440,441,433,434,435]
			        }
			    ]
			};
		
		
		myChart.setOption(option);
		chartsCopy.setOption(option); */
	</script>

	<!-- JS end -->
</body>

</html>