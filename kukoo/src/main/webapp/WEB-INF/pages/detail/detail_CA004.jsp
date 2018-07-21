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
              <pg-head-banner
                id="ban1"
                text="萨省技术移民"
                purl="<%=basePath %>list/lists"
                pname="移民项目"
                isdetail="1"
                url="http://www.saskatchewan.ca/residents/moving-to-saskatchewan/immigrating-to-saskatchewan/saskatchewan-immigrant-nominee-program/applicants-international-skilled-workers"></pg-head-banner>

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
                        <%-- ////// --%>
                          <div class="tab-content">
                            <div class="tab-pane fade in active font-微软雅黑 font-12" id="Policy">
                              <h5 class="font-微软雅黑">
                                <strong>项目简介</strong>
                              </h5>
                              <p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大萨斯喀彻温省提名（Saskatchewan Immigrant Nominee Program,
                                "SINP"）技术移民项目（简称“萨省提名技术移民项目”）需要申请人首先向萨省的移民局递交申请材料，通过后萨省移民局给申请人发放省提名函，申请人再将省提名函和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不会拒绝申请人的移民申请。萨省技术移民要求申请人有意向定居萨省，并提供定居计划；获得永居身份后，建议申请人在萨省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>
                              <h5 class="font-微软雅黑">
                                <strong>项目要点</strong>
                              </h5>
                              <p>对于没有萨省工作Offer的申请人，萨省技术移民项目分为常规紧缺职业类别（Occupation In-Demand, "OID"）和 快速通道类别（Express Entry,
                                "EE"）两种类别。在两种类别下，申请人的职业都需要符合萨省紧缺职业要求，并满足萨省技术移民评分标准下打分超过60分（满分100分）。两种申请类别的主要区别在于对申请人的语言要求不同：萨省技术移民OID类别语言最低要求为CLB4，而萨省技术移民EE类别除了要满足OID类别所有要求，还要满足联邦技术移民的基本条件进入EE池子（Express Entry Pool），因此对语言要求更高，最低要达到CLB7。</p>
                              <p>萨省技术移民EE类别省提名批准后，通过EE系统在线向加拿大联邦申请永居签证，一般联邦审理周期6个月内签发签证；萨省技术移民OID类别省提名批准后，通过纸质申请向加拿大联邦递交永居签证申请，一般联邦审理周期12-18个月左右签发签证。</p>
                              <p>萨省技术移民项目的特点是对申请人年龄和语言要求较为宽松、处理速度快，因此非常具有吸引力。年龄方面，根据萨省技术移民打分规则，年龄在45周岁以内的申请人都可以获得相对较高的得分；语言方面，对于萨省技术移民OID类别，语言最低只需要达到CLB4。处理速度方面，省提名阶段审理速度最短只需要10天，一般不超过3个月即可获得省提名。</p>
                              <p>此外，萨省技术移民项目要求申请人职业须在萨省紧缺职业列表上，并要求申请人所学专业与所从事工作高度相关。同时，大部分职业需要萨省行业协会进行职业认证；根据认证机构不同，认证周期在6-12个月左右。萨省紧缺职业列表从2014年1月开始实施，并会根据申请情况适时调整；截至目前，萨省紧缺职业清单已经过多次更新变动。</p>
                              <p>对于萨省技术移民项目，申请的关键在于申请人过去所从事的工作与萨省紧缺职业的匹配程度，以及申请人工作与专业的匹配程度。申请周期方面，由于萨省在省提名环节处理速度较快，因此职业认证的办理速度是决定整体申请周期的关键。关于萨省技术移民项目紧缺职业和评分标准的更多内容请参见“申请条件”页。</p>

                              <h5 class="font-微软雅黑">
                                <strong>配额情况</strong>
                              </h5>
                              <P>萨省技术移民项目配额数量相对较为充足，最近两年稳定在每年5,000人以上；配额每年不定期开放数次，每次不定时不定数量开放。考虑到无效申请、拒签申请、撤案申请等情况，每次开放的累计人数可能会超过当年配额总数。每次开放大概在1天之内满员，开放时间大多在北京时间午夜甚至凌晨，申请人需要提前准备好所有资料并第一时间获悉开放信息才有机会抢上配额。</P>

                              <ul class="toggle-view-custom">
                                <li v-for="(item,index) in record.sa">
                                  <h3 class="ui-accordion-header">
                                    <span class="link"></span>
                                    <b>{{item.title}}</b>
                                    <div class="clear"></div>
                                  </h3>
                                  <div class="panel">

                                    <ul class="table-ul">
                                      <li :class="{'table-title':i==0,'bg-gray':i%2==0}" v-for="(c,i) in item.list">
                                        <div class="col-sm-4">{{c[0]}}</div>
                                        <div class="col-sm-3">{{c[1]}}</div>
                                        <div class="col-sm-3">{{c[2]}}</div>
                                        <div class="col-sm-2">{{c[3]}}</div>
                                      </li>
                                    </ul>

                                  </div>
                                </li>
                              </ul>

                              <h5 class="font-微软雅黑">
                                <strong>申请建议</strong>
                              </h5>
                              <P>布谷对萨省技术移民申请的建议如下：</P>
                              <ul class="icon-list mb-10">
                                <li>
                                  <i class="fa fa-angle-right"></i>萨省申请需要注意的细节很多，特别注意申请人职业与萨省紧缺职业的匹配程度，以及申请人职业与所学专业的匹配程度；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>前期准备资料比较费时间的是职业认证（6-12个月）、以及加拿大对等学历认证（3个月）。 雅思考试、职业认证以及学历认证同步准备时间最优，其他资料也同步准备，最大可能的第一时间把握住申请机会；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>萨省抢名额需要把资料提前准备齐全且满足要求并抢上配额后才是有效的申请。尽早提前准备好所有资料，等系统一开放就立刻递交，才有机会抢上配额。</li>
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
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>过去10年至少有1年连续有偿工作经验，可以是连续的全职或者等同的兼职；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>职业必须属于NOC职业代码中的0、A、或B类别，工作年限按照同一个NOC职业代码计算；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>职业需要与所学专业相关；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>职业需要符合萨省紧缺职业。</li>
                                </ul>
                                <div class="post-prev-info font-12">

                                  <!-- 紧缺职业表格开始 -->
                                  <ul class="toggle-view-custom">
                                    <li>
                                      <h3 class="ui-accordion-header">
                                        <span class="link"></span>
                                        <b>萨省紧缺职业</b>
                                        <div class="clear"></div>
                                      </h3>
                                      <div class="panel">
                                        <ul class="table-ul">
                                          <li :class="{'table-title':i==0,'bg-gray':i%2==0}" v-for="(c,i) in profession.sa">
                                            <div class="col-sm-1">{{c[0]}}</div>
                                            <div class="col-sm-4">{{c[1]}}</div>
                                            <div class="col-sm-5">{{c[2]}}</div>
                                            <div class="col-sm-2">{{c[3]}}</div>
                                          </li>
                                        </ul>
                                      </div>
                                    </li>
                                  </ul>
                                  <!-- 紧缺职业表格结束 -->

                                </div>

                                <h5 class="font-微软雅黑">
                                  <strong>语言能力</strong>
                                </h5>
                                <ul class="icon-list mb-20 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>对于OID类别，语言最低达到CLB4的水平，成绩2年有效期；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>对于EE类别，需要满足联邦技术移民基本条件进入EE池子，因此语言最低要达到CLB7的水平，成绩2年有效期。</li>
                                </ul>
                                <h5 class="font-微软雅黑">
                                  <strong>学历要求</strong>
                                </h5>
                                <ul class="icon-list mb-20 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>达到高中以上学历，完成加拿大ECA学历认证（加拿大境内学历除外）；</li>
                                </ul>
                                <h5 class="font-微软雅黑">
                                  <strong>评分标准</strong>
                                </h5>
                                <ul class="icon-list mb-20">
                                  <li>
                                    <i class="fa fa-angle-right"></i>萨省技术移民评分标准下打分达到60分（满分100分）</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>对于EE类别，需要满足联邦技术移民基本条件进入EE池子，因此联邦技术移民六项评分标准分数要达到67分（满分100分）。</li>
                                </ul>
                                <ul class="icon-list mb-20 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-bookmark-o"></i>
                                    <strong>萨省技术移民评分标准</strong>
                                  </li>
                                </ul>
                                <div class="post-prev-info mb-50">

                                  <!-- 表格开始 -->
                                  <ul class="toggle-view-custom">
                                    <li v-for="item in score.sa">
                                      <h3 class="ui-accordion-header">
                                        <span class="link"></span>
                                        <div class="col-md-10 pl-0 fs-12">
                                          <div class="col-md-8 pl-0 title-1">
                                            <p>{{item.title}}</p>
                                            <p class="ml-20">{{item.title_en}}</p>
                                          </div>
                                          <div class="col-md-4 plr-0">{{item.k2}}</div>
                                        </div>
                                        <div class="clear"></div>
                                      </h3>

                                      <div v-if="item.has2" class="panel" v-for="c in item.children">
                                        <dl class="toggle">
                                          <dt>
                                            <a href="#" class="lh-0">
                                              <span class="col-md-12 plr-0">
                                                <span class="col-md-8 plr-0">{{c.k1}}</span>
                                                <span class="col-md-4 plr-0 text-left">{{c.k2}}</span>
                                              </span>
                                              <span class="clear"></span>
                                            </a>
                                          </dt>
                                          <dd style="display:inline-block">
                                            <span class="col-md-12 plr-0" :class="{'bg-gray':i%2==1}" v-for="(l,i) in c.list">
                                              <div class="col-md-8 plr-0">{{l.v1}}</div>
                                              <div class="col-md-4 pr-30">{{l.v2}}</div>
                                            </span>
                                          </dd>
                                        </dl>
                                      </div>

                                      <div class="panel" v-if="!item.has2">
                                        <ul class="table-ul">
                                          <li :class="{'bg-gray':i%2==0}" v-for="(c,i) in item.children">
                                            <div class="col-sm-8">{{c.v1}}</div>
                                            <div class="col-sm-4">{{c.v2}}</div>
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
                                  <strong>萨省OID类别申请流程</strong>
                                </h5>

                                <h5 class="font-微软雅黑">1.&nbsp 评估移民条件</h5>
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>申请者应首先满足萨省紧缺职业；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>根据萨省技术移民评分标准打分超过60分；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>确认符合萨省技术移民其他基本条件。</li>
                                </ul>
                                <div class="post-prev-info font-12">
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-info-circle"></i>
                                      <li>萨省紧缺职业清单、萨省技术移民评分标准及其他基本条件具体参见“申请条件”页。</li>

                                    </ul>
                                  </div>
                                  <h5 class="font-微软雅黑">2.&nbsp 准备移民申请资料</h5>
                                  <p>确认满足NB技术移民申请条件后，申请者可以开始着手准备移民申请材料；准备周期较长的核心申请材料包括：</p>
                                  <ul class="icon-list mb-20 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>雅思等语言成绩&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不定期</li>

                                    <li>
                                      <i class="fa fa-angle-right"></i>学历认证&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3个月左右</li>
                                    <li>
                                      <i class="fa fa-angle-right"></i>职业认证（针对部分职业）&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp6-12个月左右</li>
                                  </ul>
                                  <h5 class="font-微软雅黑">3.&nbsp 注册移民系统账号</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>职业认证及其他移民申请材料准备完整后，申请者可以注册萨省在线申请账号，录入个人信息并上传准备好的材料；</li>

                                  </ul>
                                  <div class="post-prev-info font-12">
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-info-circle"></i>
                                        <li>萨省在线申请账号注册地址如下：<br>
                                            <a href="https://immigration.saskatchewan.ca/apex/f?p=305:101:7048830858904">https://immigration.saskatchewan.ca/apex/f?p=305:101:7048830858904</a>
                                          </i>
                                        </ul>
                                      </div>
                                      <h5 class="font-微软雅黑">4.&nbsp 提交省提名移民申请+递交省提名申请资料&nbsp&nbsp<span class="label label-info">抢名额</span>
                                      </h5>
                                      <ul class="icon-list mb-10 font-微软雅黑">
                                        <li>
                                          <i class="fa fa-angle-right"></i>等待萨省SINP在线系统开放OID类别名额，并在线提交移民申请；</li>
                                        <li>
                                          <i class="fa fa-angle-right"></i>萨省抢名额时，仅需要在线点击提交已填写好的申请信息以及已上传的省提名申请材料；</li>
                                        <li>
                                          <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被省移民局要求补充提供材料或调查；</li>
                                      </ul>
                                      <div class="post-prev-info font-12">
                                        <ul class="icon-list mb-10 font-微软雅黑">
                                          <li>
                                            <i class="fa fa-info-circle"></i>
                                            <li>萨省技术移民配额情况具体参见“政策解读”页。</i>
                                          </div>

                                          <h5 class="font-微软雅黑">5.&nbsp 获得省提名</h5>
                                          <ul class="icon-list mb-10 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-angle-right"></i>萨省省提名申请被受理并审批通过获得提名函。</li>
                                          </ul>

                                          <h5 class="font-微软雅黑">6.&nbsp 递交联邦移民签证申请材料</h5>
                                          <ul class="icon-list mb-10 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-angle-right"></i>获得省提名后，6个月内将省提名函连同联邦阶段申请材料邮寄到加拿大；</li>
                                            <li>
                                              <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被移民局要求补充提供材料或背景调查。</li>
                                          </ul>
                                          <div class="post-prev-info font-12">
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-info-circle"></i>
                                                <li>通常自递交之日算起12个月左右审理完毕。</i>
                                              </ul>
                                            </div>
                                            <h5 class="font-微软雅黑">7.&nbsp 体检</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>接到体检通知后，可以到官方指定体检医院进行体检；</li>
                                            </ul>
                                            <h5 class="font-微软雅黑">8.&nbsp 获得移民签证</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>获得移民纸及永居签证，登陆加拿大，开启海外新生活；</li>
                                            </ul>

                                            <h5 class="mt-50 font-微软雅黑">
                                              <strong>萨省EE类别申请流程</strong>
                                            </h5>

                                            <h5 class="font-微软雅黑">1.&nbsp 评估移民条件</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>申请者应首先满足萨省紧缺职业；</li>
                                              <li>
                                                <i class="fa fa-angle-right"></i>根据萨省技术移民评分标准打分超过60分；</li>
                                              <li>
                                                <i class="fa fa-angle-right"></i>根据联邦技术移民六项评分标准打分超过67分；</li>
                                              <li>
                                                <i class="fa fa-angle-right"></i>确认符合萨省技术移民及联邦技术移民其他基本条件。</li>
                                            </ul>
                                            <div class="post-prev-info font-12">
                                              <ul class="icon-list mb-10 font-微软雅黑">
                                                <li>
                                                  <i class="fa fa-info-circle"></i>
                                                  <li>萨省紧缺职业清单、萨省技术移民评分标准及其他基本条件具体参见萨省技术移民“申请条件”页。</li>
                                                  <li>
                                                    <i class="fa fa-info-circle"></i>
                                                    <li>联邦技术移民六项评分标准及其他基本条件具体参见联邦技术移民“申请条件”页。</li>
                                                  </ul>
                                                </div>
                                                <h5 class="font-微软雅黑">2.&nbsp 准备移民申请资料</h5>
                                                <p>确认满足NB技术移民申请条件后，申请者可以开始着手准备移民申请材料；准备周期较长的核心申请材料包括：</p>
                                                <ul class="icon-list mb-20 font-微软雅黑">
                                                  <li>
                                                    <i class="fa fa-angle-right"></i>雅思等语言成绩&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不定期</li>

                                                  <li>
                                                    <i class="fa fa-angle-right"></i>学历认证&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3个月左右</li>
                                                  <li>
                                                    <i class="fa fa-angle-right"></i>职业认证（针对部分职业）&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp6-12个月左右</li>
                                                </ul>
                                                <h5 class="font-微软雅黑">3.&nbsp 注册移民系统账号</h5>
                                                <ul class="icon-list mb-10 font-微软雅黑">
                                                  <li>
                                                    <i class="fa fa-angle-right"></i>职业认证及其他移民申请材料准备完整后，申请者可以注册萨省在线申请账号，录入个人信息并上传准备好的材料；</li>
                                                  <li>
                                                    <i class="fa fa-angle-right"></i>同时，注册EE系统Mycic账户并将申请信息录入系统。</li>
                                                </ul>
                                                <div class="post-prev-info font-12">
                                                  <ul class="icon-list mb-10 font-微软雅黑">
                                                    <li>
                                                      <i class="fa fa-info-circle"></i>
                                                      <li>萨省在线申请账号注册地址如下：<br>
                                                          <a href="https://immigration.saskatchewan.ca/apex/f?p=305:101:7048830858904">https://immigration.saskatchewan.ca/apex/f?p=305:101:7048830858904</a>
                                                        </i>
                                                        <li>
                                                          <i class="fa fa-info-circle"></i>
                                                          <li>EE系统注册地址如下：<br>
                                                              <a href="https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html">https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html</a>
                                                            </i>
                                                          </ul>
                                                        </div>
                                                        <h5 class="font-微软雅黑">4.&nbsp 提交省提名移民申请+递交省提名申请资料&nbsp&nbsp<span class="label label-info">抢名额</span>
                                                        </h5>
                                                        <ul class="icon-list mb-10 font-微软雅黑">
                                                          <li>
                                                            <i class="fa fa-angle-right"></i>等待萨省SINP在线系统开放EE类别名额，并在线提交移民申请；</li>
                                                          <li>
                                                            <i class="fa fa-angle-right"></i>萨省抢名额时，仅需要在线点击提交已填写好的申请信息以及已上传的省提名申请材料；</li>
                                                          <li>
                                                            <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被省移民局要求补充提供材料或调查；</li>
                                                        </ul>
                                                        <div class="post-prev-info font-12">
                                                          <ul class="icon-list mb-10 font-微软雅黑">
                                                            <li>
                                                              <i class="fa fa-info-circle"></i>
                                                              <li>萨省技术移民配额情况具体参见“政策解读”页。</i>
                                                            </div>

                                                            <h5 class="font-微软雅黑">5.&nbsp 获得省提名</h5>
                                                            <ul class="icon-list mb-10 font-微软雅黑">
                                                              <li>
                                                                <i class="fa fa-angle-right"></i>萨省省提名申请被受理并审批通过获得提名函。</li>
                                                            </ul>
                                                            <h5 class="font-微软雅黑">6.&nbsp 获得联邦移民申请ITA邀请</h5>
                                                            <ul class="icon-list mb-10 font-微软雅黑">
                                                              <li>
                                                                <i class="fa fa-angle-right"></i>获得萨省提名后，30天内到EE系统接受省提名，EE分数加600分，等待获得下一次移民申请ITA邀请；</li>
                                                            </ul>
                                                            <h5 class="font-微软雅黑">7.&nbsp 体检</h5>
                                                            <ul class="icon-list mb-10 font-微软雅黑">
                                                              <li>
                                                                <i class="fa fa-angle-right"></i>申请人获得移民申请ITA邀请后，可以到官方指定体检医院进行体检，并取得体检回执；</li>
                                                            </ul>

                                                            <h5 class="font-微软雅黑">8.&nbsp 递交联邦移民签证申请材料</h5>
                                                            <ul class="icon-list mb-10 font-微软雅黑">
                                                              <li>
                                                                <i class="fa fa-angle-right"></i>加拿大联邦阶段体检回执及其他申请材料准备完毕后，60天内通过EE系统在线提交联邦移民申请材料;</li>
                                                              <li>
                                                                <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被移民局要求补充提供材料或背景调查。</li>
                                                            </ul>
                                                            <div class="post-prev-info font-12">
                                                              <ul class="icon-list mb-10 font-微软雅黑">
                                                                <li>
                                                                  <i class="fa fa-info-circle"></i>
                                                                  <li>通常自递交之日算起6个月以内审理完毕。</i>
                                                                </ul>
                                                              </div>

                                                              <h5 class="font-微软雅黑">9.&nbsp 获得移民签证</h5>
                                                              <ul class="icon-list mb-10 font-微软雅黑">
                                                                <li>
                                                                  <i class="fa fa-angle-right"></i>获得移民纸及永居签证，登陆加拿大，开启海外新生活；</li>
                                                              </ul>

                                                              <h5 class="font-微软雅黑">
                                                                <strong>处理周期</strong>
                                                              </h5>
                                                              <h5 class="font-微软雅黑">萨省OID处理周期</h5>
                                                              <detail-dura :ds="dura.sa_oid" class="pt-0 pl-0"></detail-dura>

                                                              <h5 class="font-微软雅黑 mt-0">萨省EE处理周期</h5>
                                                              <detail-dura :ds="dura.sa_ee" class="pt-0 pl-0"></detail-dura>

                                                            </div>

                                                            <div class="tab-pane fade font-微软雅黑 font-12" id="fee">
                                                              <p>
                                                                <detail-pay :ds="pay.sa"></detail-pay>
                                                              </p>
                                                            </div>
                                                            <div class="tab-pane fade font-微软雅黑 font-12" id="documents">
                                                              <p>
                                                                <detail-doc :ds="doc.sa"></detail-doc>
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
                                                                24个月左右
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
                                                <script src="<%=basePath %>javascript/pages/detaile_record.js"></script>
                                                <script src="<%=basePath %>javascript/pages/detaile_score.js"></script>
                                                <script src="<%=basePath %>javascript/pages/detaile_lack_profession.js"></script>
                                                <script src="<%=basePath %>javascript/pages/detaile_adapter.js"></script>
                                              </body>

                                            </html>
