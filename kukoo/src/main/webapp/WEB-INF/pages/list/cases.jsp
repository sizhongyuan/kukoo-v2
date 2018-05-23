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
          <title>布谷移民——移友足迹</title>
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

              <pg-head-banner id="ban1" text="移友足迹"></pg-head-banner>

              <!-- COTENT CONTAINER -->
              <div class="main container">

                <blockquote class="quote1 mb-0 m-p-0 mt-20">
                  <p>我们汇总了真实的移友案例以供参考申请周期</p>
                  <footer>
                    <span class="font-black">数据持续更新中..</span>
                  </footer>
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

                          <script src="<%=basePath %>javascript/dist/header.js"></script>
                          <script src="<%=basePath %>javascript/dist/headerBanner.js"></script>
                          <script src="<%=basePath %>javascript/pages/cases.js"></script>
                        </body>

                      </html>
