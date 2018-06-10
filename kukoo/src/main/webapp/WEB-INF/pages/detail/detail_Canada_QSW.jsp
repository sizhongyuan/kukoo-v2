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
	width: 450px;
}

@media ( max-width : 1024px) {
	#blockquotes table tr td:first-child {
		width: 200px;
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
							<h1 class="local-page-title" style="margin: 0 0 0 0">魁北克省技术移民</h1>
							<div class="row" style="margin-top: 30px">
								<div class="col-xs-3 font-bold">项目简介</div>
								<div class="col-xs-9 row-margin detail-width">
									<p style="margin: 0 0 -2px;">魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQ
										Certificat de sélection du Québec (CSQ – Québec selection
										certificate)-魁北克移民甄选。魁北克常规技术移民Regular selection program for
										skilled
										workers就是通过申请人自身的技术和才能移民魁北克，只要申请人有一定的法语、英文能力及学历，且目前所从事的职业及专长是魁北克就业市场所需要的，即可以有资格申请。</p>
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
										href="https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers.html">https://www.canada.ca/</a>
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
						<h3 class="font-20 mt-0">魁北克省技术移民</h3>
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

						<p style="margin-top: -20px;">魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQ
							Certificat de sélection du Québec (CSQ – Québec selection
							certificate)-魁北克移民甄选。魁北克常规技术移民Regular selection program for
							skilled
							workers就是通过申请人自身的技术和才能移民魁北克，只要申请人有一定的法语、英文能力及学历，且目前所从事的职业及专长是魁北克就业市场所需要的，即可以有资格申请。</p>
						<p>魁北克自2016年开始实施在线申请，通过Mon project Québec提交申请，每年都有名额限制。</p>
						<p>2016年10000名额，分两次开放，6.13开放5000个 8.16开放5000个</p>
						<p>2017年5000个名额未开放，预计2018年名额和2017年名额累计一起开放</p>

						<!-- <div class="charts" id="charts"></div> -->
					</div>

					<!-- DROPCAPS  -->
					<div id="dropcaps" class="bs-docs-section mb-100">
						<div class="heading-underline h3-line">
							<h3 class="mb-40">申请流程</h3>
						</div>

						<p class="font-bold" style="margin-top: -20px;">1.确认满足QSW评分标准（单身通过分50分，已婚通过分59分）。</p>
						<p>2.注册Mon project Québe帐号，在线系统录入申请信息。</p>
						<p>3.等待开放名额，提交移民申请。</p>
						<p>4.通过初审后，魁省通知递交移民资料。</p>
						<p>5.审批通过获得CSQ（可能有面试）。</p>
						<p>6.递交联邦阶段签证申请。</p>
						<p>获得CSQ后，联邦阶段周期6-12个月（从递交之日算起）。</p>

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
									<td>完成MPQ申请</td>
									<td>1周</td>
									<td>在线填写MPQ</td>
								</tr>
								<tr>
									<td>4</td>
									<td>获得CSQ</td>
									<td>1.5-2年</td>
									<td>从抢到名额开始算</td>
								</tr>
								<tr>
									<td>5</td>
									<td>申请签证资料</td>
									<td>2~4周</td>
									<td>向联邦CIO提交全套材料</td>
								</tr>
								<tr>
									<td>6</td>
									<td>获批、取得签证</td>
									<td>6~12个月</td>
									<td>获得永居签证，进行登录前辅导</td>
								</tr>
								<tr>
									<td>7</td>
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

						<p class="font-bold" style="margin-top: -20px;">QSW评分标准</p>
						<p class="font-bold">一 工作经验</p>
						<p>1 至少有半年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 工作年限按照从事职业类别计算，必须是NOC中 0, A B or C类职业；</p>
						<p>4 只计算近5年的工作经历</p>
						<p class="font-bold">二 语言能力</p>
						<p>法语和英语不做强制要求，只要申请人各项打分总分满足通过分即可。</p>
						<p class="font-bold">三 学历要求</p>
						<p>比较宽松，目前不需要做学历认证，认可私立学校以及社会办学证书；</p>
						<p class="font-bold">四 QSW打分已婚59分，单身50分即可通过</p>
						<p class="font-bold">QSW评分标准如下所示：</p>

						<table class="table table-striped mb-40">
							<tr class="font-bold">
								<td>学历</td>
								<td colspan=2>最高分14分</td>
							</tr>
							<tr>
								<td>Secondaire général 普通高中</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>Secondaire professionnel 职业高中</td>
								<td colspan=2>6</td>
							</tr>
							<tr>
								<td>Postsecondaire général 2 ans 2年的普通专科</td>
								<td colspan=2>4</td>
							</tr>
							<tr>
								<td>Postsecondaire technique 1 an ou 2 ans
									1-2年技术专科</td>
								<td colspan=2>6</td>
							</tr>
							<tr>
								<td>Postsecondaire technique 3 ans 三年技术专科</td>
								<td colspan=2>8</td>
							</tr>
							<tr>
								<td>Universitaire 1 er cycle 1 an 一年学制本科</td>
								<td colspan=2>4</td>
							</tr>
							<tr>
								<td>Universitaire 1 er cycle 2 ans 两年学制本科</td>
								<td colspan=2>6</td>
							</tr>
							<tr>
								<td>Universitaire 1 er cycle 3 ans ou+ 三年学制本科</td>
								<td colspan=2>10</td>
							</tr>
							<tr>
								<td>Universitaire 2 ième cycle 1 an ou + 硕士</td>
								<td colspan=2>12</td>
							</tr>
							<tr>
								<td>Universitaire 3 ième cycle 博士</td>
								<td colspan=2>14</td>
							</tr>
							<tr class="font-bold">
								<td>受训领域</td>
								<td colspan=2 >最高分12分</td>
							</tr>
							<tr>
								<td>按照学历专业加分，参考受训清单列表</td>
								<td colspan=2>0，2，6，9 或 12</td>
							</tr>
							<tr class="font-bold">
								<td>工作</td>
								<td colspan=2>最高分8分</td>
							</tr>
							<tr>
								<td>不足6个月</td>
								<td colspan=2>0</td>
							</tr>
							<tr>
								<td>6-23个月</td>
								<td colspan=2>4</td>
							</tr>
							<tr>
								<td>24-47个月</td>
								<td colspan=2>6</td>
							</tr>
							<tr>
								<td>48个月及以上</td>
								<td colspan=2>8</td>
							</tr>
							<tr class="font-bold">
								<td>年龄</td>
								<td colspan=2>最高分16分</td>
							</tr>
							<tr>
								<td>18-35岁</td>
								<td colspan=2>16</td>
							</tr>
							<tr>
								<td>36周岁</td>
								<td colspan=2>14</td>
							</tr>
							<tr>
								<td>37周岁</td>
								<td colspan=2>12</td>
							</tr>
							<tr>
								<td>38周岁</td>
								<td colspan=2>10</td>
							</tr>
							<tr>
								<td>39周岁</td>
								<td colspan=2>8</td>
							</tr>
							<tr>
								<td>40周岁</td>
								<td colspan=2>6</td>
							</tr>
							<tr>
								<td>41周岁</td>
								<td colspan=2>4</td>
							</tr>
							<tr>
								<td>42周岁</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>43周岁及以上</td>
								<td colspan=2>0</td>
							</tr>
							<tr class="font-bold">
								<td>法语</td>
								<td colspan=2>最高分16分</td>
							</tr>
							<tr>
								<td>法语-听力</td>
								<td colspan=2>0，5，6，7</td>
							</tr>
							<tr>
								<td>法语-口语</td>
								<td colspan=2>0，5，6，7</td>
							</tr>
							<tr>
								<td>法语-阅读</td>
								<td colspan=2>0，1</td>
							</tr>
							<tr>
								<td>法语-写作</td>
								<td colspan=2>0，1</td>
							</tr>
							<tr class="font-bold">
								<td>英语</td>
								<td colspan=2>最高分6分</td>
							</tr>
							<tr>
								<td>英语-听力</td>
								<td colspan=2>0，1，2</td>
							</tr>
							<tr>
								<td>英语-口语</td>
								<td colspan=2>0，1，2</td>
							</tr>
							<tr>
								<td>英语-阅读</td>
								<td colspan=2>0，1</td>
							</tr>
							<tr>
								<td>英语-写作</td>
								<td colspan=2>0，1</td>
							</tr>
							<tr class="font-bold">
								<td>魁北克停留</td>
								<td colspan=2>最高分5分</td>
							</tr>
							<tr>
								<td>Travailleur étranger ou étudiant étranger 6 mois ou +<br>
									魁省工作或者学习6个月以上
								</td>
								<td colspan=2>5</td>
							</tr>
							<tr>
								<td>Travailleu r étranger ou étudiant étranger 3 mois à
									moins de 6 mois<br> 魁省工作或者学习3-6个月
								</td>
								<td colspan=2>5</td>
							</tr>
							<tr>
								<td>Participant à un PVT aux fins de travail 3
									mois ou +<br> 魁省打工度假停留3个月以上
								</td>
								<td colspan=2>5</td>
							</tr>
							<tr>
								<td>Autres séjours 3 mois ou + 其它停留3个月</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>Autres séjours (2 semaines à moins de 3
									mois 其它停留2周-3个月</td>
								<td colspan=2>1</td>
							</tr>
							<tr class="font-bold">
								<td>魁北克亲属</td>
								<td colspan=2>最高分3分</td>
							</tr>
							<tr>
								<td>直系亲属：配偶，兄弟姐妹，父母，祖父母</td>
								<td colspan=2>3</td>
							</tr>
							<tr class="font-bold">
								<td>配偶加分</td>
								<td colspan=2>最高分17分</td>
							</tr>
							<tr class="font-bold">
								<td>学历</td>
								<td colspan=2>最高分4分</td>
							</tr>
							<tr>
								<td>Secondaire général 普通高中</td>
								<td colspan=2>1</td>
							</tr>
							<tr>
								<td>Secondaire professionnel 职业高中</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>Postsecondaire général 2 ans 2年的普通专科</td>
								<td colspan=2>1</td>
							</tr>
							<tr>
								<td>Postsecondaire technique 1 an ou 2 ans
									1-2年技术专科</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>Postsecondaire technique 3 ans 三年技术专科</td>
								<td colspan=2>3</td>
							</tr>
							<tr>
								<td>Universitaire 1 er cycle 1 an 一年学制本科</td>
								<td colspan=2>1</td>
							</tr>
							<tr>
								<td>Universitaire 1 er cycle 2 ans 两年学制本科</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>Universitaire 1 er cycle 3 ans ou+ 三年学制本科</td>
								<td colspan=2>3</td>
							</tr>
							<tr>
								<td>Universitaire 2 ième cycle 1 an ou + 硕士</td>
								<td colspan=2>4</td>
							</tr>
							<tr>
								<td>Universitaire 3 ième cycle 博士</td>
								<td colspan=2>4</td>
							</tr>
							<tr class="font-bold">
								<td>受训领域</td>
								<td colspan=2>最高分4分</td>
							</tr>
							<tr>
								<td>按照学历专业加分，参考受训清单列表</td>
								<td colspan=2>0，1，2, 3或4</td>
							</tr>
							<tr class="font-bold">
								<td>年龄</td>
								<td colspan=2>最高分3分</td>
							</tr>
							<tr>
								<td>18-35岁</td>
								<td colspan=2>3</td>
							</tr>
							<tr>
								<td>36周岁</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>37周岁</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>38周岁</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>39周岁</td>
								<td colspan=2>2</td>
							</tr>
							<tr>
								<td>40周岁</td>
								<td colspan=2>1</td>
							</tr>
							<tr>
								<td>41周岁</td>
								<td colspan=2>1</td>
							</tr>
							<tr>
								<td>42周岁</td>
								<td colspan=2>1</td>
							</tr>
							<tr>
								<td>43周岁及以上</td>
								<td colspan=2>0</td>
							</tr>
							<tr class="font-bold">
								<td>法语</td>
								<td colspan=2>最高分6分</td>
							</tr>
							<tr>
								<td>法语-听力</td>
								<td colspan=2>0，2或3</td>
							</tr>
							<tr>
								<td>法语-口语</td>
								<td colspan=2>0，2或3</td>
							</tr>
							<tr class="font-bold">
								<td>魁省有效工作offer</td>
								<td colspan=2>最高分10分</td>
							</tr>
							<tr>
								<td>Offre d'emploi validée dans la
									RMM蒙特利尔地区offer</td>
								<td colspan=2>8</td>
							</tr>
							<tr>
								<td>Offre d'emploi validée à l’extérieur de la
									RMM蒙特利尔之外地区offer</td>
								<td colspan=2>10</td>
							</tr>
							<tr class="font-bold">
								<td>最低分要求</td>
								<td colspan=2>单身43/已婚52</td>
							</tr>
							<tr class="font-bold">
								<td>子女加分</td>
								<td colspan=2>最高分8分</td>
							</tr>
							<tr>
								<td>12岁以下子女</td>
								<td colspan=2>4</td>
							</tr>
							<tr>
								<td>13-21岁子女</td>
								<td colspan=2>2</td>
							</tr>
							<tr class="font-bold">
								<td>财政自足能力</td>
								<td colspan=2>最高分1分</td>
							</tr>
							<tr>
								<td>签署财政能力表格</td>
								<td colspan=2>1</td>
							</tr>
							<tr class="font-bold">
								<td>通过分</td>
								<td colspan=2>单身50/已婚59</td>
							</tr>
						</table>


						<p class="font-bold">受训清单列表参考布谷网站：<a href="https://www.kukoo.org/qc">https://www.kukoo.org/qc</a>   培训加分</p>
						<p class="font-bold">魁北克官网受训列表链接：<a href="http://www.immigration-quebec.gouv.qc.ca/publications/en/diverses/list-training.pdf">http://www.immigration-quebec.gouv.qc.ca/publications/en/diverses/list-training.pdf</a></p>
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
								<!-- <td></td> -->
							</tr>
							<tr>
								<td>护照复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>护照</td> -->
							</tr>
							<tr>
								<td>身份证复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>身份证</td> -->
							</tr>
							<tr>
								<td>出生医学证明复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>子女出生医学证明</td> -->
							</tr>
							<tr>
								<td>户口本复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>户口本</td> -->
							</tr>
							<tr>
								<td>照片</td>
								<td></td>
								<td>是</td>
								<!-- <td>照片指引</td> -->
							</tr>
							<tr>
								<td>最高全日制学历的毕业证/学位证复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>学历学位证</td> -->
							</tr>
							<tr>
								<td>最高全日制学历的毕业成绩单复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>--</td> -->
							</tr>
							<tr>
								<td>雅思或TEF成绩原件</td>
								<td></td>
								<td>是</td>
								<!-- <td>雅思成绩单</td> -->
							</tr>
							<tr>
								<td>近十年所有工作证明信复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>--</td> -->
							</tr>
							<tr>
								<td>聘用合同复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>--</td> -->
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td>近十年所有个税税单复印件</td>
								<td></td>
								<td>是</td>
								<!-- <td>个人所得税完税证明</td> -->
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

						<p class="font-bold" style="margin-top: -20px;">总共涉及的资金：一人办理约5.2万 人民币 三口之家办理约6万人民币，其中：</p>
						<p>* 布谷服务费：4万人民币</p>
						<p>* 官方及第三方费用：1.2-2万人民币</p>


					<table class="table table-striped mb-40" cellspacing="0">
						<thead>
							<th >费用详情</th>
							<th >费用项</th>
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
								<td>按量收取，3000-5000人民币/户</td>
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
								<td rowspan="3" style="line-height: 60px">官方费用</td>
								<td rowspan="3" style="line-height: 60px">申请费</td>
								<td rowspan="3" style="line-height: 60px">加拿大联邦移民局</td>
								<td>主申请人：550加币/人</td>
								<td rowspan="3" style="line-height: 60px">递交申请前支付</td>
								<td rowspan="3" style="line-height: 60px">不退</td>
							</tr>
							<tr>
								<td style="background-color: #fff;">随行配偶：550加币/人</td>
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
								<td>不退</td>
							</tr>
							<tr style="background-color: #fff; border-bottom: 1px solid #ddd;">
								<td rowspan="2" style="line-height: 40px">第三方费用</td>
								<td rowspan="2" style="line-height: 40px">体检费</td>
								<td rowspan="2" style="line-height: 40px">指定体检医院</td>
								<td>15周岁以上：1700人民币/人</td>
								<td rowspan="2" style="line-height: 40px">申请签证前</td>
								<td rowspan="2" style="line-height: 40px">不退</td>
							</tr>
							<tr style="background-color: #fff; border-bottom: 1px solid #ddd;">
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