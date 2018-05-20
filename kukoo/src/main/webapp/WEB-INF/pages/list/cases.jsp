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
          <link rel="stylesheet" href="<%=basePath %>css/list/cases.css"/>
          <title>布谷移民——案例列表</title>
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
	/* function mainQuery(){
		var country = $("#country").val().trim();
		var project = $("#project").val().trim();
		//alert("submit"+country+"---"+project);
		window.parent.setiframeSrc(country,project);
	} */
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
                            <h1 class="page-title2">移友足迹</h1>
                            <%-- <div class="page-sub-title font-poppins">
                              我们汇总了真实的移友案例以供参考申请周期，数据持续更新中
                            </div> --%>
                            </div>

                            <div class="col-md-4">
                              <div class="breadcrumbs2 font-poppins">
                                <a class="a-inv" href="/kukoo/homePage/">KUKOO</a>
                                <span class="slash-divider">/</span>
                                <span class="bread-current">移友足迹</span>
                              </div>
                            </div>

                          </div>
                        </div>
                      </div>

                      <!-- COTENT CONTAINER -->
                      <div class="main container">

                        <blockquote class="quote1 mb-0 m-p-0 mt-20">
                          <p>我们汇总了真实的移友案例以供参考申请周期</p>
                          <footer>
                            <span class="font-black">数据持续更新中..</span></footer>
                        </blockquote>

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
                        </div> --%>
                            <div class="btn-group">
                              <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                {{selected.project==0?"项目":project[selected.project].value}}
                                <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu" role="menu" t="project">
                                <li v-for="(item,index) in project" @click="search" :id="item.key" :class="{'on':selected.project==index}">{{item.value}}</li>
                              </ul>
                            </div>
                            <%-- <div class="btn-group">
                          <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                            {{selected.occup==0?"职业":occup[selected.occup].value}}
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu" role="menu" t="occup">
                            <li v-for="(item,index) in occup" @click="search" :id="item.key" :class="{'on':selected.occup==index}">{{item.value}}</li>
                          </ul>
                        </div>
                        <div class="btn-group">
                          <button class="btn btn-default btn-sm dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                            {{selected.ages==0?"年龄":ages[selected.ages].value}}
                            <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu" role="menu" t="ages">
                            <li v-for="(item,index) in ages" @click="search" :id="item.key" :class="{'on':selected.ages==index}">{{item.value}}</li>
                          </ul>
                        </div> --%>

                              <div class="result">
                                发现
                                {{list.length}}
                                个结果
                              </div>
                            </div>

                            <div class="sort-c"></div>

                            <transition-group name="staggered-fade" tag="div" class="list-c pb-50 mt-25" v-on:before-enter="beforeEnter" v-on:enter="enter" v-on:leave="leave">
                              <div class="ts-container mt-20" v-bind:key="item.caseId" v-for="(item,index) in list" v-bind:data-index="index">
                                <div class="ts-icon-container-bg">
                                  <div class="ts-icon-container">
                                    {{item.projectName}}<br/>
                                    {{item.projectCode?"("+item.projectCode+")":""}}
                                  </div>
                                </div>
                                <div class="ts-main-container-bg">
                                  <div class="head">
                                    <%-- <embed v-if="item.sex==1" src="<%=basePath %>elementy/svg/man.svg" width="50px" style="margin-top: 20px;" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/>
                                    <embed v-if="item.sex==0" src="<%=basePath %>elementy/svg/woman.svg" width="50px" style="margin-top: 20px;" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/> --%>
                                    <img v-if="item.sex==1" src="<%=basePath %>elementy/png/man.png" width="50px" style="margin-top: 20px;" alt="">
                                    <img v-if="item.sex==0" src="<%=basePath %>elementy/png/woman.png" width="50px" style="margin-top: 20px;" alt="">
                                    <div class="pinfo">
                                      <div class="">{{item.name}}&nbsp;&nbsp;{{item.age}}岁</div>
                                      <div class="">{{item.occupName}}</div>
                                    </div>
                                  </div>
                                  <div class="ts-main-container clearfix">
                                    <div class="ts-text-container font-poppins">

                                      <div class="events">

                                        <div class="event" :style="'left:'+86/(item.events.length-1)*index+'%'" v-for="(marker,index) in item.events">
                                          <%-- <embed v-if="marker.svg==1" src="<%=basePath %>elementy/svg/djsq.svg" width="30px" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/>
                                  <embed v-if="marker.svg==3" src="<%=basePath %>elementy/svg/qzjymz.svg" width="30px" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/>
                                  <embed v-if="marker.svg==2" src="<%=basePath %>elementy/svg/stm.svg" width="30px" type="image/svg+xml" pluginspage="http://www.adobe.com/svg/viewer/install/"/> --%>
                                            <%-- <div class="text mt-5" :style="marker.normalPoint?'margin-top:37px !important':''"> --%>
                                              <div class="text mt-5">
                                                <div class="evt">{{marker.event}}</div>
                                                <div :class="marker.isProvince==1?'yellow':'blue'">{{marker.date}}</div>
                                              </div>
                                            </div>

                                            <div class="clear"></div>
                                          </div>

                                          <div class="line mt-20">
                                            <div class="circle" :class="{'bg-yellow':marker.isProvince==1,'bg-blue':marker.isProvince==0,'sm-circle':marker.normalPoint}" :style="'left:'+(86/(item.events.length-1)*index+6)+'%'" v-for="(marker,index) in item.events"></div>

                                            <div class="strip-p" v-if="item.strip.p" :style="'left:'+item.strip.left_p+'%;width:'+item.strip.width_p+'%'"></div>
                                            <div class="strip-u" v-if="item.strip.u" :style="'left:'+item.strip.left_u+'%;width:'+item.strip.width_u+'%'"></div>

                                            <div class="province" v-if="item.strip.p" :style="'left:'+(item.strip.left_p+6+offset)+'%;width:'+(item.strip.width_p-6)+'%'">
                                              <div class="mt-10">处理周期共计{{item.provinceDuring}}个月</div>
                                              <div class="sj1">▾</div>
                                              <div>省提名阶段</div>
                                            </div>
                                            <div class="unit" v-if="item.strip.u" :style="'left:'+(item.strip.left_u+offset)+'%;width:'+(item.strip.width_u-6)+'%'">
                                              <div class="mt-10">处理周期共计{{item.unionDuring}}个月</div>
                                              <div class="sj2">▾</div>
                                              <div>联邦阶段</div>
                                            </div>

                                          </div>

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

                            <script src="<%=basePath %>javascript/pages/cases.js"></script>
                          </body>

                        </html>
