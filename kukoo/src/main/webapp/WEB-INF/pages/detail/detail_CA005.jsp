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
              <pg-head-banner id="ban1" text="安大略省技术移民" purl="<%=basePath %>list/lists" pname="移民项目" isdetail="1" url="http://www.ontarioimmigration.ca/en/pnp/OI_PNPABOUT.html"></pg-head-banner>

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
                              <p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大安大略省提名项目（Ontario Immigrant Nominee Program,
                                "OINP"）（简称“安省提名项目”）需要申请人首先向安省的移民局递交申请材料，通过后安省移民局给申请人发放省提名函，申请人再将省提名函和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不会拒绝申请人的移民申请。安省提名的移民要求申请人有意向定居安省，并提供定居计划；获得永居身份后，建议申请人在安省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>
                              <h5 class="font-微软雅黑">
                                <strong>项目要点</strong>
                              </h5>
                              <p>安大略省提名项目包含多个类别：商业类，雇主类，非雇主类。我们通常所称的安省提名技术移民项目即为安省提名非雇主类快速通道项目技能优先类别（OINP Express Entry Human Capital Priorities Stream, "OINP EE HCP"）。 HCP类别不限制申请人职业，但对于从事安省监管职业的申请人首先需要获得安省相关机构认可，因此中国大陆申请者从事安省监管职业的通常无法申请该项目。</p>
                              <div class="post-prev-info ">

                                <!-- 安省监管职业清单表格开始 -->
                                <ul class="toggle-view-custom">
                                  <li>
                                    <h3 class="ui-accordion-header">
                                      <span class="link"></span>
                                      <div class="col-sm-4">
                                        <b>安省监管职业</b>
                                      </div>
                                      <div class="col-sm-6">
                                        <b>Regulated Professions</b>
                                      </div>
                                      <div class="clear"></div>
                                    </h3>
                                    <div class="panel">
                                      <ul class="table-ul">
                                        <li :class="{'table-title':i==0,'bg-gray':i%2==0}" v-for="(c,i) in profession.an_jg">
                                          <div class="col-sm-5">{{c[0]}}</div>
                                          <div class="col-sm-7">{{c[1]}}</div>
                                        </li>
                                      </ul>
                                    </div>
                                  </li>
                                </ul>
                                <!-- 安省监管职业清单表格结束 -->

                              </div>
                              <p>安省技术移民EE HCP类别主要对EE系统下CRS评分达到400分的申请者发出邀请，收到安省邀请后由申请人提交正式移民申请；此外，安省还会不定期针对部分从事安省紧缺职业的申请人做定向邀请，且不限制CRS评分必须达到400分，定向邀请的紧缺职业过往以IT为主，但紧缺职业会根据安省劳动力市场情况不断调整。2017年7月安省定向邀请职业如下：</p>
                              <div class="post-prev-info ">
                                <!-- 2017年7月安省定向邀请职业列表-表格开始 -->
                                <ul class="toggle-view-custom">
                                  <li>
                                    <h3 class="ui-accordion-header">
                                      <span class="link"></span>
                                      <b>2017年7月安省定向邀请职业列表</b>
                                      <div class="clear"></div>
                                    </h3>
                                    <div class="panel">
                                      <ul class="table-ul">
                                        <li :class="{'table-title':i==0,'bg-gray':i%2==0}" v-for="(c,i) in profession.an_2017">
                                          <div class="col-sm-1">{{c[0]}}</div>
                                          <div class="col-sm-5">{{c[1]}}</div>
                                          <div class="col-sm-6">{{c[2]}}</div>
                                        </li>
                                      </ul>
                                    </div>
                                  </li>
                                </ul>
                                <!-- 2017年7月安省定向邀请职业列表-表格结束 -->
                              </div>
                              <p>因此，该项目适合学历及语言背景较好，以及从事安省紧缺职业的申请者。。</p>
                              <h5 class="font-微软雅黑">
                                <strong>邀请情况</strong>
                              </h5>
                              <P>2018年1月18日，安省公布2018年的配额为6600，与2017年相比增加600配额；安省技术移民EE HCP项目每年不定期开放邀请。截止目前为止2018年历次邀请的CRS分数以及人数统计如下：</P>
                              <div class="post-prev-info ">

                                <ul class="toggle-view-custom">
                                  <li v-for="(item,index) in record.an">
                                    <h3 class="ui-accordion-header">
                                      <span class="link"></span>
                                      <b>{{item.title}}</b>
                                      <div class="clear"></div>
                                    </h3>
                                    <div class="panel">

                                      <ul class="table-ul">
                                        <li :class="{'table-title':i==0,'bg-gray':i%2==0}" v-for="(c,i) in item.list">
                                          <div class="col-sm-3">{{c[0]}}</div>
                                          <div class="col-sm-2">{{c[1]}}</div>
                                          <div class="col-sm-2">{{c[2]}}</div>
                                          <div class="col-sm-2">{{c[3]}}</div>
                                          <div class="col-sm-3">{{c[4]}}</div>
                                        </li>
                                      </ul>

                                    </div>
                                  </li>
                                </ul>

                              </div>
                              <h5 class="font-微软雅黑">
                                <strong>申请建议</strong>
                              </h5>
                              <P>布谷对安省技术移民申请的建议如下：</P>
                              <ul class="icon-list mb-50">
                                <li>
                                  <i class="fa fa-angle-right"></i>相比联邦EE，安省邀请分数通常较低，因此所有提交联邦EE的申请者应同时提交安省，以提高被邀请的概率；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>对于IT、金融等潜在紧缺职业的申请人可提前做准备，把安省作为备选方案以期获得定向邀请；</li>
                              </ul>

                            </div>
                            <div class="tab-pane fade font-微软雅黑 font-12" id="Requirement">
                              <h5 class="font-微软雅黑">
                                <strong>工作经验</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>过去5年至少有1年连续有偿工作经验，可以是连续的全职或者等同的兼职（收到安省意向信之后的工作经验不能计算进所要求的1年工作经验内）；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>职业必须属于NOC职业代码中的0、A或B类别，工作年限按照同一个NOC职业代码计算；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>职业不能是安省监管职业。</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>语言能力</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>语言最低达到CLB7的成绩，成绩2年内有效；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>学历要求</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>达到学士学位及以上学历，完成加拿大ECA学历认证（加拿大境内学历除外）；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>评分标准</strong>
                              </h5>
                              <ul class="icon-list mb-20">
                                <li>
                                  <i class="fa fa-angle-right"></i>联邦技术移民六项评分标准下打分达到67分（满分100分）</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>EE系统下CRS打分不低于400分（定向邀请职业除外）</li>
                              </ul>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-bookmark-o"></i>
                                  <strong>六项评分标准</strong>
                                </li>
                              </ul>
                              <div class="post-prev-info ">
                                <ul class="toggle-view-custom">
                                  <li v-for="item in score.fsw">
                                    <h3 class="ui-accordion-header">
                                      <span class="link"></span>
                                      <div class="col-md-10 pl-0 fs-12">
                                        <div class="col-md-9 pl-0 title-1">
                                          <p>{{item.title}}</p>
                                          <p class="ml-20">{{item.title_en}}</p>
                                        </div>
                                        <div class="col-md-3 text-left" style="padding-left: 30px;">{{item.k1}}</div>
                                      </div>
                                      <div class="clear"></div>
                                    </h3>

                                    <div v-if="item.has2" class="panel" v-for="c in item.children">
                                      <dl class="toggle">
                                        <dt>
                                          <a href="#" class="lh-0">
                                            <span class="col-md-12">
                                              <span class="col-md-9">{{c.k1}}</span>
                                              <span class="col-md-3 text-left">{{c.k2}}</span>
                                            </span>
                                            <span class="clear"></span>
                                          </a>
                                        </dt>
                                        <dd style="display:inline-block">
                                          <span class="col-md-12" :class="{'bg-gray':i%2==1}" v-for="(l,i) in c.list">
                                            <div class="col-md-9">{{l.v1}}</div>
                                            <div class="col-md-3 text-left">{{l.v2}}</div>
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
                              </div>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-bookmark-o"></i>
                                  <strong>CRS评分标准</strong>
                                </li>
                              </ul>

                              <p>EE系统下的CRS综合排名系统满分1200分，主要涉及4个方面：核心要素（年龄、教育、语言和加拿大工作经验等）、配偶加分（教育、语言和加拿大工作经验等）、适应能力（教育、工作经验和加拿大资格证书等），和其他加分（雇主offer、省提名等）。总分 1200=核心要素+配偶加分+适应分数+其他分数。下面标准适用于2016-11-19后新的EE系统CRS评分标准。</p>

                              <div class="post-prev-info ">

                                <ul class="toggle-view-custom">
                                  <li v-for="item in score.an">
                                    <h3 class="ui-accordion-header">
                                      <span class="link"></span>
                                      <div class="col-md-10 pl-0 fs-12">
                                        <div class="col-md-8 pl-0 title-1">
                                          <p>{{item.title}}</p>
                                          <p class="ml-20">{{item.title_en}}</p>
                                        </div>
                                        <div class="col-md-2 plr-0 text-right">{{item.k1}}</div>
                                        <div class="col-md-2 plr-0 text-right">{{item.k2}}</div>
                                      </div>
                                      <div class="clear"></div>
                                    </h3>

                                    <div v-if="item.has2" class="panel" v-for="c in item.children">
                                      <dl class="toggle">
                                        <dt>
                                          <a href="#" class="lh-0">
                                            <span class="col-md-12 plr-0">
                                              <span class="col-md-8 plr-0">{{c.k1}}</span>
                                              <span class="col-md-2 plr-0 text-left">{{c.k2}}</span>
                                              <span class="col-md-2 plr-0 text-left">{{c.k3}}</span>
                                            </span>
                                            <span class="clear"></span>
                                          </a>
                                        </dt>
                                        <dd style="display:inline-block">
                                          <span class="col-md-12 plr-0" :class="{'bg-gray':i%2==1}" v-for="(l,i) in c.list">
                                            <div class="col-md-8 plr-0">{{l.v1}}</div>
                                            <div class="col-md-2 plr-0 text-left">{{l.v2}}</div>
                                            <div class="col-md-2 plr-0 text-left">{{l.v3}}</div>
                                          </span>
                                        </dd>
                                      </dl>
                                    </div>

                                    <div class="panel" v-if="!item.has2">
                                      <ul class="table-ul">
                                        <li :class="{'bg-gray':i%2==0}" v-for="(c,i) in item.children">
                                          <div class="col-sm-8">{{c.v1}}</div>
                                          <div class="col-sm-2">{{c.v2}}</div>
                                          <div class="col-sm-2">{{c.v3}}</div>
                                        </li>
                                      </ul>
                                    </div>

                                    <div class="panel pb-5"></div>

                                  </li>
                                </ul>

                              </div>

                            </div>
                            <div class="tab-pane fade font-微软雅黑 font-12" id="process">
                              <h5 class="font-微软雅黑">
                                <strong>申请流程</strong>
                              </h5>

                              <h5 class="font-微软雅黑">1.&nbsp 评估移民条件</h5>
                              <ul class="icon-list mb-10 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>申请者应首先满足不是安省监管职业；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>EE分数达到400分且整个移民申请过程中要保持一直能达到400分；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>满足联邦技术移民六项评分标准，打分达到67分；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>确认符合安省技术移民及联邦技术移民其他基本条件。</li>
                              </ul>
                              <div class="post-prev-info font-12">
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-info-circle"></i>
                                    <li>安省技术移民基本条件及监管职业清单具体参见安省技术移民“申请条件”页；</li>
                                    <li>
                                      <i class="fa fa-info-circle"></i>
                                      <li>联邦技术移民的六项评分标准及其他基本条件具体参见“申请条件”页。</li>
                                    </ul>
                                  </div>

                                  <h5 class="font-微软雅黑">2.&nbsp 准备移民申请资料</h5>
                                  <p>确认满足安省技术移民申请条件后，申请者可以开始着手准备移民申请材料；准备周期较长的核心申请材料包括：</p>
                                  <ul class="icon-list mb-20 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>雅思等语言成绩&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不定期</li>

                                    <li>
                                      <i class="fa fa-angle-right"></i>学历认证&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3个月左右</li>
                                  </ul>
                                  <h5 class="font-微软雅黑">3.&nbsp 注册移民系统账号</h5>
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-angle-right"></i>注册EE系统Mycic账户，并将申请信息录入系统。</li>
                                  </ul>
                                  <div class="post-prev-info font-12">
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-info-circle"></i>
                                        <li>EE系统注册地址：<a href="https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html">https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html</a>
                                        </i>
                                      </ul>
                                    </div>

                                    <h5 class="font-微软雅黑">4.&nbsp 获得安省意向信</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>注册EE系统时意向居住地选安省或加拿大所有省份及领地；若EE分数达到400分，被安省邀请后会在EE系统内会收到安省意向信（Notification of Interest Letter, "NOI Letter" ）；</li>
                                    </ul>

                                    <h5 class="font-微软雅黑">5.&nbsp 递交省提名申请材料</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>被选中的申请人根据通知45天内在线递交完整的省提名申请资料；</li>
                                      <li>
                                        <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被安省移民局要求补充提供材料或调查；</li>
                                    </ul>
                                    <h5 class="font-微软雅黑">6.&nbsp 获得省提名</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>省提名申请被受理并审批通过获得省提名；</li>
                                    </ul>
                                    <h5 class="font-微软雅黑">7.&nbsp 获得联邦移民申请ITA邀请</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>获得安省提名后，30天内到EE系统接受省提名，EE分数加600分，等待获得联邦移民申请ITA邀请；</li>
                                    </ul>

                                    <h5 class="font-微软雅黑">8.&nbsp 体检</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>申请人获得移民申请ITA邀请后，可以到官方指定体检医院进行体检，并取得体检回执；</li>
                                    </ul>

                                    <h5 class="font-微软雅黑">9.&nbsp 递交联邦移民签证申请材料</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>加拿大联邦阶段体检回执及其他申请材料准备完毕后，60天内通过EE系统在线提交联邦移民申请材料；</li>
                                      <li>
                                        <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被移民局要求补充提供材料或背景调查。</li>
                                    </ul>
                                    <div class="post-prev-info font-12">
                                      <ul class="icon-list mb-10 font-微软雅黑">
                                        <li>
                                          <i class="fa fa-info-circle"></i>
                                          <li>通常自递交之日算起6个月以内审理完毕</i>
                                        </ul>
                                      </div>

                                      <h5 class="font-微软雅黑">10.&nbsp 获得移民签证</h5>
                                      <ul class="icon-list mb-50 font-微软雅黑">
                                        <li>
                                          <i class="fa fa-angle-right"></i>获得移民纸及永居签证，登陆加拿大，开启海外新生活</li>
                                      </ul>

                                      <h5 class="font-微软雅黑">
                                        <strong>处理周期</strong>
                                      </h5>
                                      <detail-dura :ds="dura.an" class="pt-0 pl-0"></detail-dura>

                                    </div>

                                    <div class="tab-pane fade font-微软雅黑 font-12" id="fee">
                                      <p>
                                        <detail-pay :ds="pay.an"></detail-pay>
                                      </p>
                                    </div>
                                    <div class="tab-pane fade font-微软雅黑 font-12" id="documents">
                                      <p>
                                        <detail-doc :ds="doc.an"></detail-doc>
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
                                        12个月左右
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

                        <%-- <script src="<%=basePath %>elementy/js/velocity.min.js"></script> --%>

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
