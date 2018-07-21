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
              <pg-head-banner id="ban1" text="新不伦瑞克省技术移民" purl="<%=basePath %>list/lists" pname="移民项目" isdetail="1" url="http://www.welcomenb.ca/content/wel-bien/en/immigrating/content/HowToImmigrate/NBProvincialNomineeProgramNEW/ExpressEntry.html"></pg-head-banner>

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
                              <p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。新不伦瑞克省提名项目（New Brunswick Provincial Nominee Program,
                                "NBPNP"）（简称“NB省提名项目”）需要申请人首先向新不伦瑞克省的移民局递交申请材料，通过后新不伦瑞克省移民局给申请人发放省提名函，申请人再将省提名函和有关申请表格递交到联邦。联邦会进行体检、无犯罪、安全调查等审核，但一般不会拒绝申请人的移民申请。新不伦瑞克省提名的移民要求申请人有意向定居新不伦瑞克省；获得永居身份后，建议申请人在新不伦瑞克省短暂居住一段时间表明居住意向，然后可迁徙至加拿大任意地区居住。</p>
                              <h5 class="font-微软雅黑">
                                <strong>项目要点</strong>
                              </h5>
                              <p>新不伦瑞克省提名项目包含多个类别：快速通道项目劳动力市场类别（ Express Entry Labour Market Stream, "EELMS"）、雇主担保类别、家庭担保类别、企业家类别等。我们通常所称的NB省提名技术移民项目即为新不伦瑞克省提名快速通道项目劳动力市场类别（NBPNP EELMS）。NBPNP
                                EELMS项目通常面向特定群体开放，如与NB有较紧密联系的申请人（在NB省留学、工作、有offer、有亲属）、法语为第一语言的申请人等，中国大陆申请者通常不符合上述要求；但同时，NBPNP EELMS会不定期向加拿大境外申请者短期开放部分名额，要求申请人从事职业在NB省紧缺职业清单上，且过去24个月参加过NB省在世界各地举办过的移民信息说明会。</p>
                              <p>对于大陆申请者而言，通常需要通过参加NB省举办的信息说明会的方式申请该项目。参加信息说明会的申请人，若职业符合紧缺职业要求，可在名额开放时向NB省提交省提名申请EOI，等待获得NB省提名邀请。NBPNP EELMS在收到邀请后处理速度较快。</p>
                              <h5 class="font-微软雅黑">
                                <strong>配额情况</strong>
                              </h5>
                              <P>NB省技术移民项目（NBPNP EELMS）政策变化大，通过参加信息说明会的获得省提名申请邀请的申请方式通常为不定期的短暂开放，且名额有限。过往政策变化情况如下：</P>
                              <ul class="icon-list mb-10">
                                <li>
                                  <i class="fa fa-angle-right"></i>2015年7月，NBPNP EELMS可以不受限制的接受4类申请人：1）与NB有较紧密联系的（在NB省留学过、工作、有offer、有亲属）、2）法语为第一语言的、3）24个月内参加过NB省宣讲会的、4）符合紧缺职业；开放时间提前发布，需要抢配额，2015年配额425个。</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>2016年， NBPNP EELMS接受3类申请人：1）与NB有较紧密联系的（在NB工作过、有NB学历、亲属、法语好，信息技术、业务和财务分析、零售贸易、酒店管理、厨师、制造经理等职业会被优先处理）、2）参加过NB移民说明会的、3）符合IT类紧缺职业的（ICT 业务分析，软件，硬件，网络，系统管理等），又称为Open Category类别；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>2016年7月，NBPNP EELMS第三类Open Category类别不再接收EOI，什么时候开放再通知；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>2017年1月，NBPNP EELMS进一步紧缩，只允许有NB省工作Offer的、在NB省工作、在NB省留学过、有NB省亲属、法语作为第一语言且达到CLB 7的申请人提交申请；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>2017年3月，NBPNP EELMS加拿大新不论瑞克省提名快速通道劳动力市场类别关闭，暂停接受新的申请；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>2017年9月，NBPNP EELMS临时对近2年内参加过NB宣讲会的特定紧缺职业的申请人开放；同时，对法语是第一语言的申请人开放，证明法语能力需要参加TEF考试（加拿大联邦及联邦省份认可的法语考试是 TEF Canada）；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>2018年1月，NBPNP EELMS临时对近2年内参加过NB宣讲会的特定紧缺职业的申请人开放；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>2018年5月，NBPNP EELMS再次临时对近2年内参加过NB宣讲会的特定紧缺职业的申请人开放；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>申请建议</strong>
                              </h5>
                              <P>布谷对NB省技术移民申请的建议如下：</P>
                              <ul class="icon-list mb-10">
                                <li>
                                  <i class="fa fa-angle-right"></i>具备NB省移民条件且有条件参加NB省信息说明会的申请者，建议关注NB省信息说明会的通知，尽可能参加交流会以增大申请成功概率；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>该信息说明会通常十分火爆一票难求，需要提前在官网注册申请，并要办理相应国家的旅行证件才可参加。</li>
                              </ul>

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
                                  <i class="fa fa-angle-right"></i>申请者过去24个月内参加过NB省的信息说明会（NBPNP Information Session）；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>职业需要符合NB省紧缺职业。</li>
                              </ul>
                              <div class="post-prev-info font-12">
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-info-circle"></i>
                                    <li>NB省的信息说明会具体参见“政策解读”页</li>
                                  </ul>
                                </div>
                                <div class="post-prev-info mb-10">
                                  <!-- 紧缺职业表格开始 -->
                                  <ul class="toggle-view-custom">
                                    <li>
                                      <h3 class="ui-accordion-header">
                                        <span class="link"></span>
                                        <b>NB省紧缺职业</b>
                                        <div class="clear"></div>
                                      </h3>
                                      <div class="panel">
                                        <ul class="table-ul">
                                          <li :class="{'table-title':i==0,'bg-gray':i%2==0}" v-for="(c,i) in profession.nb">
                                            <div class="col-sm-2">{{c[0]}}</div>
                                            <div class="col-sm-4">{{c[1]}}</div>
                                            <div class="col-sm-6">{{c[2]}}</div>
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
                                    <i class="fa fa-angle-right"></i>语言最低达到CLB7的成绩，成绩2年内有效；</li>
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
                                    <i class="fa fa-angle-right"></i>NB省技术移民评分标准下打分达到67分（满分100分）</li>

                                </ul>
                                <ul class="icon-list mb-20 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-bookmark-o"></i>
                                    <strong>NB省技术移民评分标准</strong>
                                  </li>
                                </ul>
                                <div class="post-prev-info mb-50">
                                  <!-- 表格开始 -->
                                  <ul class="toggle-view-custom">
                                    <li v-for="item in score.nb">
                                      <h3 class="ui-accordion-header">
                                        <span class="link"></span>
                                        <div class="col-md-10 pl-0 fs-12">
                                          <div class="col-md-8 pl-0 title-1">
                                            <p>{{item.title}}</p>
                                            <p class="ml-20">{{item.title_en}}</p>
                                          </div>
                                          <div class="col-md-4 plr-0">{{item.k1}}</div>
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
                                  <strong>申请流程</strong>
                                </h5>

                                <h5 class="font-微软雅黑">1.&nbsp 评估移民条件</h5>
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>申请者应首先满足NB省紧缺职业；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>根据NB省技术移民评分标准打分超过67分；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>确认符合NB省技术移民及联邦技术移民其他基本条件。</li>
                                </ul>
                                <div class="post-prev-info font-12">
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-info-circle"></i>
                                      <li>NB省紧缺职业清单、NB省技术移民评分标准及其他基本条件具体参见NB省技术移民“申请条件”页。</li>
                                      <li>
                                        <i class="fa fa-info-circle"></i>
                                        <li>联邦技术移民基本条件具体参见联邦技术移民“申请条件”页。</li>
                                      </ul>
                                    </div>
                                    <h5 class="font-微软雅黑">2.&nbsp 准备移民申请资料</h5>
                                    <p>确认满足NB技术移民申请条件后，申请者可以开始着手准备移民申请材料；准备周期较长的核心申请材料包括：</p>
                                    <ul class="icon-list mb-20 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>雅思等语言成绩&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不定期</li>

                                      <li>
                                        <i class="fa fa-angle-right"></i>学历认证&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3个月左右</li>
                                    </ul>
                                    <h5 class="font-微软雅黑">3.&nbsp 注册移民系统账号</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>注册EE系统Mycic账户，并将申请信息录入系统;</li>

                                    </ul>
                                    <div class="post-prev-info font-12">
                                      <ul class="icon-list mb-10 font-微软雅黑">
                                        <li>
                                          <i class="fa fa-info-circle"></i>
                                          <li>EE系统注册地址如下：<br>
                                              <a href="https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html">https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html</a>
                                            </i>
                                          </ul>
                                        </div>

                                        <h5 class="font-微软雅黑">4.&nbsp 参加NB省移民信息说明会</h5>
                                        <ul class="icon-list mb-10 font-微软雅黑">
                                          <li>
                                            <i class="fa fa-angle-right"></i>NB省信息说明会需要根据官方通知，提前在官网注册申请，并办理相应国家旅行证件才可参加；</li>

                                        </ul>
                                        <div class="post-prev-info font-12">
                                          <ul class="icon-list mb-10 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-info-circle"></i>
                                              <li>NB省信息说明会具体参见NB省技术移民“政策解读”页。</i>
                                            </div>
                                            <h5 class="font-微软雅黑">5.&nbsp 提交NB省提名移民申请</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>等待NB省移民局官网开放申请时，申请人向NB省提交EOI申请表格（Expression of Interest）；</li>
                                              <li>
                                                <i class="fa fa-angle-right"></i>NB省根据以下信息对提交的EOI表格进行评估和排名：</li>
                                              <ul class="icon-list mb-10 font-微软雅黑">
                                                <li>
                                                  <i class="fa fa-angle-double-right"></i>高分数;</li>
                                                <li>
                                                  <i class="fa fa-angle-double-right"></i>培训经历，以及NB省认为的高优先级的工作经验；</li>
                                                <li>
                                                  <i class="fa fa-angle-double-right"></i>能证明你在NB省立足的能力；</li>
                                                <li>
                                                  <i class="fa fa-angle-double-right"></i>会对劳动力市场和经济有积极贡献；</li>
                                              </ul>
                                            </ul>

                                            <h5 class="font-微软雅黑">6.&nbsp 获得NB省移民申请ITA邀请</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>NB省会对收到的EOI 表格申请进行审查，排名高的申请将会被选中；</li>
                                              <li>
                                                <i class="fa fa-angle-right"></i>被选中的申请人会收到一封电子邮件，要求60天内提供完整申请材料。</li>
                                            </ul>
                                            <h5 class="font-微软雅黑">7.&nbsp 递交省提名申请材料</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>根据通知递交完整的省提名移民申请资料；</li>
                                              <li>
                                                <i class="fa fa-angle-right"></i>部分情况下，在递交申请材料后有可能会被NB省移民局要求补充提供材料或调查；</li>
                                            </ul>

                                            <h5 class="font-微软雅黑">8.&nbsp 获得省提名</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>移民申请被受理并审批通过获得省提名；</li>
                                            </ul>

                                            <h5 class="font-微软雅黑">9.&nbsp 获得联邦移民申请ITA邀请</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>获得NB省提名后，30天内到EE系统接受省提名，EE分数加600分，等待获得下一次联邦移民申请ITA邀请；</li>
                                            </ul>
                                            <h5 class="font-微软雅黑">10.&nbsp 体检</h5>
                                            <ul class="icon-list mb-10 font-微软雅黑">
                                              <li>
                                                <i class="fa fa-angle-right"></i>申请人获得移民申请ITA邀请后，可以到官方指定体检医院进行体检，并取得体检回执；</li>
                                            </ul>
                                            <h5 class="font-微软雅黑">11.&nbsp 递交联邦移民签证申请材料</h5>
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
                                                  <li>通常自递交之日算起6个月以内审理完毕。</i>
                                                </ul>
                                              </div>

                                              <h5 class="font-微软雅黑">12.&nbsp 获得移民签证</h5>
                                              <ul class="icon-list mb-10 font-微软雅黑">
                                                <li>
                                                  <i class="fa fa-angle-right"></i>获得移民纸及永居签证，登陆加拿大，开启海外新生活</li>
                                              </ul>

                                              <h5 class="font-微软雅黑">
                                                <strong>处理周期</strong>
                                              </h5>
                                              <detail-dura :ds="dura.nb" class="pt-0 pl-0"></detail-dura>

                                            </div>
                                            <div class="tab-pane fade font-微软雅黑 font-12" id="fee">
                                              <p>
                                                <detail-pay :ds="pay.nb"></detail-pay>
                                              </p>
                                            </div>
                                            <div class="tab-pane fade font-微软雅黑 font-12" id="documents">
                                              <p>
                                                <detail-doc :ds="doc.nb"></detail-doc>
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
                                <script src="<%=basePath %>javascript/dist/header.js"></script>
                                <script src="<%=basePath %>javascript/dist/headerBanner.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_pay_doc.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_score.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_lack_profession.js"></script>
                                <script src="<%=basePath %>javascript/pages/detaile_adapter.js"></script>
                              </body>

                            </html>
