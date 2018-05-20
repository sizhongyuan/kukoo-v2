<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%@include file="/WEB-INF/pages/base/head.jsp"%>
    <%
        //project
        String project=request.getParameter("project");
        String country=request.getParameter("country");
        String search=request.getParameter("search");
     %>
      <html>
        <head>
          <!-- <link rel="icon" href="../../favicon.ico"> -->
          <link rel="stylesheet" href="<%=basePath %>css/list/list2.css"/>
          <title>布谷移民——项目列表</title>
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
            var search = "${search}";
            var project = "${project}";
            var country = "${country}";
            <%-- var project ="<%=project %>";
	    var country ="<%=country %>";
	    var search ="<%=search %>"; --%>
	    //alert(country +"=request="+project);
		//alert(search+"==search");
		if(!search==""){
			$(".haveproject").each(function(i){
				var countryAttr = $(this).attr("country");
				var projectAttr = $(this).attr("project");
				if(countryAttr.indexOf(search)!=-1||projectAttr.indexOf(search)!=-1){
					$("#"+$(this).attr("id")).show();
				}else{
					$("#"+$(this).attr("id")).hide();
				}
			});

		 }else{
			 if(country.trim()!=""||project.trim()!="" ){
				 $(".haveproject").each(function(i){
					var countryAttr = $(this).attr("country");
					var projectAttr = $(this).attr("project");
					if(countryAttr == country||projectAttr == project){
						$("#"+$(this).attr("id")).show();
					}else{
						$("#"+$(this).attr("id")).hide();
					}
				});
			 }
		 }

	});
        </script>
        <body>

          <!-- LOADER -->
          <div id="loader-overflow">
            <div id="loader3" class="loader-cont">Please enable JS</div>
          </div>

          <div id="wrap" class="boxed ">
            <div class="grey-bg">
              <!-- Grey BG -->

              <!--[if lte IE 8]> <div id="ie-container"> <div id="ie-cont-close"> <a href="#" onclick="javascript&#058;this.parentNode.parentNode.style.display="none"; return false;"><img src="images/ie-warn/ie-warning-close.jpg" style="border: none;"
              alt="Close"></a> </div> <div id="ie-cont-content" > <div id="ie-cont-warning"> <img src="images/ie-warn/ie-warning.jpg" alt="Warning!"> </div> <div id="ie-cont-text" > <div id="ie-text-bold"> You are using an outdated browser </div> <div
              id="ie-text"> For a better experience using this site, please upgrade to a modern web browser. </div> </div> <div id="ie-cont-brows" > <a href="http://www.firefox.com" target="_blank"><img src="images/ie-warn/ie-warning-firefox.jpg" alt="Download
              Firefox"></a> <a href="http://www.opera.com/download/" target="_blank"><img src="images/ie-warn/ie-warning-opera.jpg" alt="Download Opera"></a> <a href="http://www.apple.com/safari/download/" target="_blank"><img
              src="images/ie-warn/ie-warning-safari.jpg" alt="Download Safari"></a> <a href="http://www.google.com/chrome" target="_blank"><img src="images/ie-warn/ie-warning-chrome.jpg" alt="Download Google Chrome"></a> </div> </div> </div> <![endif]-->

              <!-- HEADER 1 FONT BLACK TRANSPARENT -->
              <header id="nav" class="header header-1 bg-gray">
                <div class="header-wrapper">
                  <div class="container-m-30 clearfix">
                    <div class="logo-row">

                      <!-- LOGO -->
                      <div class="logo-container-2">
                        <div class="logo-2">
                          <a href="/kukoo/homePage" class="clearfix">
                            <img src="<%=basePath %>elementy/images/logo.svg" class="logo-img" alt="Logo"></a>
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

                    <!-- SEARCH READ DOCUMENTATION -->
                    <ul class="cd-header-buttons" style="z-index: 999;">
                      <li>
                        <a class="cd-search-trigger" href="#cd-search">
                          <span></span>
                        </a>
                      </li>
                    </ul>
                    <!-- cd-header-buttons -->
                    <div id="cd-search" class="cd-search" style="background-color: #FFF;z-index: 99;">
                      <form class="form-search" id="searchForm" action="/kukoo/list/lists" method="post">
                        <input type="text" value="" name="search" id="search" placeholder="国家名/项目名..."></form>
                        <!-- <div class="row" style="margin-top: 20px;"> <div class="col-sm-4 mb-30"></div> <div class="col-sm-3 mb-30"> <form method="post" action="#" class="form"> <div class="select-styled w-100"> <select class="w-100" style="font-weight: 300">
                        <option>请选择国家</option> <option>澳大利亚</option> <option>加拿大</option> <option>英国</option> </select> </div> </form> </div> <div class="col-sm-3 mb-30"> <div class="w-100"> <input type="text" name="q" placeholder="项目" style="height:35px; border: none;
                        border-top:none; border-bottom: 1px solid #ccc; border-radius: 0px; background: transparent; color: #323336; font-size: 14px; /* margin: 0; */ outline: medium none; padding: 0px 20px 5px 1px; margin-top:7px; line-height: inherit";> </div> </div> <div
                        class="col-sm-2 mb-30"> <button type="submit" title="Start Search" style="height: 20px;width: 20px;margin-top:15px;"> <span style="height: 20px;width: 20px;" aria-hidden="true" class="icon_search"></span> </button> </div> </div> -->

                      </div>

                    </div>
                    <!-- END header-wrapper -->

                  </header>

                  <!-- PAGE TITLE LARGE 2 GRAY -->
                  <div class="page-title-cont page-title-large2-cont bg-gray" style="padding-top: 10px;">
                    <div class="relative container align-left">
                      <div class="row">

                        <div class="col-md-8">
                          <h1 class="page-title2">移民项目</h1>
                        </div>

                        <div class="col-md-4">
                          <div class="breadcrumbs2 font-poppins">
                            <a class="a-inv" href="/kukoo/homePage/">KUKOO</a>
                            <span class="slash-divider">/</span>
                            <span class="bread-current">移民项目</span>
                          </div>
                        </div>

                      </div>
                    </div>
                  </div>

                  <!-- COTENT CONTAINER -->
                  <div class="main container">

                    <div class="search-c pb-50">
                      <div class="btn-group">
                        <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                          {{selected.country==0?"国家":country[selected.country].value}}
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" t="country">
                          <li v-for="(item,index) in country" @click="search" :id="item.key" :class="{'on':selected.country==index}">{{item.value}}</li>
                        </ul>
                      </div>
                      <%-- <div class="btn-group">
                        <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                          {{selected.projectType==0?"类别":projectType[selected.projectType].value}}
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" t="projectType">
                          <li v-for="(item,index) in projectType" @click="search" :id="item.key" :class="{'on':selected.projectType==index}">{{item.value}}</li>
                        </ul>
                      </div>
                      <div class="btn-group">
                        <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                          {{selected.timespan==0?"周期":timespan[selected.timespan].value}}
                          <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu" role="menu" t="timespan">
                          <li v-for="(item,index) in timespan" @click="search" :id="item.key" :class="{'on':selected.timespan==index}">{{item.value}}</li>
                        </ul>
                      </div> --%>

                      <%-- <div class="progress">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 49%;margin-left: 62px;">
                          <span class="sr-only">20% Complete</span>
                        </div>
                      </div> --%>

                      <div class="result">
                        发现
                        {{list.length}}
                        个结果
                      </div>
                    </div>

                    <transition-group name="staggered-fade" tag="div" class="list-c pb-50 mt-25" v-on:before-enter="beforeEnter" v-on:enter="enter" v-on:leave="leave">

                      <div class="ts-container mt-20" v-bind:key="item.id" v-for="(item,index) in list" v-bind:data-index="index">
                        <div class="ts-icon-container-bg">
                          <div class="ts-icon-container">
                            {{item.name}}<br/>
                            <%-- ({{item.code}}) --%>
                          </div>
                        </div>
                        <div class="ts-main-container-bg">
                          <div class="ts-main-container clearfix">
                            <div class="ts-text-container font-poppins">
                              <div class="mt-10 mb-10 mylabel">
                                <span class="label label-info">{{item.country}}</span>
                                <span class="label label-default">{{item.type}}</span>
                              </div>
                              <div class="mt-15 tt">
                                <b>处理周期
                                </b>  {{item.timespan+item.timespanUnit}}</div>
                              <div class="mt-0 tt">
                                <b>资金要求
                                </b>  {{item.cost+item.costUnit}}</div>
                              <div class="mt-5 desc">{{item.desc}}<span pid="2-1" class="quote-author-description">项目详情</span></div>
                              <%-- <div class="right-text t-a-container mt-10">
                                <span class="quote-author-description" :pid="item.id">项目详情</span>
                              </div> --%>
                            </div>
                          </div>
                        </div>
                      </div>
                    </transition-group>

                  </div>
                  <!-- END container -->

                  <!-- FOOTER 4 BLACK -->
                  <%@include file="/WEB-INF/pages/base/footer.jsp"%>

                  </div>
                  <!-- End BG -->
                </div>
                <!-- End wrap -->

                <%-- <script src="<%=basePath %>elementy/js/velocity.min.js"></script> --%>
                  <script src="<%=basePath %>javascript/pages/list.js"></script>
                </body>

              </html>
