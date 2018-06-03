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
              <pg-head-banner id="ban1" text="加拿大联邦技术移民" purl="/kukoo/list/lists" pname="移民项目" isdetail="1" url="https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers.html"></pg-head-banner>

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
                              <p>加拿大宪法规定，移民事务由联邦政府和省政府共同管辖。加拿大联邦技术移民项目（the Federal Skilled Worker Program, "FSW"）即申请者向加拿大联邦政府递交技术移民申请，由联邦政府发放移民签证并最终成为加拿大永久居民的移民申请项目。联邦技术移民对申请者无加拿大境内居住地要求，获得永居身份后可在加拿大任意地区居住生活。</p>
                              <h5 class="font-微软雅黑">
                                <strong>项目要点</strong>
                              </h5>
                              <p>自2015年1月1日开始，加拿大联邦技术移民通过快速通道系统（Express Entry,“EE”）进行移民申请提交。在此方式下，加拿大联邦移民局为申请人设置了两道评分关卡。首先，根据联邦技术移民六项评分标准（Six Selection Factors），申请人评分需要超过67分才能获得在EE系统中提交申请的资格，并提交EE申请（俗称“入池”）；其次，在递交EE申请之后，申请人要通过EE系统下的综合排名系统（Comprehensive Ranking System ,
                                "CRS"）进行CRS评分。CRS评分体系没有设置通过分，联邦移民局按照申请人CRS评分高低排名不定期发出正式的移民申请邀请（Invitation to Apply, "ITA"）。获得移民申请ITA邀请后，移民申请会被快速处理，大概半年内结案，这就是"快速通道"的含义。</p>
                              <p>在申请人递交EE申请后，何时能够获得ITA邀请是决定整体申请周期的关键，而其中CRS评分高低是核心决定因素。在CRS评分体系下，申请人无职业限制，其学历、语言和年龄是CRS得分的关键。因此在EE方式下，联邦技术移民适合学历高，年龄轻，英语好的申请人。</p>
                              <h5 class="font-微软雅黑">
                                <strong>邀请情况</strong>
                              </h5>
                              <P>联邦技术移民快速通道自实施以来，已经进行过91次邀请。最近一次邀请分数为440分，最低邀请分数为413分。历次邀请的CRS分数以及人数统计如下。申请人CRS分数超过430分的被邀请的概率较大。</P>
                              <h5 class="font-微软雅黑">
                                <strong>申请建议</strong>
                              </h5>
                              <P>布谷对EE方式下提高移民申请成功率的建议如下：</P>
                              <ul class="icon-list mb-50">
                                <li>
                                  <i class="fa fa-angle-right"></i>早提交EE申请。在同样的CRS得数下，联邦移民局会按照EE提交申请的时间先后顺序进行ITA邀请。由于获得同样分数的申请者通常较多，建议申请人尽早提交EE申请。</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>不断提高雅思成绩。获得ITA邀请前，申请人可不断进入EE系统更新CRS得分。申请人可在此期间尽量提高雅思成绩，以提升竞争力。</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>对于CRS评分较低的申请人，如果职业符合萨省、新省等紧缺职业，可考虑通过省提名移民。</li>
                              </ul>

                            </div>
                            <div class="tab-pane fade font-微软雅黑 font-12" id="Requirement">
                              <h5 class="font-微软雅黑">
                                <strong>工作经验</strong>
                              </h5>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>过去10年至少有1年连续有偿工作经验，可以是连续的全职或者等同的兼职；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>职业必须属于NOC职业代码中的0、A或B类别，工作年限按照同一个NOC职业代码计算。</li>
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
                                  <i class="fa fa-angle-right"></i>达到高中以上学历，完成加拿大ECA学历认证（加拿大境内学历除外）；</li>
                              </ul>
                              <h5 class="font-微软雅黑">
                                <strong>评分标准</strong>
                              </h5>
                              <ul class="icon-list mb-20">
                                <li>
                                  <i class="fa fa-angle-right"></i>联邦技术移民六项评分标准下打分达到67分（满分100分）</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>根据EE系统下CRS打分的高低，被动接受移民局邀请（通常需要达到430以上）</li>
                              </ul>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-bookmark-o"></i>
                                  <strong>六项评分标准</strong>
                                </li>
                              </ul>
                              <div class="post-prev-info ">
                                <P>六项评分标准表</P>
                              </div>
                              <p>在满足联邦技术移民基本条件后，申请人可在EE系统中提交申请。同时，EE系统下的综合排名系统（Comprehensive Ranking System , "CRS"）会根据CRS评分标准对申请人进行CRS评分。联邦移民局按照申请人CRS评分高低（通常不低于430分），不定期发出正式的移民申请邀请（Invitation to Apply, "ITA"）。</p>
                              <ul class="icon-list mb-20 font-微软雅黑">
                                <li>
                                  <i class="fa fa-bookmark-o"></i>
                                  <strong>CRS评分标准</strong>
                                </li>
                              </ul>

                              <p>EE系统下的CRS综合排名系统满分1200分，主要涉及4个方面：核心要素（年龄、教育、语言和加拿大工作经验等）、配偶加分（教育、语言和加拿大工作经验等）、适应能力（教育、工作经验和加拿大资格证书等），和其他加分（雇主offer、省提名等）。总分 1200=核心要素+配偶加分+适应分数+其他分数。下面标准适用于2016-11-19后新的EE系统CRS评分标准。</p>

                              <div class="post-prev-info ">
                                <P>CRS评分表</P>
                              </div>

                            </div>
                            <div class="tab-pane fade font-微软雅黑 font-12" id="process">
                              <h5 class="font-微软雅黑">
                                <strong>申请流程</strong>
                              </h5>

                              <h5 class="font-微软雅黑">1.&nbsp 评估移民条件</h5>
                              <ul class="icon-list mb-10 font-微软雅黑">
                                <li>
                                  <i class="fa fa-angle-right"></i>申请者应首先满足联邦技术移民六项评分标准，打分达到67分；</li>
                                <li>
                                  <i class="fa fa-angle-right"></i>确认符合联邦技术移民其他基本条件。</li>
                              </ul>
                              <div class="post-prev-info font-12">
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-info-circle"></i>
                                    <li>联邦技术移民的六项评分标准及其他基本条件具体参见“申请条件”页</li>
                                  </ul>
                                </div>

                                <h5 class="font-微软雅黑">2.&nbsp 准备移民申请资料</h5>
                                <p>确认满足联邦技术移民入池要求后，申请者可以开始着手准备移民申请材料；准备周期较长的核心申请材料包括：</p>
                                <ul class="icon-list mb-20 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>雅思等语言成绩&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp不定期</li>

                                  <li>
                                    <i class="fa fa-angle-right"></i>学历认证&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp3个月左右</li>
                                </ul>
                                <h5 class="font-微软雅黑">3.&nbsp 注册移民系统账号</h5>
                                <ul class="icon-list mb-10 font-微软雅黑">
                                  <li>
                                    <i class="fa fa-angle-right"></i>注册EE系统Mycic账户，并将申请信息录入系统；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>填写提交完毕后，EE系统CRS综合排名系统会根据CRS的评分标准重新计算分数；</li>
                                  <li>
                                    <i class="fa fa-angle-right"></i>申请人根据CRS分数排名情况，等待获得联邦移民局发出的移民申请ITA邀请；</li>
                                </ul>
                                <div class="post-prev-info font-12">
                                  <ul class="icon-list mb-10 font-微软雅黑">
                                    <li>
                                      <i class="fa fa-info-circle"></i>
                                      <li>EE系统注册地址：<a href="https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html">https://www.canada.ca/en/immigration-refugees-citizenship/services/application/account.html</a>
                                      </i>
                                      <li>
                                        <i class="fa fa-info-circle"></i>
                                        <li>CRS的具体评分标准参见“申请条件”页。</i>
                                      </ul>
                                    </div>

                                    <h5 class="font-微软雅黑">4.&nbsp 获得联邦移民申请ITA邀请</h5>
                                    <ul class="icon-list mb-10 font-微软雅黑">
                                      <li>
                                        <i class="fa fa-angle-right"></i>联邦移民局会每月根据CRS评分情况，对高于特定分数的申请者发出移民申请ITA邀请；</li>
                                      <li>
                                        <i class="fa fa-angle-right"></i>当申请人的CRS分数高于移民局邀请的分数时，申请人可以获得移民局的移民申请ITA邀请，并开始正式提交移民申请材料；</li>
                                      <li>
                                        <i class="fa fa-angle-right"></i>CRS分数通常要高于430分才有机会被邀请。</li>
                                    </ul>
                                    <div class="post-prev-info font-12">
                                      <ul class="icon-list mb-10 font-微软雅黑">
                                        <li>
                                          <i class="fa fa-info-circle"></i>
                                          <li>EE历次邀请人数及CRS分数线统计参见“政策解读”页。</i>
                                        </div>
                                        <h5 class="font-微软雅黑">5.&nbsp 体检</h5>
                                        <ul class="icon-list mb-10 font-微软雅黑">
                                          <li>
                                            <i class="fa fa-angle-right"></i>申请人获得移民申请ITA邀请后，可以到官方指定体检医院进行体检，并取得体检回执；</li>
                                        </ul>

                                        <h5 class="font-微软雅黑">6.&nbsp 递交联邦移民签证申请材料</h5>
                                        <ul class="icon-list mb-10 font-微软雅黑">
                                          <li>
                                            <i class="fa fa-angle-right"></i>体检回执及其他申请材料准备完毕后，90天内通过EE系统在线提交联邦移民申请材料；</li>
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

                                          <h5 class="font-微软雅黑">7.&nbsp 获得移民签证</h5>
                                          <ul class="icon-list mb-10 font-微软雅黑">
                                            <li>
                                              <i class="fa fa-angle-right"></i>获得移民纸及永居签证，登陆加拿大，开启海外新生活</li>
                                          </ul>
                                          <div class="alert alert-info mb=50">
                                            <span aria-hidden="true" class="alert-icon icon_info_alt"></span>
                                            <strong>提醒!</strong>
                                            根据CRS评分规则，获得省提名可直接增加600分，进而快速获得移民申请ITA邀请。因此，对于CRS评分较低的申请人，若语言短期内难以继续提高，布谷建议同时申请省提名项目以获得更高的成功率。.
                                          </div>

                                        </div>
                                        <div class="tab-pane fade font-微软雅黑 font-12" id="fee">
                                          <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia
                                            banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of
                                            them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
                                        </div>
                                        <div class="tab-pane fade font-微软雅黑 font-12" id="documents">
                                          <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia
                                            banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of
                                            them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
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
                              <script src="<%=basePath %>javascript/pages/list.js"></script>
                            </body>

                            <script type="text/javascript">
                              var top1 = $(".tabs-4-c").offset().top;

                              $('.tabs-4-c').css("padding-left", ($(window).width() - $('.container').width()) / 2);

                              $(window).scroll(function () {
                                var win_top = $(this).scrollTop();
                                var top = $(".tabs-4-c").offset().top;
                                if (win_top >= (top - 60)) {
                                  $(".tabs-4-c").addClass("sfixed");
                                } //如果此处用else判断来remove sfixed这个类的话是不行的，因为当加上这个类的时候，".scroll"这个元素fixed的top值是0，获取到的offset.top就相当于是当前滚动条的滚动的距离，win_top与top值就一直相等了，这样会导致抖动；只有与以前的距离做比较才能实现滑上去的时候能回到原来的位置。
                                if (win_top < (top1 - 60)) {
                                  $(".tabs-4-c").removeClass("sfixed");
                                }
                              })

                              $(".bootstrap-tabs").on("click", function () {
                                $(window).scrollTop(0);
                              });
                            </script>

                          </html>
