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
	width: 150px;
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
							<h1 class="local-page-title" style="margin: 0 0 0 0">新斯科舍省提名技术移民</h1>
							<div class="row" style="margin-top: 30px">
								<div class="col-xs-3 font-bold">项目简介</div>
								<div class="col-xs-9 row-margin detail-width">
									<p style="margin: 0 0 -2px;">加拿大新斯科舍省移民提名项目 Nova Scotia
										Nominee Program ，简称 NSNP，加拿大 NSNP
										里有EE下有两类，A类需要有雇主offer，随时可以申请；另一类是B类，属于紧缺职业类别，不需要雇主提供offer就可以申请，但需要抢配额。中国申请人一般选择B类别的技术移民，只要具备NS省需要的技能和经验就有机会获得该省的提名，提名批准后向加拿大联邦申请永居签证，一般联邦审理周期6个月内签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。</p>
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

						<p style="margin-top: -20px;">加拿大新斯科舍省移民提名项目 Nova Scotia
							Nominee Program ，简称 NSNP，加拿大 NSNP
							里有EE下有两类，A类需要有雇主offer，随时可以申请；另一类是B类，属于紧缺职业类别，不需要雇主提供offer就可以申请，但需要抢配额。中国申请人一般选择B类别的技术移民，只要具备NS省需要的技能和经验就有机会获得该省的提名，提名批准后向加拿大联邦申请永居签证，一般联邦审理周期6个月内签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。</p>
						<p>NSDEE 分为A、B两类，A类需要雇主offer，职业属于NOC 0、A、B
							level就可以，B类不需要雇主offer，但申请人从事职业需要在紧缺职业清单上。</p>
						<p>NSDEE Category B（无雇主offer紧缺职业类别） 2017 年开放记录：</p>
						<p>5.8 突然开放250配额，未提前通知开放时间</p>
						<p>7.5 突然开放，未告知名额，未提前通知开放时间</p>
						<p>10.11 开放250-300配额，提前公布开放时间</p>
						<p>12.09 开放175 to 225，提前公布开放时间</p>

						<!-- <div class="charts" id="charts"></div> -->
					</div>

					<!-- DROPCAPS  -->
					<div id="dropcaps" class="bs-docs-section mb-100">
						<div class="heading-underline h3-line">
							<h3 class="mb-40">申请流程</h3>
						</div>
						<p class="font-bold" style="margin-top: -20px;">NSDEE
							的B类紧缺职业类申请流程​</p>
						<p>1.确认满足NS紧缺职业和评分标准。</p>
						<p>申请者应达到NS评分中的67分，也是进入EE池子67分，详见NS申请条件打分。</p>
						<p>最近6年内至少一年紧缺职业相关工作经验。</p>
						<p>2.信息录入EE系统，并同步注册NS在线账号。</p>
						<p>3.NS省在线系统开放B类名额，提交申请。</p>
						<p>4.获得NS省提名后，EE系统加600分，等待ITA</p>
						<p>申请人获得移民邀请ITA后，递交正式的签证申请，此时移民部承诺大部分申请6个月以内审理完毕（从递交之日算起）。</p>

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
									<td>递交NS省提名申请</td>
									<td>不定期</td>
									<td>等待开放名额才能提交申请</td>
								</tr>
								<tr>
									<td>5</td>
									<td>获得NS省提名邀请</td>
									<td>2-3个月</td>
									<td>提交全套NS申请资料后，可能有补料或者调查</td>
								</tr>
								<tr>
									<td>6</td>
									<td>获得EE邀请</td>
									<td>1~2周</td>
									<td>获得NS省提名后EE系统加600分，很快可以被邀请（即ITA）</td>
								</tr>
								<tr>
									<td>7</td>
									<td>准备资料递交申请签证</td>
									<td>2~4周</td>
									<td>向移民局提交全套材料</td>
								</tr>
								<tr>
									<td>8</td>
									<td>获批、取得签证</td>
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

						<p class="font-bold" style="margin-top: -20px;">NSDEE项目
							B类无雇主offer类别需满足如下条件：</p>
						<p>1 满足NSNP评分标准，评分至少达到67分</p>
						<p>2 满足NSNP评分标准，评分至少达到67分</p>

						<p class="font-bold">NS评分标准</p>
						<p class="font-bold">一 工作经验</p>
						<p>1 至少有一年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 最近6年工作年限按照同一个NOC职业代码（in the same NOC skill type (0, A or
							B)）计算；</p>
						<p>4 近6年的职业属于2016年版NOC的 level 0、A或B；</p>
						<p class="font-bold">二 语言能力</p>
						<p>雅思最低要求达到CLB7的水平（雅思4个6），2年有效期。</p>
						<p class="font-bold">三 学历要求</p>
						<p>完成加拿大ECA学历认证（加拿大境内学历除外）；</p>
						<p class="font-bold">四 NS打分超过67分（满分100分）</p>
						<p class="font-bold">FSW评分标准如下所示：</p>

						<table class="table table-striped mb-40">
							<thead>
								<th>评分项</th>
								<th colspan="5">NSPNP评分因素及对应评分</th>
							</thead>
							<tr>
								<td class="font-bold" rowspan=4 style="line-height: 80px;">教育加分</td>
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
								<td rowspan=2 class="font-bold" style="line-height: 57px;">语言加分</td>
								<td>第一语言CLB 7（雅思听6，读6，写6，说6）</td>
								<td>第一语言CLB 8（雅思听7.5，读6.5，写6.5，说6.5）</td>
								<td>第一语言CLB 9（雅思听8，读7，写7，说7）</td>
								<td>第二语言CLB 5</td>
							</tr>
							<tr>
								<td>4分/项</td>
								<td>5分/项</td>
								<td>6分/项</td>
								<td>1分/项</td>
							</tr>
							<tr>
								<td rowspan=2 class="font-bold" style="line-height: 40px;">工作加分</td>
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
								<td rowspan=6 class="font-bold" style="line-height: 120px;">年龄加分</td>
								<td>18&lt;=35岁</td>
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
								<td class="font-bold">NS雇主安排（拥有LMIA或者持有工签在NS省工作）</td>
								<td colspan=4>10分</td>
							</tr>
							<tr>
								<td rowspan=4 class="font-bold"
									style="line-height: 114px; background-color: rgb(247, 247, 247);">适应能力</td>
								<td>主申最近5年一年在NS省工作</td>
								<td>主申最近5年有2年在NS省读书</td>
								<td>主副申加拿大直系亲属（父母、祖父母、兄弟姐妹、叔叔舅舅、姑姑姨）</td>
								<td>主申请雇主安排额外加分</td>
							</tr>
							<tr>
								<td>10分</td>
								<td>5分</td>
								<td>5分</td>
								<td>5分</td>
							</tr>
							<tr>
								<td>配偶最近5年一年在NS省工作</td>
								<td>配偶雅思（CLB 4）（雅思听力4.5，读3.5，其他两个4）</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>5分</td>
								<td>5分</td>
								<td></td>
								<td></td>
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
									<!-- <td></td> -->
								</tr>
								<tr>
									<td>护照扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>护照</td> -->
								</tr>
								<tr>
									<td>结婚证扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td></td> -->
								</tr>
								<tr>
									<td>身份证正反面扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>身份证</td> -->
								</tr>
								<tr>
									<td>子女出生医学证明扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>子女出生医学证明</td> -->
								</tr>
								<tr>
									<td>户口本扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>户口本</td> -->
								</tr>
								<tr>
									<td>移民照片电子版</td>
									<td></td>
									<td>是</td>
									<!-- <td>照片指引</td> -->
								</tr>
								<tr>
									<td>最高全日制学历的毕业证/学位证扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>学历学位证</td> -->
								</tr>
								<tr>
									<td>最高全日制学历的毕业成绩单扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>--</td> -->
								</tr>
								<tr>
									<td>雅思或TEF成绩单扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>雅思成绩单</td> -->
								</tr>
								<tr>
									<td>近十年所有工作证明信扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>--</td> -->
								</tr>
								<tr>
									<td>聘用合同扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>--</td> -->
								</tr>
								<tr>
									<td>近十年所有个税、社保证明扫描件</td>
									<td></td>
									<td>是</td>
									<!-- <td>个人所得税完税证明</td> -->
								</tr>
								<tr style="border-bottom: 1px solid #ddd;">
									<td>无犯罪公证扫描件（联邦阶段需要）</td>
									<td></td>
									<td></td>
									<!-- <td></td> -->
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
									<td rowspan="3" style="line-height: 60px">官方费用</td>
									<td rowspan="3" style="line-height: 60px">申请费</td>
									<td rowspan="3" style="line-height: 60px">加拿大联邦移民局</td>
									<td>主申请人：550加币/人</td>
									<td rowspan="3" style="line-height: 60px">递交申请前支付</td>
									<td rowspan="3" style="line-height: 60px">不退</td>
								</tr>
								<tr>
									<td style="background-color: #fff">随行配偶：550加币/人</td>
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
								style=""
								<tr
									style="background-color: #fff; border-bottom: 1px solid #ddd;">
									<td rowspan="2" style="line-height: 40px">第三方费用</td>
									<td rowspan="2" style="line-height: 40px">体检费</td>
									<td rowspan="2" style="line-height: 40px">指定体检医院</td>
									<td>15周岁以上：1700人民币/人</td>
									<td rowspan="2" style="line-height: 40px">申请签证前</td>
									<td rowspan="2" style="line-height: 40px">不退</td>
								</tr>
								<tr
									style="background-color: #fff; border-bottom: 1px solid #ddd;">
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