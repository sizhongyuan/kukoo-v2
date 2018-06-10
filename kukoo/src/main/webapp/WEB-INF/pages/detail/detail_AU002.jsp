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
          <link rel="stylesheet" href="<%=basePath %>css/detail/detail2.css"/>
          <title>布谷移民——项目详情</title>

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
              <pg-head-banner id="ban1" text="澳大利亚190州担保技术移民" purl="<%=basePath %>list/lists" pname="移民项目" isdetail="1" url="https://www.homeaffairs.gov.au/trav/visa-1/190-"></pg-head-banner>

              <div class="tabs-4 tabs-4-c">
                <div class="col-sm-8 bg-white pl-0 pt-20">
                  <ul class="nav nav-tabs bootstrap-tabs">
                    <li class="active">
                      <a href="#Policy" class="a-inv font-微软雅黑" data-toggle="tab">政策解读</a>
                    </li>
                    <li>
                      <a href="#Requirement" class="a-inv font-微软雅黑" data-toggle="tab">申请条件</a>
                    </li>
                    <li>
                      <a href="#process" class="a-inv font-微软雅黑" data-toggle="tab">流程周期</a>
                    </li>
                    <li>
                      <a href="#fee" class="a-inv font-微软雅黑" data-toggle="tab">费用详情</a>
                    </li>
                    <li>
                      <a href="#documents" class="a-inv font-微软雅黑" data-toggle="tab">材料清单</a>
                    </li>
                  </ul>
                </div>
                <div class="col-sm-4 bg-white pt-20"></div>
              </div>

              <!-- COTENT CONTAINER -->
              <div class="container mt-30">
                <div class="row">

                  <!-- CONTENT -->
                  <div class="col-sm-8 blog-main-posts">

                    <!-- Post Item -->
                    <div class="wow fadeIn pb-90" style="visibility: visible; animation-name: fadeIn;">

                      <div class="tabs-4">
                        <%-- ////// --%>
                          <div class="tab-content">
                            <div class="tab-pane fade in active font-微软雅黑 font-12" id="Policy">
                              <h5 class="font-微软雅黑">
                                <strong>项目简介</strong>
                              </h5>
                              <p>澳大利亚190州担保技术移民签证Skilled Nominated Visa (Subclass 190)，俗称州担保技术移民。申请人在澳洲技术移民评分只有55分的情况下，可申请州担保加5分，评分达到60分即可提出申请。189签证与190签证都是一步到位的永久居民(Permanent
                                Resident)签证。但是两个签证类别也存在差异，189签证属于联邦性质的移民签证，获签登陆后可以去澳洲任何地方定居，190签证属于州担保性质的移民签证，获签登陆后的前两年（累计两年）必须在担保的州定居，中间可以回国或去澳洲其他州旅游。</p>
                              <h5 class="font-微软雅黑">
                                <strong>项目要点</strong>
                              </h5>
                              <p>澳大利亚190州担保技术移民签证申请人职业须在MLTSSL或者STSOL列表上（特殊职业除外），每个州政府有独立的担保职业，并且每年会调整。申请人可根据自己的的职业选择担保的州政府；至于能否申请到州担保，取决于申请人评估的职业是否在州担保的职业清单上以及是否符合州政府担保的其他特定要求（雅思、工作年限、工作Offer等）。申请190签证成功后可以无限期居住在澳洲，申请人及其家人可以在这里作为永久居民去工作、学习、加入医疗保险、担保亲属、申请澳大利亚国籍等。</p>

                            </div>
                            <div class="tab-pane fade font-微软雅黑 font-12" id="Requirement">
                              <h5 class="font-微软雅黑">
                                <strong>工作经验</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>职业必须在MLTSSL或STSOL 移民职业列表上，工作经验需要与提名的职业相关才能算分；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>工作年限只按照过去10年内的工作经历计算；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>通过职业评估，但工作年限不局限于职业评估上的工作经验，职业评估完成后的工作经验仍然可以计算在内。</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>语言能力</strong>
                              </h5>
                              <p>以下任一语言最低达到Competent English的成绩，成绩3年内有效；</p>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>International English Language Testing System (IELTS)；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>Occupational English Test (OET)；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>Test of English as a Foreign Language internet-Based Test (TOEFL iBT)；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>Pearson Test of English (PTE) Academic；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>Cambridge Advanced English (CAE)；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>学历要求</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>一般要求专科以上学历（专科学历很难通过职业评估）；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>年龄要求</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>45岁以下；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>担保提名</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>获得州或领地政府担保提名；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>评分标准</strong>
                              </h5>
                              <ul class="icon-list mb-20">
                                <li>
                                  <i class="fa fa-angle-right"></i>澳洲技术移民评分标准打分达到60分（满分130分）</li>
                              </ul>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-bookmark-o"></i>
                                  <strong>澳洲技术移民评分标准</strong>
                                </li>
                              </ul>
                              <div class="post-prev-info ">
                                <!-- 表格开始 -->
                                <ul class="toggle-view-custom">
                                  <li v-for="item in score.au">
                                    <h3 class="ui-accordion-header">
                                      <span class="link"></span>
                                      <div class="col-md-10 pl-0 fs-12">
                                        <div class="col-md-9 pl-0 title-1">
                                          <p>{{item.title}}</p>
                                          <%-- <p class="ml-20">{{item.title_en}}</p> --%>
                                          </div>
                                          <div class="col-md-3 plr-0">{{item.k1}}</div>
                                        </div>
                                        <div class="clear"></div>
                                      </h3>

                                      <div v-if="item.has2" class="panel" v-for="c in item.children">
                                        <dl class="toggle">
                                          <dt>
                                            <a href="#" class="lh-0">
                                              <span class="col-md-12 plr-0">
                                                <span class="col-md-9 plr-0">{{c.k1}}</span>
                                                <span class="col-md-3 plr-0 text-left">{{c.k2}}</span>
                                              </span>
                                              <span class="clear"></span>
                                            </a>
                                          </dt>
                                          <dd style="display:inline-block">
                                            <span class="col-md-12 plr-0" :class="{'bg-gray':i%2==1}" v-for="(l,i) in c.list">
                                              <div class="col-md-9 plr-0">{{l.v1}}</div>
                                              <div class="col-md-3 pr-30">{{l.v2}}</div>
                                            </span>
                                          </dd>
                                        </dl>
                                      </div>

                                      <div class="panel" v-if="!item.has2">
                                        <ul class="table-ul">
                                          <li :class="{'bg-gray':i%2==0}" v-for="(c,i) in item.children">
                                            <div class="col-sm-9">{{c.v1}}</div>
                                            <div class="col-sm-3">{{c.v2}}</div>
                                          </li>
                                        </ul>
                                      </div>

                                      <div class="panel pb-5"></div>

                                    </li>
                                  </ul>
                                  <!-- 表格结束 -->
                                </div>

                              </div>
                              <div class="tab-pane fade font-微软雅黑 font-12" id="process">
                                <h5 class="font-微软雅黑">
                                  <strong>申请流程</strong>
                                </h5>

                                <h5 class="font-微软雅黑">1.&nbsp 评估移民条件</h5>
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>申请者应首先确认满足189签证评分标准；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>确认符合澳洲189类独立技术移民其他基本条件。</li>
                                </ul>
                                <div class="post-prev-info font-12">
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-info-circle"></i>
                                      <li>澳洲技术移民评分标准及其他基本条件具体参见“申请条件”页。</li>
                                    </ul>
                                  </div>

                                  <h5 class="font-微软雅黑">2.&nbsp 准备材料递交职业评估</h5>

                                  <ul class="icon-list mb-20 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>首先确认自己的职业评估机构；</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>明确职业评估是否有语言要求。</li>
                                  </ul>
                                  <h5 class="font-微软雅黑">3.&nbsp 注册EOI</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>职业评估通过之后填写EOI入池，等待被邀请（每月邀请2次左右）；</li>

                                  </ul>
                                  <h5 class="font-微软雅黑">4.&nbsp 递交州担保</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>根据州担保要求递交材料；</li>
                                  </ul>

                                  <h5 class="font-微软雅黑">5.&nbsp 递交签证申请</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>担保通过收到签证邀请后在60天内递交签证申请；</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被移民局要求补充提供材料或背景调查；</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>移民局要求补充提供的材料28天内提交。</li>
                                  </ul>

                                  <h5 class="font-微软雅黑">6.&nbsp 体检</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>递交签证申请后，可以在线下载体检号到官方指定体检医院进行体检；</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>最晚要在分CO之后的28天内提交。</li>
                                  </ul>

                                  <h5 class="font-微软雅黑">7.&nbsp 配偶缴纳语言费或者补交雅思成绩</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>澳洲配偶语言成绩达到functional English可以不缴纳语言费；</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>没有合格语言成绩的配偶，CO会发补料信，让申请人缴纳语言费；</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>配偶递交签证申请之后补交雅思成绩，最晚要在分CO之后的28天内提交；</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>配偶语言成绩有效期1年；</li>
                                  </ul>

                                  <h5 class="font-微软雅黑">8.&nbsp 获得移民签证</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>材料齐全的话，一般6个月内下签，然后登陆澳大利亚，开启海外新生活。</li>
                                  </ul>

                                  <h5 class="font-微软雅黑">
                                    <strong>处理周期</strong>
                                  </h5>
                                  <detail-dura :ds="dura._190" class="pt-0 pl-0"></detail-dura>

                                </div>
                                <div class="tab-pane fade font-微软雅黑 font-12" id="fee">
                                  <p>
                                    <detail-pay :ds="pay._190"></detail-pay>
                                  </p>
                                </div>
                                <div class="tab-pane fade font-微软雅黑 font-12" id="documents">
                                  <p>
                                    <detail-doc :ds="doc._190"></detail-doc>
                                  </p>
                                </div>
                              </div>
                            </div>

                          </div>

                        </div>

                        <!-- SIDEBAR -->
                        <div class="col-sm-4 col-md-3 col-md-offset-1" style="position:relative">

                          <div class="box">

                            <%-- <div class="title">加拿大</div> --%>

                              <ul>
                                <li>
                                  <div class="col-sm-5">资金要求</div>
                                  <div class="col-sm-7">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star-o"></i>
                                    <i class="fa fa-star-o"></i>
                                    &nbsp;
                                    <span style="color: #999;">低</span>
                                  </div>
                                </li>

                                <li>
                                  <div class="col-sm-5">居住要求</div>
                                  <div class="col-sm-7">
                                    5年住满2年
                                  </div>
                                </li>

                                <li>
                                  <div class="col-sm-5">签证类型</div>
                                  <div class="col-sm-7">
                                    永久居民
                                  </div>
                                </li>

                                <li>
                                  <div class="col-sm-5">处理周期</div>
                                  <div class="col-sm-7">
                                    8个月左右
                                  </div>
                                </li>

                                <a class="button small hover-thin blue" href="#">在线评估</a>

                              </ul>

                            </div>

                          </div>

                        </div>

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
                      <script src="<%=basePath %>javascript/pages/detaile_pay_doc.js"></script>
                      <script src="<%=basePath %>javascript/pages/detaile_score.js"></script>
                      <script src="<%=basePath %>javascript/pages/detaile_adapter.js"></script>
                    </body>

                  </html>
