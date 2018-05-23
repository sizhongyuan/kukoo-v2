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
              <pg-head-banner id="ban1" text="项目列表"></pg-head-banner>

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
                  <%--<div class="btn-group">
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
                                  </b>
                                  {{item.timespan+item.timespanUnit}}</div>
                                <div class="mt-0 tt">
                                  <b>资金要求
                                  </b>
                                  {{item.cost+item.costUnit}}</div>
                                <div class="mt-5 desc">{{item.desc}}
                                  <span pid="2-1" class="quote-author-description">项目详情</span>
                                </div>
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

                      <script src="<%=basePath %>javascript/dist/header.js"></script>
                      <script src="<%=basePath %>javascript/dist/headerBanner.js"></script>
                      <script src="<%=basePath %>javascript/pages/list.js"></script>
                    </body>

                  </html>
