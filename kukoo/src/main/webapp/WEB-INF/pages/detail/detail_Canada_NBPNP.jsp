<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<html>

<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<link rel="stylesheet" href="<%=basePath%>css/detail/detail-templete.css" />
<style>


</style>

<title>布谷移民——项目详情</title>
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
							"新不伦瑞克省提名项目 New Brunswick Provincial Nominee Program （简称 NBPNP）包含多个类别:NBEE技术类别、NB雇主担保类别、NB家庭担保类别、NB企业家类别。其中NBPNP的EE类别只对当前在NB工作及法语是第一语言的申请人开放。NB省提名批准后向加拿大联邦申请永居签证，通过EE在线申请，一般联邦审理周期6个月内签发签证。");
			$("#more").text("收起");
		} else {
			$("#desc")
					.text(   
							"新不伦瑞克省提名项目 New Brunswick Provincial Nominee Program （简称 NBPNP）包含多个类别:NBEE技术类别、NB雇主......");
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
						<h1 class="local-page-title" style="margin:0 0 0 0">新不伦瑞克省提名项目</h1>
								<div class="row" style="margin-top:30px">
									<div class="col-xs-3 font-bold">项目简介</div>
									<div class="col-xs-9 row-margin detail-width"><p style="margin: 0 0 -2px;">新不伦瑞克省提名项目 New Brunswick Provincial Nominee Program （简称 NBPNP）包含多个类别:NBEE技术类别、NB雇主担保类别、NB家庭担保类别、NB企业家类别。其中NBPNP的EE类别只对当前在NB工作及法语是第一语言的申请人开放。NB省提名批准后向加拿大联邦申请永居签证，通过EE在线申请，一般联邦审理周期6个月内签发签证。 </p></div>
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
											href="http://www.welcomenb.ca/content/wel-bien/en/immigrating/content/HowToImmigrate/NBProvincialNomineeProgram/ExpressEntry.html ">https://www.welcomenb.ca/</a>
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
							<h3 class="font-20 mt-0">新不伦瑞克省提名项目</h3>
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
							
							<p style="margin-top:-20px;">2015年7月，NBPNP EELMS不受限制的接受在NB省留学、工作、有offer、有亲属、法语为第一语言的申请人，同时也接收24个月内参加过NB省宣讲会的申请人。其他的需要紧缺职业才能申请，开放时间不定，需要抢配额，2015配额425个；</p>
							<p>2016年， NBPNP Express Entry类别开放这3类申请：与NB有较紧密联系（在NB工作过、有NB学历、亲属、有法语成绩，信息技术、业务和财务分析、零售贸易、酒店管理、厨师、制造经理等职业会被优先处理）、参加过NB移民说明会、属于IT类紧缺职业的（ICT 业务分析，软件，硬件，网络，系统管理等）；</p>
							<p>2017年1月，NBPNP EELMS申请进一步紧缩，有NB job offer、在NB工作、在NB留过学、有NB亲属、法语作为第一语言且达到CLB 7的申请人可以提交NB EOI；</p>
							<p>2017年9月，NBPNP EE类别对近2年内参加过NB宣讲会的特定紧缺职业的申请人开放，同时，EELMS类别将对法语是第一语言的申请人开放，证明法语能力需要参加TEF考试（加拿大联邦及联邦省份认可的法语考试是 TEF Canada）</p>
						</div>

						<!-- DROPCAPS  -->
						<div id="dropcaps" class="bs-docs-section mb-100">
							<div class="heading-underline h3-line">
								<h3 class="mb-40">申请流程</h3>
							</div>
							
									<p class="font-bold" style="margin-top:-20px;">1.确认满足NBPNP递交EOI的条件以及递交EE的条件</p>
									<p>当前在NB工作或法语是第一语言（申请人职业应属于NB紧缺职业），同时也满足EE池子67分</p>
									<p class="font-bold">2.申请信息录入EE系统，填写NB EOI打分表，将表格发到NB邮箱</p>
									<p class="font-bold">3.收到NB省的Invitation to Apply，60天内提交整套申请材料，申请费250加币</p>
									<p class="font-bold">4.获得NBPNP省提名后，EE系统加600分，等待加拿大EE系统被捞 </p>
									<p class="font-bold">5.申请人被EE系统选中后，通过在线递交正式的签证申请，此时移民部承诺大部分申请6个月以内审理完毕（从递交之日算起）。</p>
									
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
								<td>递交NB省EOI表格</td>
								<td>不定期</td>
								<td>邮件发送EOI表格给NB，NB根据申请人个人情况发邀请Invitation to apply</td>
							</tr>
							<tr>
								<td>5</td>
								<td>递交NBPNP省提名申请</td>
								<td>3-6个月</td>
								<td>提交全套申请资料后，可能有补料或者调查，审核通过签发NBPNP省提名邀请</td>
							</tr>
							<tr>
								<td>6</td>
								<td>获得EE邀请</td>
								<td>1~2周</td>
								<td>获得NB省提名后EE系统加600分，很快可以被邀请（即ITA）</td>
							</tr>
							<tr>
								<td>7</td>
								<td>准备资料递交申请签证</td>
								<td>2~4周</td>
								<td>向移民局提交全套材料</td>
							</tr>
							<tr>
								<td>8</td>
								<td>准备资料递交申请签证</td>
								<td>6个月内</td>
								<td>获得永居签证，进行登录前辅导</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
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
						<p class="font-bold" style="margin-top:-20px;">申请新不伦瑞克省提名项目需满足如下条件：</p>
						<p>1 满足进EE池子的评分标准，评分至少达到67分</p>
						<p>2 当前在NB工作或者法语作为第一语言且属于NB紧缺职业</p>
						<p>NB省紧缺职业如下：</p>
						<p>1. Information systems analysts and consultants (2171) 信息系统分析师和顾问</p>
						<p>2. Computer network technician (2281) 计算机网络技术员</p>
						<p>3. Software engineers and designers (2173) 软件工程师和设计师</p>
						<p>4. Database analysts and data administrators (2172) 数据库分析师、数据库管理员</p>
						<p>5. Computer programmers and interactive media developers (2174) 计算机程序员、交互媒体开发</p>
						<p>6. Cooks (6322) 厨师</p>
						<p>7. Restaurant and food service managers (0631) 餐厅服务经理 </p>
						<p>8. Accounting technicians and bookkeepers (1311) 会计技术员和记账员</p>
						<p>9.Managers in health care (0311) 医疗服务经理</p>
						<p>10.Retail sales supervisors (6211) 零售业主管</p>
						
						<p class="font-bold">* NBPNP评分标准</p>
						<p class="font-bold">一 工作经验</p>
						<p>1 至少有一年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 最近10年工作年限按照同一个NOC职业代码（in the same NOC skill type (0, A or B)）计算；</p>
						<p>4 近10年的职业属于2011年版NOC的 level 0、A或B；</p>
						<p class="font-bold">二 语言能力</p>
						<p>雅思最低要求达到CLB7的水平，2年有效期。</p>
						<p class="font-bold">三 学历要求</p>
						<p>完成加拿大ECA学历认证（加拿大境内学历除外）；</p>
						<p class="font-bold">四 NB评分表如下，打分需要满足67分（满分100分）</p>
						<p>NB评分标准如下所示：</p>
						
						<table class="table table-striped mb-40" >
							<thead>
								<th>评分项</th>
								<th colspan="5">NBPNP评分因素及对应评分</th>
							</thead>
							<tbody>
								<tr>
									<td colspan="2" style="font-weight:bold;">A 学历&培训</td>
								</tr>
								<tr>
									<td style="width:600px">博士学历</td>
									<td >25</td>
								</tr>
								<tr>
									<td>硕士学历</td>
									<td>23</td>
								</tr>
								<tr>
									<td>双学历</td>
									<td>22</td>
								</tr>
								<tr>
									<td>三年文凭</td>
									<td>21</td>
								</tr>
								<tr>
									<td>两年文凭</td>
									<td>19</td>
								</tr>
								<tr>
									<td>一年文凭</td>
									<td>15</td>
								</tr>
								<tr>
									<td>高中文凭</td>
									<td>5</td>
								</tr>
								<tr>
									<td colspan="2" style="font-weight:bold;">B 工作经验</td>
								</tr>
								<tr>
									<td>6年+</td>
									<td>15</td>
								</tr>
								<tr>
									<td>4-5年</td>
									<td>13</td>
								</tr>
								<tr>
									<td>2-3年</td>
									<td>11</td>
								</tr>
								<tr>
									<td>1年</td>
									<td>9</td>
								</tr>
								<tr>
									<td colspan="2" style="font-weight:bold;">C 语言能力</td>
								</tr>
								<tr>
									<td colspan="2">第一语言</td>
								</tr>
								<tr>
									<td>CLB 9及以上（雅思听力8.0 其它三项7.0）</td>
									<td>6分/项</td>
								</tr>
								<tr>
									<td>CLB 8 （雅思听力7.5 其它三项6.5）</td>
									<td>5分/项</td>
								</tr>
								<tr>
									<td>CLB 7 （雅思四个6）</td>
									<td>4分/项</td>
								</tr>
								<tr>
									<td colspan="2">第二语言</td>
								</tr>
								<tr>
									<td>达到CLB5</td>
									<td>1分/项</td>
								</tr>
								<tr>
									<td>CLB4及以下</td>
									<td>0分/项</td>
								</tr>
								<tr>
									<td colspan="2" style="font-weight:bold;">D 年龄</td>
								</tr>
								<tr>
									<td>22岁以下</td>
									<td>0</td>
								</tr>
								<tr>
									<td>22-35周岁</td>
									<td>12</td>
								</tr>
								<tr>
									<td>36周岁</td>
									<td>11</td>
								</tr>
								<tr>
									<td>37周岁</td>
									<td>10</td>
								</tr>
								<tr>
									<td>38周岁</td>
									<td>9</td>
								</tr>
								<tr>
									<td>39周岁</td>
									<td>8</td>
								</tr>
								<tr>
									<td>40周岁</td>
									<td>7</td>
								</tr>
								<tr>
									<td>41周岁</td>
									<td>6</td>
								</tr>
								<tr>
									<td>42周岁</td>
									<td>5</td>
								</tr>
								<tr>
									<td>43周岁</td>
									<td>4</td>
								</tr>
								<tr>
									<td>44周岁</td>
									<td>3</td>
								</tr>
								<tr>
									<td>45周岁</td>
									<td>2</td>
								</tr>
								<tr>
									<td>46周岁</td>
									<td>1</td>
								</tr>
								<tr>
									<td>47周岁及以上</td>
									<td>0</td>
								</tr>
								<tr>
									<td colspan="2" style="font-weight:bold;">E NB工作安排(Arranged Offer of Employment)</td>
								</tr>
								<tr>
									<td colspan="2">Working in Canada</td>
								</tr>
								<tr>
									<td>申请人当前持临时工作许可正在加拿大工作，并符合以下条件：
申请人申请PNP项目和永久居民签证签发时工作许可仍然有效；
CIC基于积极的LMIA为申请人签发工作许可；
当前正为工作许可上列出的为其提供长期工作offer的雇主工作。</td>
									<td>10</td>
								</tr>
								<tr>
									<td>申请人当前在加拿大工作，并且根据an international or a federal-provincial agreement，所从事的工作不必由LMIA确认，同时符合以下条件：
申请人申请PNP项目和永久居民签证签发时工作许可仍然有效或者申请人被批准不用持有工作许可即可工作；
雇主为申请人提供了长期工作offer。</td>
									<td>10</td>
								</tr>
								<tr>
									<td>申请人当前在加拿大工作，并且根据非international or a federal-provincial agreement，所从事的工作不必由LMIA确认，同时符合以下条件：
雇主为申请人提供了长期全职工作offer;
雇主有积极的LMIA。</td>
									<td>10</td>
								</tr>
								<tr>
									<td>申请人当前在加拿大工作，并且另外一个雇主为其提供了一份长期全职的工作，同时符合以下条件：
此雇主为申请人提供了长期全职工作offer;
此雇主有积极的LMIA。</td>
									<td>10</td>
								</tr>
								<tr>
									<td colspan="2">Not Working in Canada</td>
								</tr>
								<tr>
									<td>申请人当前不在加拿大工作但是持有加拿大雇主的长期、全职、职业类别属于NOC 0、A、B的工作offer （Arranged Offer of Employment)</td>
									<td>10</td>
								</tr>
								<tr>
									<td colspan="2" style="font-weight:bold;">F 适应能力</td>
								</tr>
								
								
								<tr>
									<td>主申持有有效的工作许可在NB至少工作过一年且职业属于NOC 0、A、B类</td>
									<td>10</td>
								</tr>
								<tr>
									<td>主申有NB工作安排(E部分有加分的申请人适用)</td>
									<td>5</td>
								</tr>
								<tr>
									<td>配偶持有有效的工作许可在NB至少工作过一年</td>
									<td>5</td>
								</tr>
								<tr>
									<td>主申或者配偶在NB完成了至少两年的全日制（每周至少15课时）高中以上课程，并且成绩良好</td>
									<td>5</td>
								</tr>
								<tr>
									<td>配偶的英语或法语达到CLB4以上</td>
									<td>5</td>
								</tr>
								<tr>
									<td>主申或配偶在NB直系亲属（父母、祖父母、子女、兄弟姐妹、舅舅叔叔姑姑阿姨、侄子侄女外甥外甥女）是PR或者公民</td>
									<td>5</td>
								</tr>
								<tr>
									<td style="border-bottom: 1px solid #ddd;font-weight:bold;">满分（A-F）</td>
									<td style="border-bottom: 1px solid #ddd;font-weight:bold;">100</td>
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
							
							<p class="font-bold" style="margin-top:-20px;">总共涉及的资金：一人办理约5.2万 人民币 三口之家办理约6万人民币，其中：</p>
							<p class="font-bold">* 布谷服务费：4万人民币</p>
							<p class="font-bold">* 官方及第三方费用：1.2-2万人民币</p>
							
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
								<td rowspan="3" style="line-height:60px">官方费用</td>
								<td rowspan="3" style="line-height:60px">申请费</td>
								<td rowspan="3" style="line-height:60px">加拿大联邦移民局</td>
								<td>主申请人：550加币/人</td>
								<td rowspan="3" style="line-height:60px">递交申请前支付</td>
								<td rowspan="3" style="line-height:60px">不退</td>
							</tr>
							<tr>
								<td style="background-color:#fff">随行配偶：550加币/人</td>
							</tr>
							<tr>
								<td>随行未满22周岁子女：150加币/人</td>
							</tr>
							<tr>
								<td>官方费用</td>
								<td>省申请费</td>
								<td>省政府</td>
								<td>萨省300加币/家庭，安省1500加币/家庭，NB省250加币/家庭     魁省主申请785加币，随同人员每人168加币</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>
							<tr>
								<td>官方费用</td>
								<td>登陆费</td>
								<td>加拿大联邦移民局</td>
								<td>申请人和配偶：490加币/人（未婚随行子女不交）</td>
								<td>获批登陆前</td>
								<td>不退</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td rowspan="2" style="line-height:40px">第三方费用</td>
								<td rowspan="2" style="line-height:40px">体检费</td>
								<td rowspan="2" style="line-height:40px">指定体检医院</td>
								<td >15周岁以上：1700人民币/人</td>
								<td rowspan="2" style="line-height:40px">申请签证前</td>
								<td rowspan="2" style="line-height:40px;">不退</td>
							</tr>
							<tr style="border-bottom: 1px solid #ddd;">
								<td style="background-color:#f9f9f9">15周岁以下：500-1250人民币/人</td>
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
		
		
	</script>

	<!-- JS end -->
</body>

</html>