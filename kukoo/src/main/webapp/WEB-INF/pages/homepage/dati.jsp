<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<html>
<head>
<link rel="stylesheet" href="<%=basePath %>css/markingol/showMarkingOL.css" />
<!-- <link rel="icon" href="../../favicon.ico"> -->
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
</script>
<body>

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
									<a href="/kukoo/homePage" class="clearfix"> <img
										src="<%=basePath%>elementy/images/logo.png" class="logo-img"
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
											<li class="parent megamenu"><a href="/kukoo/homePage"
												class=""><div class="main-menu-title">家</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="/kukoo/homePage/list" class=""><div
														class="main-menu-title">项目列表</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a
												href="/kukoo/timeline" class=""><div
														class="main-menu-title">时间轴</div></a></li>

											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="/kukoo/homePage/dati" class=""><div
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

					<!-- SEARCH READ DOCUMENTATION -->
					<ul class="cd-header-buttons">
						<li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
					</ul>
					<!-- cd-header-buttons -->
					<div id="cd-search" class="cd-search">
						<form class="form-search" id="searchForm"
							action="page-search-results.html" method="get">
							<input type="text" value="" name="q" id="q"
								placeholder="Search...">
						</form>
					</div>

				</div>
				<!-- END header-wrapper -->

			</header>
			<!-- PAGE TITLE LARGE 2 GRAY -->
			<div class="page-title-cont page-title-large2-cont bg-gray" style="padding-top: 10px;">
				<div class="relative container align-left">
					<div class="row">

						<div class="col-md-8">
							<h1 class="local-page-title">布谷移民在线评估问卷</h1>
						</div>

						<div class="col-md-4">
							<div class="breadcrumbs2 font-poppins">
								<a class="a-inv" href="index.html"></a><span
									class="slash-divider"></span><span class="bread-current">共12题，答题时间：5分钟</span>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div id="href0" class="container bs-docs-container p-140-cont">
				<div class="row">
			<div >
			<div >
				<!-- <h1 class="survey_title" style="display: block;"> 
					<div class="inner"> 
					<div class="title_content">
					<p>布谷移民在线评估问卷</p>
					</div> 
					</div> 
				</h1> -->
		
				<div class="survey_container" id="sheet1">
					<div class="survey_page">
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question1">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >1</span>.</span>您的年龄？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-1" value="1">
									 <label for="option_q-1-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">低于20岁</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-2" value="2"> 
									<label for="option_q-1-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>20到35岁之间</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-3" value="3"> 
									<label for="option_q-1-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>36到40岁</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-1" id="option_q-1-4" value="4"> 
									<label for="option_q-1-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>40岁以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div  id="href1"></div>
							<div id="warning1" style="color: #f00;display: none;">此题为必填项！</div>
							<div >
					  			Tips：建议客户考虑去加拿大读书或者先选择可以移民的专业在国内读书。
					  		</div>
					  		<div >
					  			Tips：由于技术移民倾向年轻化，超过35岁开始减分，建议年龄高于40岁的申请人考虑其他移民项目。
					  		</div>
						</div>
					</div>
					
					<!-- 2 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question2" style="display: block;">
								<div>
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >2</span>.</span>您的学历？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-1" value="1">
									 <label for="option_q-2-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >低于大专</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-2" value="2"> 
									<label for="option_q-2-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>大专</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-3" value="3"> 
									<label for="option_q-2-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>本科</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-4" value="4"> 
									<label for="option_q-2-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>双本科</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-5" value="5"> 
									<label for="option_q-2-5"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>研究生</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-2" id="option_q-2-6" value="6"> 
									<label for="option_q-2-6"> 
									<i class="survey_form_ui"></i>
									<div  id="href2"></div>
										<div class="option_text">
											<p>博士及以上</p>
										</div>
										
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							
							<div id="warning2" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					
					
					<!-- 3 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question3" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >3</span>.</span>您高等教育的专业？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-3" id="option_q-3-1" value="1">
									 <label for="option_q-3-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >12分专业</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-3" id="option_q-3-2" value="2"> 
									<label for="option_q-3-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>9分专业</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-3" id="option_q-3-3" value="3"> 
									<label for="option_q-3-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>其他专业</p>
										</div>
										<div id="href3"></div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							<div id="warning3" style="color: #f00;display: none;">此题为必填项！</div>
							<div >
	  							Tips：本题只影响魁北克省申请。如果不考虑魁北克省，可以跳过。
	  						</div>
						</div>
					</div>
					
					
					<!-- 4 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question4" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >4</span>.</span>您的工作年限？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-1" value="1">
									 <label for="option_q-4-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >1年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-2" value="2"> 
									<label for="option_q-4-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>2年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-3" value="3"> 
									<label for="option_q-4-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>3年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-4" value="4"> 
									<label for="option_q-4-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>4年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-5" value="5"> 
									<label for="option_q-4-5"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>5年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-6" value="6"> 
									<label for="option_q-4-6"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>6年</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-4" id="option_q-4-7" value="7"> 
									<label for="option_q-4-7"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>7年及以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							<div id="warning4" style="color: #f00;display: none;">此题为必填项！</div>
							<div id="href4">
							</div>
						</div>
					</div>
					
					
					<!-- 5 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question5" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >5</span>.</span>您的工作职位？</p>
									</h3>
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div >
	  						<span>Tips：只针对萨省申请，使用不需要认证的职位，如果不在列表里，提示需要先做职业认证再申请萨省。</span>
	  						</div>
						</div>
					</div>
					
					
					<!-- 6 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question6" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >6</span>.</span>婚姻状况？</p>
									</h3>
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div >
	  						<span>Tips：如有配偶，请考虑配偶也许评分更高更适合做主申请人。</span>
	  						</div>
						</div>
					</div>
					
					
					
					
					</div>
				</div>
				<div class="survey_page" id="sheet2">
					<!-- 7 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question7" style="display: block;">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >7</span>.</span>子女？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-7" id="option_q-7-1" value="1">
									 <label for="option_q-7-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p >0</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-7" id="option_q-7-2" value="2"> 
									<label for="option_q-7-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>1</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-7" id="option_q-7-3" value="3"> 
									<label for="option_q-7-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>2个以上</p>
										</div>
										<div id="href7"></div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
							</div>
							<div id="warning7" style="color: #f00;display: none;">此题为必填项！</div>
							<div >
	  							Tips：本题只对魁省申请有影响。
	  						</div>
						</div>
					</div>
					
					
					<!-- 8 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question8">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >8</span>.</span>是否有在加拿大工作或学习超过一年以上？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-1" value="1">
									 <label for="option_q-8-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">有在萨省工作或者学习一年以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-2" value="2"> 
									<label for="option_q-8-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>有在新斯科舍工作或者学习一年以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-3" value="3"> 
									<label for="option_q-8-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>有在魁北克工作或者学习6个月以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-4" value="4"> 
									<label for="option_q-8-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>有在其他加拿大地区工作学习一年以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-8" id="option_q-8-5" value="5"> 
									<label for="option_q-8-5"> 
									<i class="survey_form_ui"></i>
										<div id="href8"></div>
										<div class="option_text">
											<p>没有在加拿大任何地区工作学习一年以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning8" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					
					
					<!-- 9 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question9">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >9</span>.</span>是否有加拿大亲属？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-9" id="option_q-9-1" value="1">
									 <label for="option_q-9-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">有</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-9" id="option_q-9-2" value="2"> 
									<label for="option_q-9-2"> 
									<i class="survey_form_ui"></i>
										<div id="href9"></div>
										<div class="option_text">
											<p>没有</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning9" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					
					<!-- 10 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question10">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >10</span>.</span>现在或未来是否有魁北克省的工作offer？<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-10" id="option_q-10-1" value="1">
									 <label for="option_q-10-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">有</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-10" id="option_q-10-2" value="2"> 
									<label for="option_q-10-2"> 
									<i class="survey_form_ui"></i>
										<div id="href10"></div>
										<div class="option_text">
											<p>没有</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning10" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					
					
					<!-- 11 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question11">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >11</span>.</span>英语成绩<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-1" value="1">
									 <label for="option_q-11-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">雅思5</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-2" value="2"> 
									<label for="option_q-11-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>雅思5.5</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-3" value="3"> 
									<label for="option_q-11-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>雅思6</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-4" value="4"> 
									<label for="option_q-11-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>雅思6.5</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-11" id="option_q-11-5" value="5"> 
									<label for="option_q-11-5"> 
									<i class="survey_form_ui"></i>
										<div id="href11"></div>
										<div class="option_text">
											<p>雅思7以上</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning11" style="color: #f00;display: none;">此题为必填项！</div>
							
						</div>
					</div>
					
					<!-- 12 -->
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title" id="question12">
								<div>
									
									<h3 class="title_text" >
										<p style="margin:0px;"><span class="title_index"><span class="question_index" >12</span>.</span>法语成绩<span style="font-weight: 700;color: #f00;">*</span></p>
									</h3>
									
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;"  tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-1" value="1">
									 <label for="option_q-12-1"> 
									 <i class="survey_form_ui"></i>
										<div class="option_text">
											<p style="margin:0px;">B2</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-2" value="2"> 
									<label for="option_q-12-2"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>C1</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-3" value="3"> 
									<label for="option_q-12-3"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>C2</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;" role="radio"
									tabindex="-1" aria-checked="false">
									<input class="survey_form_checkbox" type="radio" name="answer_q-12" id="option_q-12-4" value="4"> 
									<label for="option_q-12-4"> 
									<i class="survey_form_ui"></i>
										<div class="option_text">
											<p>无法语成绩</p>
										</div>
										<div class="stat">
											<div class="bar"></div>
											<span class="rate"></span> <span class="count"></span>
										</div>
									</label>
								</div>
								
							</div>
							<div id="warning12" style="color: #f00;display: none;">此题为必填项！</div>
						</div>
					</div>
					
					
				
				</div>
				
				<div class="survey_page" id="result">
					<div class="question question_radio required" style="display: block;">
						<div class="inner">
							<div class="title"  style="display: block;">
								<div>
									<h3 class="title_text" >
										<p style="margin:0px;">评估结果：</p>
									</h3>
								</div>
							</div>
							</div>
							<div style="margin-bottom:10px;margin-top:5px;border:0;border-top:1px solid #eee"></div>
							<div class="inner">
							<div class="inputs">
								<div class="option_item" style="width: 100%;" >
									 <label > 
										<div class="option_text" >
											<p id="federalscore">0</p>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  >
									<label > 
										<div class="option_text" >
											<p id="saskatchewanscore">1</p>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  >
									<label > 
										<div class="option_text" >
											<p id="scotiascore">1</p>
										</div>
									</label>
								</div>
								<div class="option_item" style="width: 100%;"  >
									<label > 
										<div class="option_text" >
											<p id="quebecscore">1</p>
										</div>
									</label>
								</div>
							</div>
						</div>
					</div>
					
				</div>	
				<!-- <div class="survey_control" id="warning" style="display: none;">
					<p style="color: #f00;">至少有一项没有选择！</p>
				</div> -->
				<div class="survey_control">
					<div class="inner">
						<a href="javascript:;" title="上一页" id="previousPage" aria-label="上一页" role="button" 
							class="survey_btn survey_prevpage" onclick="changeUpPage()" style="display: none;">上一页</a> 
						<a href="javascript:;" title="提交" id="toSubmit" aria-label="提交" role="button"
							class="survey_btn survey_submit" onclick="completeQuestion()"  style="display: none;">提交</a> 
						<a href="javascript:;" title="下一页" id="nextPage" aria-label="下一页" role="button"
							class="survey_btn survey_nextpage" onclick="changeNextPage()" style="display: inline-block;">下一页</a>
					</div>
				</div>

			</div> 
		</div>
				
				
				
				
			<!-- 答题start -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 博文啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 答题写在这里啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊 -->
			<!-- 答题end -->
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
			document.getElementById("sheet2").style.display="none";
			document.getElementById("result").style.display="none";
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

			//SIDEBAR STICKY---------------------------------------------	  
			var //offsetSb = $('.page-title-bg').height(),
			offsetFooter = $('#footer-offset').height() + 30;
			// DM Menu
			jQuery('#sidebar-stiky').affix({
				offset : {
					top : 390, //top offset for header 1 for others headers it will have other value
					bottom : offsetFooter
				}
			});

		});
		
		
		
		//点击下一页
		function changeNextPage(){
			var checked1 = $('input[name="answer_q-1"]:checked').val();
			var checked2 = $('input[name="answer_q-2"]:checked').val();
			var checked3 = $('input[name="answer_q-3"]:checked').val();
			var checked4 = $('input[name="answer_q-4"]:checked').val();
			if(checked1!=undefined&&checked2!=undefined&&checked3!=undefined&&checked4!=undefined){
				document.getElementById("sheet1").style.display="none";
				document.getElementById("sheet2").style.display="block";
				document.getElementById("nextPage").style.display="none";
				document.getElementById("toSubmit").style.display="inline-block";
				document.getElementById("previousPage").style.display="inline-block";
				
				var scroll_offset = $("#href0").offset(); //得到这个div层的offset，包含两个值，top和left
				$("body,html").animate({scrollTop:scroll_offset.top},500);//让body的scrollTop等于div的top，就实现了滚动
			}else{
				//document.getElementById("warning").style.display="block";
				if(checked1==undefined){
					//$(function(){location.href="#markingOlhtml";});
					var scroll_offset = $("#href0").offset();
					 $("body,html").animate({scrollTop:scroll_offset.top},500);
					document.getElementById("warning1").style.display="block";
				}else if(checked2==undefined){
					var scroll_offset = $("#href1").offset();
					 $("body,html").animate({scrollTop:scroll_offset.top},500);
					//$(function(){location.href="#herf1";});
					document.getElementById("warning1").style.display="none";
					document.getElementById("warning2").style.display="block";
				}else if(checked3==undefined){
					var scroll_offset = $("#href2").offset();
					 $("body,html").animate({scrollTop:scroll_offset.top},500);
					//$(function(){location.href="#herf2";});
					document.getElementById("warning2").style.display="none";
					document.getElementById("warning1").style.display="none";
					document.getElementById("warning3").style.display="block";
				}else if(checked4==undefined){
					//$(function(){location.href="#herf3";});
					var scroll_offset = $("#href3").offset();
					$("body,html").animate({scrollTop:scroll_offset.top},500);
					document.getElementById("warning1").style.display="none";
					document.getElementById("warning2").style.display="none";
					document.getElementById("warning3").style.display="none";
					document.getElementById("warning4").style.display="block";
				}
			}
			
		}
		//点击上一页
		function changeUpPage(){
			document.getElementById("warning1").style.display="none";
			document.getElementById("warning2").style.display="none";
			document.getElementById("warning3").style.display="none";
			document.getElementById("warning4").style.display="none";
			document.getElementById("sheet2").style.display="none";
			document.getElementById("sheet1").style.display="block";
			document.getElementById("nextPage").style.display="inline-block";
			document.getElementById("previousPage").style.display="none";
			document.getElementById("toSubmit").style.display="none";
			$(function(){location.href="#markingOlhtml";});
			//document.documentElement.scrollTop=0;
			//window.pageYOffset=0;
			//document.body.scrollTop=0
		}

		
		//提交答题
		function completeQuestion(){
			var federalscore = 0;
			var saskatchewanscore = 0;
			var scotiascore = 0;
			var quebecscore = 0;
			var checked1 = $('input[name="answer_q-1"]:checked').val();
			var checked2 = $('input[name="answer_q-2"]:checked').val();
			var checked3 = $('input[name="answer_q-3"]:checked').val();
			var checked4 = $('input[name="answer_q-4"]:checked').val();
			//var checked5 = $('input[name="question5"]:checked').val();
			var checked7 = $('input[name="answer_q-7"]:checked').val();
			var checked8 = $('input[name="answer_q-8"]:checked').val();
			var checked9 = $('input[name="answer_q-9"]:checked').val();
			var checked10 = $('input[name="answer_q-10"]:checked').val();
			var checked11 = $('input[name="answer_q-11"]:checked').val();
			var checked12 = $('input[name="answer_q-12"]:checked').val();
			
			if(checked7==undefined){
				var scroll_offset = $("#href0").offset();
				$("body,html").animate({scrollTop:scroll_offset.top},500);
				document.getElementById("warning7").style.display="block";
				//document.getElementById("warning").style.display="block";
				return;
			}else if(checked8==undefined){
				var scroll_offset = $("#href7").offset();
				$("body,html").animate({scrollTop:scroll_offset.top},500);
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="block";
				return;
			}else if(checked9==undefined){
				var scroll_offset = $("#href8").offset();
				$("body,html").animate({scrollTop:scroll_offset.top},500);
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="block";
				return;
			}else if(checked10==undefined){
				var scroll_offset = $("#href9").offset();
				$("body,html").animate({scrollTop:scroll_offset.top},500);
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="none";
				document.getElementById("warning10").style.display="block";
				return;
			}else if(checked11==undefined){
				var scroll_offset = $("#href10").offset();
				$("body,html").animate({scrollTop:scroll_offset.top},500);
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="none";
				document.getElementById("warning10").style.display="none";
				document.getElementById("warning11").style.display="block";
				return;
			}else if(checked12==undefined){
				var scroll_offset = $("#href11").offset();
				$("body,html").animate({scrollTop:scroll_offset.top},500);
				document.getElementById("warning7").style.display="none";
				document.getElementById("warning8").style.display="none";
				document.getElementById("warning9").style.display="none";
				document.getElementById("warning10").style.display="none";
				document.getElementById("warning11").style.display="none";
				document.getElementById("warning12").style.display="block";
				return;
			}
			
			if("1"==checked1){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked1){
				federalscore += 12;
				saskatchewanscore += 12;
				scotiascore += 12;
				quebecscore += 16;
			}else if("3"==checked1){
				federalscore += 10;
				saskatchewanscore += 10;
				scotiascore += 10;
				quebecscore += 10;
			}else if("4"==checked1){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}
			if("1"==checked2){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked2){
				federalscore += 21;
				saskatchewanscore += 15;
				scotiascore += 21;
				quebecscore += 8;
			}else if("3"==checked2){
				federalscore += 21;
				saskatchewanscore += 20;
				scotiascore += 21;
				quebecscore += 10;
			}else if("4"==checked2){
				federalscore += 22;
				saskatchewanscore += 20;
				scotiascore += 22;
				quebecscore += 10;
			}else if("5"==checked2){
				federalscore += 23;
				saskatchewanscore += 23;
				scotiascore += 23;
				quebecscore += 12;
			}else if("6"==checked2){
				federalscore += 25;
				saskatchewanscore += 23;
				scotiascore += 25;
				quebecscore += 14;
			}
			
			if("1"==checked4){
				federalscore += 9;
				saskatchewanscore += 2;
				scotiascore += 9;
				quebecscore += 4;
			}else if("2"==checked4){
				federalscore += 11;
				saskatchewanscore += 4;
				scotiascore += 11;
				quebecscore += 6;
			}else if("3"==checked4){
				federalscore += 11;
				saskatchewanscore += 6;
				scotiascore += 11;
				quebecscore += 6;
			}else if("4"==checked4){
				federalscore += 13;
				saskatchewanscore += 8;
				scotiascore += 13;
				quebecscore += 8;
			}else if("5"==checked4){
				federalscore += 13;
				saskatchewanscore += 10;
				scotiascore += 13;
				quebecscore += 8;
			}else if("6"==checked4){
				federalscore += 15;
				saskatchewanscore += 10;
				scotiascore += 15;
				quebecscore += 8;
			}else if("7"==checked4){
				federalscore += 0;
				saskatchewanscore += 12;
				scotiascore += 0;
				quebecscore += 0;
			}
			if("1"==checked7){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked7){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 4;
			}else if("3"==checked7){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 8;
			}
			if("1"==checked8){
				federalscore += 0;
				saskatchewanscore += 5;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked8){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 5;
				quebecscore += 0;
			}else if("3"==checked8){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 5;
			}else if("4"==checked8){
				federalscore += 5;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("5"==checked8){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}
			
			if("1"==checked9){
				federalscore += 0;
				saskatchewanscore += 20;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked9){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 5;
				quebecscore += 0;
			}else if("3"==checked9){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 3;
			}
			if("1"==checked10){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 0;
			}else if("2"==checked10){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 8;
			}
			if("1"==checked11){
				federalscore += 0;
				saskatchewanscore += 14;
				scotiascore += 0;
				quebecscore += 4;
			}else if("2"==checked11){
				federalscore += 0;
				saskatchewanscore += 16;
				scotiascore += 0;
				quebecscore += 4;
			}else if("3"==checked11){
				federalscore += 16;
				saskatchewanscore += 18;
				scotiascore += 16;
				quebecscore += 4;
			}else if("4"==checked11){
				federalscore += 20;
				saskatchewanscore += 20;
				scotiascore += 20;
				quebecscore += 4;
			}else if("5"==checked11){
				federalscore += 24;
				saskatchewanscore += 20;
				scotiascore += 24;
				quebecscore += 5;
			}
			
			if("1"==checked12){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 12;
			}else if("2"==checked12){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 14;
			}else if("3"==checked12){
				federalscore += 0;
				saskatchewanscore += 0;
				scotiascore += 0;
				quebecscore += 16;
			}
			$("#federalscore").text("联邦："+federalscore+"分");
			$("#saskatchewanscore").text("萨省："+saskatchewanscore+"分");
			$("#scotiascore").text("新斯科特："+scotiascore+"分");
			$("#quebecscore").text("魁北克："+quebecscore+"分");
			//document.getElementById("question12").style.display="none";
			document.getElementById("result").style.display="block";
			document.getElementById("sheet2").style.display="none";
			document.getElementById("nextPage").style.display="none";
			document.getElementById("previousPage").style.display="none";
			document.getElementById("toSubmit").style.display="none";
			/* $.ajax({
				url:urlPath+"/markingOLController/addMarkingOL",
				type: "POST",
				data:{checked1:checked1,
						checked2:checked2,
						checked3:checked3,
						checked4:checked4,
						checked7:checked7,
						checked8:checked8,
						checked9:checked9,
						checked10:checked10,
						checked11:checked11,
						checked12:checked12
						
						
						},
				dataType:"json",
				success: function (result) {
				
				}
			}); */
		
		}
	</script>

	<!-- JS end -->
</body>

</html>