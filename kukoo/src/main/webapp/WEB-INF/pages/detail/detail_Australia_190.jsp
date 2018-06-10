<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<html>

<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<link rel="stylesheet" href="<%=basePath%>css/detail/detail-templete.css" />
<style>
#blockquotes table tr td:first-child{
	width:450px;
}
@media (max-width: 1024px){
	#blockquotes table tr td:first-child{
	 	width:200px;
	}
}
#testimonials table tr td:first-child{
 	width:380px;
}
@media (max-width: 1024px){
	#testimonials table tr td:first-child{
	 	width:150px;
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
	<a href="#" class="icon-qq" style="background-position:-14px -76px;"></a> 
	<a href="" class="icon-chat" style="background-position:-14px -144px"></a> 
	<a target="_blank" href="" class="icon-blog" style="background-position:-14px -212px"></a> 
	<a href="mailto:admin@admin.com" class="icon-mail" style="background-position:-14px -280px"></a> 
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
											<li class="parent megamenu"><a
												href="<%=basePath %>list/lists" class=""><div
														class="main-menu-title">项目列表</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="<%=basePath %>timeline" class=""><div
														class="main-menu-title">申报移民流程</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>markingOLController/showMarkingOL" class=""><div
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
			<div class="page-title-cont page-title-large2-cont bg-gray" style="padding-top:120px">
				<div class="relative container align-left">
					<div class="row" style="font-size: 13px;">
					
					<div class="col-md-6">
						<h1 class="local-page-title" style="margin:0 0 0 0">190州担保技术移民</h1>
								<div class="row" style="margin-top:30px">
									<div class="col-xs-3 font-bold">项目简介</div>
									<div class="col-xs-9 row-margin detail-width">
										<p style="margin: 0 0 -2px;">
											澳大利亚Skilled Nominated visa (subclass 190)，俗称州担保技术移民，获得某个州的提名
											函可以在EOI打分中获得5分加分，所以适合打分只有55分的申请人。至于能否申请到州担保，取决于申
											请人评估的职业是否在州担保的职业清单上以及是否符合州政府担保的其他特定要求（雅思、工作年限、
											工作Offer等）。申请190签证成功后可以无限期居住在澳洲，申请人及其家人可以在这里作为永久居民
											去工作、学习、加入医疗保险、担保亲属、申请澳大利亚国籍等。
										</p>
									</div>
								</div>
						</div>

						<div class="col-md-6 ">
							
								<div class="row" style="margin-top:67px">
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
			<div id="pordAttr"
							class="bs-sidebar clearfix small-tab"
							role="complementary">
				<ul id="nav-sidebar-small" class="nav bs-sidenav2 blog-categories2 font-poppins" style="margin-top:5px">
								<li class="current li-style-long-margin"><a href="#heading">政策解读</a></li>
								<li class="li-style-margin"><a href="#dropcaps" >申请流程</a></li>
								<li class="li-style-margin"><a href="#blockquotes" >申请条件</a></li>
								<li class="li-style-margin"><a href="#testimonials" >材料清单</a></li>
								<li class="li-style-margin"><a href="#pricing-tables">费用详情</a></li>
				</ul>
			</div>

			<!-- COTENT CONTAINER -->
			<div class="container bs-docs-container p-140-cont" style="padding-top:35px">
				<div class="row">

					<!-- SIDENAV HIDE -->
					<div class="col-md-3">
						<div id="sidebar-stiky"
							class="bs-sidebar hidden-xs hidden-sm clearfix"
							role="complementary">
							<h3 class="font-20 mt-0">190州担保技术移民</h3>
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
						<div id="heading" class="bs-docs-section mb-100" style="margin-top: 25px;">
							<div class="heading-underline h3-line">
								<h3 class="mt-0 mb-50">政策解读</h3>
							</div>
							
							<p style="margin-top:-20px;">澳大利亚Skilled Nominated visa (subclass 190)，俗称州担保技术移民，获得某个州的提名函可以在
							EOI打分中获得5分加分，所以适合打分只有55分的申请人。至于能否申请到州担保，取决于申请人评估的职业是否在州担保的职业清单上以及是否符合
							州政府担保的其他特定要求（雅思、工作年限、工作Offer等）。申请190签证成功后可以无限期居住在澳洲，申请人及其家人可以在这里作为永久居民
							去工作、学习、加入医疗保险、担保亲属、申请澳大利亚国籍等。</p>
							
							<p>189签证与190签证都是一步到位的永久居民(Permanent Resident)签证。但是两个签证类别也存在差异，189签证属于联邦性质的移民签证，获
							签登陆后可以去澳洲任何地方定居，190签证属于州担保性质的移民签证，获签登陆后的前两年（累计两年）必须在担保的州定居，中间可以回国或去澳洲
							其他州旅游。</p>
							<!-- <div class="charts" id="charts"></div> -->
						</div>

						<!-- DROPCAPS  -->
						<div id="dropcaps" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">申请流程</h3>
							</div>
							
									<p class="font-bold" style="margin-top:-20px;">190签证类别申请流程​</p>
									<p>1 确认EOI评分达到60分（包含州担保5分）；</p>
									<p>&nbsp;&nbsp;&nbsp;60分只是入池分数，某些职业可能需要65甚至更高分数才能获邀</p>
									<p>2 选择合适的职业，并通过对应职业的职业评估；</p>
									<p>3 注册并提交EOI；</p>
									<p>4 申请190州担保（有的州可以直接申请，有的州需要等待州邀请后，再递交州担保申请）；</p>
									<p>5 担保通过，收到签证邀请，60天内递交签证申请，在线支付申请费；</p>
									<p>6 体检通知，配偶交语言费、补料等。</p>
									
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
								<td>递交职业评估</td>
								<td>不定期</td>
								<td>有的职业评估需要交语言成绩，有的职业评估不需要</td>
							</tr>
							<tr>
								<td>4</td>
								<td>递交EOI</td>
								<td>1天</td>
								<td>有了语言成绩和职业评估通过之后，在线填写递交EOI</td>
							</tr>
							<tr>
								<td>5</td>
								<td>递交州担保</td>
								<td>1~2周</td>
								<td>取决于各州所要求材料的简易程度</td>
							</tr>
							<tr>
								<td>6</td>
								<td>等待签证邀请</td>
								<td>不定期</td>
								<td>看分数和职业是否常见，高分和不常见职业比较容易被邀请</td>
							</tr>
							<tr>
								<td>7</td>
								<td>递交签证申请</td>
								<td>1~2周</td>
								<td>收到签证邀请之后60天内递交</td>
							</tr>
							<tr>
								<td>8</td>
								<td>签证申请的审理</td>
								<td>3-6个月</td>
								<td>体检通知，配偶交语言费、补料、背调等</td>
							</tr>
							<tr>
								<td>9</td>
								<td>签证获批</td>
								<td>1-2周</td>
								<td>获得永居签证，进行登录前辅导</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td>10</td>
								<td>登陆</td>
								<td>1年内</td>
								<td>登陆澳洲，开启美好海外生活</td>
							</tr>
						</tbody>
					</table>
						</div>

						<!-- BLOCKQUOTES  -->
						<div id="blockquotes" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mb-50">申请条件</h3>
							</div>
						<p class="font-bold" style="margin-top:-20px;">190签证申请条件</p>
						<p>1 职业在 MLTSSL 或 STSOL 移民职业清单上；</p>
						<p>2 通过职业评估  </p>
						<p>3 EOI评分达到60分；</p>
						<p>4	 获得州或领地政府担保；</p>
						<p>5 年龄小于45岁； </p>
						<p>6 雅思达到4个6的 Competent English 成绩，成绩三年内有效；</p>
						<p>7 提交EOI，并获得邀请；</p>
						<p>8 身体健康，品行良好，无犯罪记录。</p>
						<p class="font-bold">* 190签证评分标准</p>
						<p class="font-bold">一 工作经验</p>
						<p>1 工作经验分为澳洲工作经验和澳洲外工作经验，需要与提名的职业相关；</p>
						<p>2 必须是有偿的工作（志愿者、无偿的不包括在内）；</p>
						<p>3 近10年内工作按照同一个ANZSCO职业代码计算；</p>
						<p>4 工作年限不截止于职业评估上的年限，职评完成后的工作经验仍然可以计算在内。</p>
						<p class="font-bold">二 语言能力</p>
						<p>雅思最低要求达到4个6的 Competent English 成绩，3年有效期。也可以选择培生考试，难度相较于雅思较低。</p>
						<p class="font-bold">三 年龄</p>
						<p>被邀请申请签证的时候，年龄必须在45岁以下。</p>
						<p class="font-bold">四 学历</p>
						<p>专科学历一般很难通过职业评估（有些要扣减年限的评估机构对专科学历的工作年限扣减多），所以专科申请人很难申请澳洲。</p>
						
						<p class="font-bold"">EOI评分标准</p>
						<p>评分标准如下：（官方网站：https://www.homeaffairs.gov.au/visas/supporting/Pages/skilled/the-points-table.aspx）</p>
						<table class="table table-striped mb-40" >
							<thead>
								<th>评分项</th>
								<th colspan="5">EOI评分标准</th>
							</thead>
							<tbody>
								<tr>
									<td colspan="2" class="font-bold">A 学历</td>
								</tr>
								<tr>
									<td>博士学历</td>
									<td>20</td>
								</tr>
								<tr>
									<td>本硕学历</td>
									<td>15</td>
								</tr>
								<tr>
									<td>专科技校</td>
									<td>10</td>
								</tr>
								<tr>
									<td>职业评估机构认可的其他学历</td>
									<td>10</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">B 工作经验</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">澳洲境外工作经验</td>
								</tr>
								<tr>
									<td>8-10年</td>
									<td>15</td>
								</tr>
								<tr>
									<td>5-7年</td>
									<td>10</td>
								</tr>
								<tr>
									<td>3-4年</td>
									<td>5</td>
								</tr>
								<tr>
									<td>低于三年</td>
									<td>0</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">澳洲境内工作经验</td>
								</tr>
								<tr>
									<td>8-10年</td>
									<td>20</td>
								</tr>
								<tr>
									<td>5-7年</td>
									<td>15</td>
								</tr>
								<tr>
									<td>3-4年</td>
									<td>10</td>
								</tr>
								<tr>
									<td>1-2年</td>
									<td>5</td>
								</tr>
								<tr>
									<td>低于一年</td>
									<td>0</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">C 语言能力</td>
								</tr>
								<tr>
									<td>Superior English（雅思四个8，或者同等水平的托福，PTE，CAE，OET）</td>
									<td>20</td>
								</tr>
								<tr>
									<td>Proficient English （雅思四个7，或者同等水平的托福，PTE，CAE，OET）</td>
									<td>10</td>
								</tr>
								<tr>
									<td>Competent English （雅思四个6，或者同等水平的托福，PTE，CAE，OET）</td>
									<td>0</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">D 年龄</td>
								</tr>
								<tr>
									<td>18-24</td>
									<td>25</td>
								</tr>
								<tr>
									<td>25-32</td>
									<td>30</td>
								</tr>
								<tr>
									<td>33-39</td>
									<td>25</td>
								</tr>
								<tr>
									<td>40-44</td>
									<td>15</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">E Australian study requirement</td>
								</tr>
								<tr>
									<td>申请人持有澳洲教育机构认可的毕业证、学位证或行业资格证（两年学历）</td>
									<td>5</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">F 澳洲硕博学历</td>
								</tr>
								<tr>
									<td>申请人持有澳洲教育机构认可的两年及以上硕博学历</td>
									<td>5</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">G 其他</td>
								</tr>
								<tr>
									<td>被认可的社区语言，通过NAATI考试Paraprofessional级别的考试</td>
									<td>5</td>
								</tr>
								<tr>
									<td>符合澳大利亚学习要求的澳大利亚偏远地区学习或人口增长缓慢的大都市地区学习</td>
									<td>5</td>
								</tr>
								<tr>
									<td>配偶技能资格</td>
									<td>5</td>
								</tr>
								<tr>
									<td>澳洲专业年（境内职业学习一年，如职业培训）</td>
									<td>5</td>
								</tr>
								<tr>
									<td colspan="2" class="font-bold">H 担保</td>
								</tr>
								<tr>
									<td>州或领地政府担保（适用190）</td>
									<td>5</td>
								</tr>
								<tr>
									<!-- 符合条件的亲属担保并且需工作和生活在澳大利亚指定地区（适用于州领或亲属担保的489偏远地区移民） -->
									<td>符合条件的亲属担保并且需工作和生活在澳大利亚指定地区</td>
									<td>10</td>
								</tr>
								<tr style="border-bottom: 1px solid #ddd;">
									<td>州或领地政府担保并且需工作和生活在偏远地区或人口增长低缓的大都市区域</td>
									<td>10</td>
								</tr>
							</tbody>
						</table>
						
						</div>
						<!-- end section  -->

						<!-- TESTIMONIALS  -->
						<div id="testimonials" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">材料清单</h3>
							</div>
							<table class="table table-striped mb-40" style="margin-top:-20px;" cellspacing="0">
						<thead>
							<th>材料</th>
							<th>主申/副申/子女</th>
							<th>是否必须</th>
						</thead>
						<tbody>
							<tr>
								<td>移民信息表</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>护照首页彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>结婚证公证彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>身份证正反面彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>主副申请出生公证彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>子女出生医学证明彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>曾用名公证</td>
								<td></td>
								<td>如适用</td>
							</tr>
							<tr>
								<td>户口本公证彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>移民照片</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>职业评估报告彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业证/学位证公证或者学校盖章件的彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业成绩单公证或者学校盖章件的彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>学位证教育部认证件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>雅思或PTE成绩单彩色扫描件（副申有合格的语言成绩不需要支付语言费；已满16周岁的子女同副申）</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>近十年所有工作证明信彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>近十年工作简历</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>近十年聘用合同、个税、社保证明彩色扫描件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>全套申请表签字原件</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr>
								<td>国内外无犯罪公证扫描件，如果孩子已满16岁，需要提供无犯罪公证（签证阶段需要）</td>
								<td></td>
								<td>是</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td>已满16周岁子女，需要提供学习证明，并填写47A表。</td>
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
							
							<p class="font-bold" style="margin-top:-20px;">"总共涉及的资金：一人办理约7.2万 人民币 三口之家办理约8万人民币，其中："</p>
							<p class="font-bold">* 布谷服务费：4万人民币</p>
							<p class="font-bold">* 官方及第三方费用：3.2-5万人民币</p>
							
							<table class="table table-striped mb-40" cellspacing="0">
						<thead>
							<th>费用分类</th>
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
								<td>清华认证（本科967人民币，本硕1682人民币）高教认证1184人民币（一个学历）</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>
							<tr>
								<td>第三方费用</td>
								<td>职业评估费</td>
								<td>职业评估机构</td>
								<td>VET职业评估, 一个国内本科学历的情况下1592澳币（中国学历需要认证，费用见https://www.vetassess.com.au/skills-assess
								ment-for-migration/chinese-qualifications-verification/application-fee；职业评估费用见https://www.vetassess.co
								m.au/skills-assessment-for-migration/general-occupations/fees-and-payment）<br/>
								EA评估 765澳币 (https://www.engineersaustralia.org.au/For-Migrants/Migration-Skills-Assessment/Migration-Fees)<br/>
								ACS评估 500澳币<br/>
								ACS-RPL评估 550澳币<br/>
								AIM评估 550澳币<br/>
								AIQS评估 650澳币<br/>
								TRA评估 1000澳币</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>
							<tr>
								<td>官方费用</td>
								<td>州担保费</td>
								<td>州政府</td>
								<td>NSW： 300澳币<br/>
								QLD： 200澳币<br/>
								WA： 200澳币<br/>
								其他州免费</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>
							<tr>
								<td rowspan="3" style="line-height:60px">官方费用</td>
								<td rowspan="3" style="line-height:60px">申请费</td>
								<td rowspan="3" style="line-height:60px">澳洲移民局</td>
								<td>主申请人：3670澳币/人</td>
								<td rowspan="3" style="line-height:60px">递交申请前支付</td>
								<td rowspan="3" style="line-height:60px">不退</td>
							</tr>
							<tr>
								<td style="background-color:#fff">随行配偶：1835澳币/人</td>
							</tr>
							<tr>
								<td>随行未满22周岁子女：920澳币/人</td>
							</tr>
							<tr>
								<td>官方费用</td>
								<td>副申语言费</td>
								<td>澳洲移民局</td>
								<td>4885澳币/人（配偶有总分4.5的语言成绩就不用交语言费）</td>
								<td>获批登陆前</td>
								<td>不退</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td rowspan="2" style="line-height:40px">第三方费用</td>
								<td rowspan="2" style="line-height:40px">体检费</td>
								<td rowspan="2" style="line-height:40px">指定体检医院</td>
								<td >主副申：1500人民币/人</td>
								<td rowspan="2" style="line-height:40px">申请签证前或后都可以</td>
								<td rowspan="2" style="line-height:40px;">不退</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td style="background-color:#fff">子女：700人民币/人</td>
							</tr>
						</tbody>
					</table>
						<p class="font-bold">备注：</p>
						<p>1. 以上涉及的翻译、公证、认证可委托布谷办理或自行办理</p>
						<p>2. 因移民局或第三方代办机构调整费用，以及客户文件的数量不同，以上费用以实际发生为准</p>
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
		        $(elm).css('position',((p) > startPos) ? 'fixed' : 'static');   
		        $(elm).css('top',((p) > startPos) ? '0px' : '');   
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
			if(document.body.clientWidth>1024){
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