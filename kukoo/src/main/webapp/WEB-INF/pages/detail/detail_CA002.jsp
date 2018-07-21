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
              <pg-head-banner id="ban1" text="魁北克省技术移民" purl="<%=basePath %>list/lists" pname="移民项目" isdetail="1" url="http://www.immigration-quebec.gouv.qc.ca/en/immigrate-settle/permanent-workers/index.html"></pg-head-banner>

              <div class="tabs-4 tabs-4-c">
                <div class="col-sm-8 bg-white pl-0 pt-20 tabs-4-1">
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
                <div class="col-sm-4 bg-white pt-20 pl-0 pr-0 tabs-4-2"></div>
              </div>

              <!-- COTENT CONTAINER -->
              <div class="container mt-30">
                <div class="row">

                  <!-- CONTENT -->
                  <div class="col-sm-8 blog-main-posts">

                    <!-- Post Item -->
                    <div class="wow fadeIn pb-90" style="visibility: visible; animation-name: fadeIn;">

                      <div class="tabs-4">

                        <div class="tab-content">
                          <div class="tab-pane fade in active font-微软雅黑 font-12" id="Policy">
                            <h5 class="font-微软雅黑">
                              <strong>项目简介</strong>
                            </h5>
                            <p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大魁北克省技术移民项目（Quebec Selected Skilled Workers, "QSW"）（简称“魁省技术移民项目”）需要申请人首先向魁省的移民局递交申请材料，通过后魁省移民局给申请人发放移民甄选证明（Certificat de Sélection du Québec，"CSQ"
                              ），申请人再将CSQ和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不会拒绝申请人的移民申请。魁省技术移民要求申请人有意向定居魁省，但无需提供定居计划；获得永居身份后，建议申请人在魁省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>
                            <h5 class="font-微软雅黑">
                              <strong>项目要点</strong>
                            </h5>
                            <p>在2018年8月15日之前，根据魁省现行政策，魁省技术移民申请的成败决定于能否在开放时抢到配额，以及申请人是否能够达到魁省评分标准要求的分数。根据魁省评分标准，申请人所学专业的受训领域加分情况是主要选择因素，无职业限制，无最低语言要求。对于受训领域加分较高的专业（如IT），则申请条件较为宽松，部分申请人不需要语言成绩也可以满足申请要求。而受训领域加分较低的专业，通常需要有法语成绩或其他加分才可以通过。此外，魁省会根据申请人家庭子女数量有额外加分。因此，魁省技术移民特别适合有专业方面加分较高、及/或有子女的申请人。</p>
                            <p>2018年8月15日之后，魁北克将采取与加拿大联邦技术移民EE类似的根据分数高低择优甄选的原则，取代之前的“抢名额+通过分”的甄选方式。从而将进一步提高魁省技术移民的申请门槛。因此，打算申请魁北克技术移民的申请人尽量抓住2018年上半年这次最后的申请机会。</p>
                            <p>此外，魁省技术移民项目通常申请周期较长；根据过往申请经验，整体受理周期需要3-6年。但对于受训领域加分较高的申请人，由于魁省技术移民申请门槛较低，因此魁省技术移民仍是较具有吸引力的移民申请项目。</p>

                            <!-- 魁北克受训列表 -->
                            <ul class="toggle-view-custom">
                              <li>
                                <h3 class="ui-accordion-header">
                                  <span class="link"></span>
                                  <b>魁北克受训列表&nbsp;&nbsp;(2017年3月8日更新)
                                  </b>
                                  <div class="clear"></div>
                                </h3>
                                <div class="panel training">
                                  <ul class="table-ul">
                                    <li :class="{'table-title':i==0,'bg-gray':i%2==0}" v-for="(c,i) in training">
                                      <div class="col-sm-5">{{c[0]}}</div>
                                      <div class="col-sm-5">{{c[1]}}</div>
                                      <div class="col-sm-1 text-right">{{c[2]}}</div>
                                      <div class="col-sm-1 text-right">{{c[2]}}</div>
                                    </li>
                                  </ul>
                                </div>
                              </li>
                            </ul>
                            <!-- 魁北克受训列表 -->

                            <h5 class="font-微软雅黑">
                              <strong>配额情况</strong>
                            </h5>
                            <P>魁北克自2016年开始实施在线申请，通过Mon project Québec系统提交申请，每年都有配额限制。其中，2016年公布了10,000个配额，分两次开放：2016年6月13日开放了5,000个，2016年8月16日开放了5,000个。2017年公布了5,000个配额，但在2017年并未开放。预计2017年的名额将于2018年上半年开放。魁省技术移民配额相对较多，但由于申请门槛较低，在实际抢名额过程中仍存在一定难度。</P>
                            <h5 class="font-微软雅黑">
                              <strong>申请建议</strong>
                            </h5>
                            <P>布谷对魁省技术移民申请的建议如下：</P>
                            <ul class="icon-list mb-10">
                              <li>
                                <i class="fa fa-angle-right"></i>对于根据目前魁省评分标准，分数刚过线的申请人，务必抓住2018年8月15日之前最后一次申请机会；</li>
                              <li>
                                <i class="fa fa-angle-right"></i>魁省抢名额无需提前准备所有资料，只需填写申请人基本信息。因此，布谷建议申请人尽早注册Mon Project Quebec账号并填写信息，等系统一开放就立刻递交，才有机会抢上配额。</li>
                            </ul>
                            <div class="post-prev-info font-12 mb=50">
                              <ul class="icon-list mb-10 font-微软雅黑">
                                <li>
                                  <i class="fa fa-info-circle"></i>
                                  <li>布谷具有丰富的抢配额经验及实力，中国和加拿大办公室轮动监测移民申请系统，第一时间了解名额开放时间并协助提交申请。</li>
                                </ul>
                              </div>
                            </div>
                            <div class="tab-pane fade font-微软雅黑 font-12" id="Requirement">
                              <h5 class="font-微软雅黑">
                                <strong>工作经验</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>过去5年至少有6个月连续有偿工作经验，可以是连续的全职或者等同的兼职；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>职业必须属于NOC职业代码中的0、A、B或C类别，工作年限只按照过去5年内的工作经历计算。</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>语言能力</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>法语和英语不做强制要求，只要申请人各项打分总分满足通过分即可；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>学历要求</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>比较宽松，目前不需要做学历认证，认可私立学校以及社会办学证书；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>评分标准</strong>
                              </h5>
                              <p>根据魁省技术移民评分标准，通过分数如下：</p>
                              <ul class="icon-list mb-20">
                                <li>
                                  <i class="fa fa-angle-right"></i>单身：50分，其中1-7项要达到43分；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>有配偶：59分，其中1-7项要达到52分;</li>
                              </ul>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-bookmark-o"></i>
                                  <strong>魁省技术移民评分标准</strong>
                                </li>
                              </ul>
                              <div class="post-prev-info mb-50">

                                <!-- 表格开始 -->
                                <ul class="toggle-view-custom">
                                  <li v-for="item in score.kui">
                                    <h3 class="ui-accordion-header">
                                      <span class="link"></span>
                                      <div class="col-md-10 pl-0 fs-12">
                                        <div class="col-md-3 pl-0 title-1">
                                          <p>{{item.title}}</p>
                                          <%-- <p class="ml-20">{{item.title_en}}</p> --%>
                                          </div>
                                          <div class="col-md-6 plr-0 text-left overhide h50">{{item.k1}}</div>
                                          <div class="col-md-3 plr-0 text-right">{{item.k2}}</div>
                                        </div>
                                        <div class="clear"></div>
                                      </h3>

                                      <div v-if="item.has2" class="panel" v-for="c in item.children">
                                        <dl class="toggle">
                                          <dt>
                                            <a href="#" class="lh-0">
                                              <span class="col-md-12 plr-0">
                                                <span class="col-md-3 plr-0">{{c.k1}}</span>
                                                <span class="col-md-6 plr-0 text-left">{{c.k2}}</span>
                                                <span class="col-md-3 text-right" style="padding-right:25px;">{{c.k3}}</span>
                                              </span>
                                              <span class="clear"></span>
                                            </a>
                                          </dt>
                                          <dd style="display:inline-block">
                                            <span class="col-md-12 plr-0" :class="{'bg-gray':i%2==1}" v-for="(l,i) in c.list">
                                              <div class="col-md-3 plr-0">{{l.v1}}</div>
                                              <div class="col-md-6 plr-0 text-left">{{l.v2}}</div>
                                              <div class="col-md-3 text-right pr-30">{{l.v3}}</div>
                                            </span>
                                          </dd>
                                        </dl>
                                      </div>

                                      <div class="panel" v-if="!item.has2">
                                        <ul class="table-ul">
                                          <li :class="{'bg-gray':i%2==0}" v-for="(c,i) in item.children">
                                            <div class="col-sm-3">{{c.v1}}</div>
                                            <div class="col-sm-6">{{c.v2}}</div>
                                            <div class="col-sm-3">{{c.v3}}</div>
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
                                    <i class="fa fa-angle-right"></i>申请者应首先确认满足魁省技术移民评分标准；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>确认符合魁省技术移民其他基本条件。</li>
                                </ul>
                                <div class="post-prev-info font-12">
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-info-circle"></i>
                                      <li>魁省技术移民评分标准及其他基本条件具体参见“申请条件”页。</li>
                                    </ul>
                                  </div>

                                  <h5 class="font-微软雅黑">2.&nbsp 注册移民系统账号</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>确认满足魁省技术移民申请条件后，申请者可以注册Mon project Québe账号，并将申请信息录入系统。</li>
                                  </ul>
                                  <div class="post-prev-info font-12">
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-info-circle"></i>
                                        <li>Mon project Québe账号注册地址如下：<br>
                                            <a href="http://www.immigration-quebec.gouv.qc.ca/en/informations/mon-projet-quebec/index.html">http://www.immigration-quebec.gouv.qc.ca/en/informations/mon-projet-quebec/index.html</a>
                                          </i>
                                        </ul>
                                      </div>

                                      <h5 class="font-微软雅黑">3.&nbsp 提交魁省在线移民申请&nbsp&nbsp<span class="label label-info">抢名额</span>
                                      </h5>
                                      <ul class="icon-list mb-10 font-微软雅黑">
                                        <li>
                                          <i class="fa fa-angle-right"></i>等待魁省移民局官网开放申请名额，并在线提交移民申请；</li>
                                        <li>
                                          <i class="fa fa-angle-right"></i>魁省技术移民抢名额时，需要在线提交已填写好的申请信息，但无需在此时提交申请材料；</li>
                                      </ul>
                                      <div class="post-prev-info font-12">
                                        <ul class="icon-list mb-10 font-微软雅黑">
                                          <li>
                                            <i class="fa fa-info-circle"></i>
                                            <li>省技术移民配额情况具体参见“政策解读”页。</i>
                                          </div>
                                          <h5 class="font-微软雅黑">4.&nbsp 准备移民申请材料</h5>
                                          <p>申请者最晚可在收到魁省要求的材料清单（Personalized Checklist）后开始着手准备移民申请材料；准备周期较长的核心申请材料包括：</p>
                                          <ul class="icon-list mb-20 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-angle-right"></i>雅思等语言成绩 （针对部分申请人）&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不定期</li>
                                          </ul>
                                          <h5 class="font-微软雅黑">5.&nbsp 递交魁省申请材料</h5>
                                          <ul class="icon-list mb-10 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-angle-right"></i>魁省在线申请通过初审后，等待魁省通知，并根据通知递交完整的申请材料；</li>
                                            <li>
                                              <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被魁省移民局要求补充提供材料或面试；</li>
                                          </ul>
                                          <h5 class="font-微软雅黑">6.&nbsp 获得CSQ（Québec selection certificate）</h5>
                                          <ul class="icon-list mb-10 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-angle-right"></i>移民申请被受理并审批通过获得CSQ。</li>
                                          </ul>

                                          <h5 class="font-微软雅黑">7.&nbsp 递交联邦移民签证申请材料</h5>
                                          <ul class="icon-list mb-10 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-angle-right"></i>获得CSQ后，向联邦递交正式移民签证申请；</li>
                                            <li>
                                              <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被移民局要求补充提供材料或背景调查。</li>
                                          </ul>
                                          <div class="post-prev-info font-12">
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-info-circle"></i>
                                                <li>通常自递交之日算起12个月左右审理完毕</i>
                                              </div>
                                              <h5 class="font-微软雅黑">8.&nbsp 体检</h5>
                                              <ul class="icon-list mb-10 font-微软雅黑">
                                                <li>
                                                  <i class="fa fa-angle-right"></i>接到体检通知后，可以到官方指定体检医院进行体检；</li>
                                              </ul>

                                              <h5 class="font-微软雅黑">9.&nbsp 获得移民签证</h5>
                                              <ul class="icon-list mb-10 font-微软雅黑">
                                                <li>
                                                  <i class="fa fa-angle-right"></i>获得移民纸及永居签证，登陆加拿大，开启海外新生活</li>
                                              </ul>

                                              <h5 class="font-微软雅黑">
                                                <strong>处理周期</strong>
                                              </h5>
                                              <detail-dura :ds="dura.kui" class="pt-0 pl-0"></detail-dura>

                                            </div>

                                            <div class="tab-pane fade font-微软雅黑 font-12" id="fee">
                                              <p>
                                                <detail-pay :ds="pay.kui"></detail-pay>
                                              </p>
                                            </div>
                                            <div class="tab-pane fade font-微软雅黑 font-12" id="documents">
                                              <h5 class="font-微软雅黑">
                                                <strong>CSQ阶段材料</strong>
                                              </h5>
                                              <detail-doc class="pt-0" :ds="doc.kui_1"></detail-doc>
                                              <h5 class="font-微软雅黑">
                                                <strong>联邦阶段材料</strong>
                                              </h5>
                                              <detail-doc class="pt-0" :ds="doc.kui_2"></detail-doc>
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
                                                36个月左右
                                              </div>
                                            </li>


                                            <a class="button small hover-thin blue" href="<%=basePath %>markingOLController/showMarkingOL" target="_blank">在线评估</a>

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

                                <script src="<%=basePath %>javascript/dist/dictionary.js"></script>
                                <script src="<%=basePath %>javascript/dist/header.js"></script>
                                <script src="<%=basePath %>javascript/dist/headerBanner.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_pay_doc.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_score.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_training_area.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_adapter.js"></script>
                              </body>

                            </html>
