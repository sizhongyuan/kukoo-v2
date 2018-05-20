<!-- 详情页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html>
<script src="http://echarts.baidu.com/dist/echarts.min.js"></script>
<link rel="stylesheet" href="<%=basePath%>css/detail/detail.css" />
<div class="container container-padding">
	<!-- 上部分 start -->
	<div class="row top-left-row">
		<!-- 左上项目简介div start-->
		<div class="leaderboard">
			<div class="row leaderboardMargin">
				<div class="col-xs-12 padding-clear">
					<div class="row">
						<p>魁北克技术移民项目</p>
					</div>
					<div class="row">
						<div class="col-xs-3 padding-clear name-width">项目简介</div>
						<div id="desc" class="col-xs-9 padding-clear desc-width"
							title="魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQ
							Certificat de sélection du Québec (CSQ – Québec selection
							certificate)-魁北克移民甄选。魁北克常规技术移民Regular selection program for
							skilled
							workers就是通过申请人自身的技术和才能移民魁北克，只要申请人有一定的法语、英文能力及学历，且目前所从事的职业及专长是魁北克就业市场所需要的，即可以有资格申请。">魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQ
							Certificat de sélection du......</div>
					</div>
					<div class="row more-style">
						<a id="more" class="more-click-style" onClick="showMore()">更多详情</a>
					</div>
					<div class="row row-full">
						<div class="col-xs-3 padding-clear name-width">状态</div>
						<div class="col-xs-9 padding-clear">开放</div>
					</div>
					<div class="row row-full">
						<div class="col-xs-3 padding-clear name-width">移民局官网</div>
						<div class="col-xs-3 padding-clear">
							<a
								href="https://www.canada.ca/en/immigration-refugees-citizenship/services/immigrate-canada/express-entry/become-candidate/eligibility/federal-skilled-workers.html">https://www.canada.ca/</a>
						</div>
						<!-- 先屏蔽按钮 start -->
						<!-- <div class="col-xs-2 padding-clear">
							<i class="glyphicon glyphicon-star star-style"></i>
							<p
								style="font-size: 12px; color: #333333; float: right; margin-right: 5px; cursor: pointer;">收藏</p>
						</div>
						<div class="col-xs-4 padding-clear">
							<div class="left-button-div">
								<button class="btn btn-default left-left-button">咨询顾问</button>
								<button class="btn btn-default left-right-button">在线评分</button>
							</div>
						</div> -->
						<!-- 先屏蔽按钮 end -->
					</div>
				</div>
			</div>
		</div>
		<!-- 左上项目简介div end-->

		<!-- 右上div start -->
		<div class="right-div">
			<table class="table table-striped right-table">
				<tr>
					<td>签证类型</td>
					<td>PR/工签+PR</td>
				</tr>
				<tr>
					<td>办理周期</td>
					<td>2年</td>
				</tr>
				<tr>
					<td>总费用</td>
					<td>XXX</td>
				</tr>
				<tr>
					<td>居住要求</td>
					<td>5年2年</td>
				</tr>
			</table>
			<!-- 先屏蔽按钮 start -->
			<%-- <button class="btn btn-default right-button">FAQ</button>
			<button class="btn btn-default right-button">名词解释</button>
			<div class="share-img">
				<img src="<%=basePath%>img/detail/share.png" width="16px"
					height="16px">
			</div>
			<div class="share">
				<a>分享</a>
			</div> --%>
			<!-- 先屏蔽按钮 end -->
		</div>
		<!-- 右上div end -->
	</div>
	<!-- 上部分 end -->

	<!-- 下部分 start -->
	<div class="row bottom-row-div">
		<div class="col-md-12 bottom-div">
			<ul class="nav nav-tabs nav-justified">
				<li class="active"><a href="#policy" data-toggle="tab">政策解读
				</a></li>
				<li><a href="#process" data-toggle="tab"> 申请流程 </a></li>
				<li><a href="#condition" data-toggle="tab"> 申请条件 </a></li>
				<li><a href="#train" data-toggle="tab"> 受训清单列表 </a></li>
				<li><a href="#list" data-toggle="tab"> 材料清单 </a></li>
				<li><a href="#detail" data-toggle="tab"> 费用详情 </a></li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<!-- 政策解读tab start-->
				<div class="tab-pane fade in active tab-div" id="policy">
					<div>
						<p>魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQ
							Certificat de sélection du Québec (CSQ – Québec selection
							certificate)-魁北克移民甄选。魁北克常规技术移民Regular selection program for
							skilled
							workers就是通过申请人自身的技术和才能移民魁北克，只要申请人有一定的法语、英文能力及学历，且目前所从事的职业及专长是魁北克就业市场所需要的，即可以有资格申请。</p>
						<p>魁北克自2016年开始实施在线申请，通过Mon project Québec提交申请，每年都有名额限制。</p>
						<p>2016年10000名额，分两次开放，6.13开放5000个 8.16开放5000个</p>
						<p>2017年5000个名额未开放，预计2018年名额和2017年名额累计一起开放</p>
					</div>
				</div>
				<!-- 政策解读tab end-->

				<!-- 申请流程tab start-->
				<div class="tab-pane fade tab-div" id="process">
					<div>
						<p>1.确认满足QSW评分标准（单身通过分50分，已婚通过分59分）。</p>
						<p>2.注册Mon project Québe帐号，在线系统录入申请信息。</p>
						<p>3.等待开放名额，提交移民申请。</p>
						<p>4.通过初审后，魁省通知递交移民资料。</p>
						<p>5.审批通过获得CSQ（可能有面试）。</p>
						<p>6.递交联邦阶段签证申请。</p>
						<p>获得CSQ后，联邦阶段周期6-12个月（从递交之日算起）。</p>

						<p>办理周期</p>
					</div>
					<table class="table table-striped table-bordered">
						<thead class="tab-table-thead">
							<th></th>
							<th>事项</th>
							<th>周期</th>
							<th>办理内容</th>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>缴纳第一阶段咨询服务费</td>
								<td>1天</td>
								<td>签约、缴纳服务费</td>
							</tr>
							<tr>
								<td>2</td>
								<td>准备材料</td>
								<td>1~2周</td>
								<td>提交移民信息表，收集资料，缴纳第三方费用，资料处理</td>
							</tr>
							<tr>
								<td>3</td>
								<td>完成MPQ申请</td>
								<td>1周</td>
								<td>在线填写MPQ</td>
							</tr>
							<tr>
								<td>4</td>
								<td>获得CSQ</td>
								<td>1.5-2年</td>
								<td>从抢到名额开始算</td>
							</tr>
							<tr>
								<td>5</td>
								<td>申请签证资料</td>
								<td>2~4周</td>
								<td>向联邦CIO提交全套材料</td>
							</tr>
							<tr>
								<td>6</td>
								<td>获批、取得签证</td>
								<td>6~12个月</td>
								<td>获得永居签证，进行登录前辅导</td>
							</tr>
							<tr>
								<td>7</td>
								<td>登陆</td>
								<td>1年内</td>
								<td>登陆加拿大，开启美好海外生活</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 申请流程tab end-->

				<!-- 申请条件tab start-->
				<div class="tab-pane fade tab-div" id="condition">
					<div>
						<p>一 工作经验</p>
						<p>1 至少有半年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 工作年限按照从事职业类别计算，必须是NOC中 0, A B or C类职业；</p>
						<p>4 只计算近5年的工作经历</p>
						<p>二 语言能力</p>
						<p>法语和英语不做强制要求，只要申请人各项打分总分满足通过分即可。</p>
						<p>三 学历要求</p>
						<p>比较宽松，目前不需要做学历认证，认可私立学校以及社会办学证书；</p>
						<p>四 QSW打分已婚59分，单身50分即可通过</p>
						<p>QSW评分标准如下所示：</p>

						<table class="table table-striped table-bordered">
							<tr height=21
								style='height: 16.0pt; background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65 width=453
									style='height: 16.0pt; width: 340pt'>学历</td>
								<td colspan=2 class=xl66 width=368
									style='border-left: none; width: 276pt'>最高分14分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Secondaire
									général 普通高中</td>
								<td colspan=2 class=xl68 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Secondaire
									professionnel 职业高中</td>
								<td colspan=2 class=xl68 style='border-left: none'>6</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Postsecondaire
									général 2 ans 2年的普通专科</td>
								<td colspan=2 class=xl68 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Postsecondaire
									technique 1 an ou 2 ans 1-2年技术专科</td>
								<td colspan=2 class=xl68 style='border-left: none'>6</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Postsecondaire
									technique 3 ans 三年技术专科</td>
								<td colspan=2 class=xl68 style='border-left: none'>8</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 1
									er cycle 1 an 一年学制本科</td>
								<td colspan=2 class=xl68 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 1
									er cycle 2 ans 两年学制本科</td>
								<td colspan=2 class=xl68 style='border-left: none'>6</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 1
									er cycle 3 ans ou+ 三年学制本科</td>
								<td colspan=2 class=xl68 style='border-left: none'>10</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 2
									ième cycle 1 an ou + 硕士</td>
								<td colspan=2 class=xl68 style='border-left: none'>12</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 3
									ième cycle 博士</td>
								<td colspan=2 class=xl68 style='border-left: none'>14</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>受训领域</td>
								<td colspan=2 class=xl66 style='border-left: none'>最高分12分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl69
									style='height: 16.0pt; border-top: none'>按照学历专业加分，参考受训清单列表</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，2，6，9
									或 12</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>工作</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分8分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>不足6个月</td>
								<td colspan=2 class=xl68 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>6-23个月</td>
								<td colspan=2 class=xl68 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>24-47个月</td>
								<td colspan=2 class=xl68 style='border-left: none'>6</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>48个月及以上</td>
								<td colspan=2 class=xl68 style='border-left: none'>8</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>年龄</td>
								<td colspan=2 class=xl66 style='border-left: none'>最高分16分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>18-35岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>16</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>36周岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>14</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>37周岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>12</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>38周岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>10</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>39周岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>8</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>40周岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>6</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>41周岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>42周岁</td>
								<td colspan=2 class=xl68 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>43周岁及以上</td>
								<td colspan=2 class=xl68 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>法语</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分16分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语-听力</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，5，6，7</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语-口语</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，5，6，7</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语-阅读</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语-写作</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，1</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>英语</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分6分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>英语-听力</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，1，2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>英语-口语</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，1，2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>英语-阅读</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>英语-写作</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，1</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>魁北克停留</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分5分</td>
							</tr>
							<tr height=103 style='height: 77.0pt'>
								<td height=103 class=xl73 width=453
									style='height: 77.0pt; border-top: none; width: 340pt'>Travailleur
									étranger ou étudiant étranger 6 mois ou +<br>
									魁省工作或者学习6个月以上
								</td>
								<td colspan=2 class=xl68 style='border-left: none'>5</td>
							</tr>
							<tr height=117 style='height: 88.0pt'>
								<td height=117 class=xl73 width=453
									style='height: 88.0pt; border-top: none; width: 340pt'>Travailleu
									r étranger ou étudiant étranger 3 mois à moins de 6 mois<br>
									魁省工作或者学习3-6个月
								</td>
								<td colspan=2 class=xl68 style='border-left: none'>5</td>
							</tr>
							<tr height=88 style='height: 66.0pt'>
								<td height=88 class=xl73 width=453
									style='height: 66.0pt; border-top: none; width: 340pt'>Participant
									à un PVT aux fins de travail 3 mois ou +<br> 魁省打工度假停留3个月以上
								</td>
								<td colspan=2 class=xl68 style='border-left: none'>5</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Autres séjours 3
									mois ou + 其它停留3个月</td>
								<td colspan=2 class=xl68 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Autres séjours (2
									semaines à moins de 3 mois 其它停留2周-3个月
								</td>
								<td colspan=2 class=xl68 style='border-left: none'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>魁北克亲属</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分3分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>直系亲属：配偶，兄弟姐妹，父母，祖父母</td>
								<td colspan=2 class=xl68 style='border-left: none'>3</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'></td>
								<td colspan=2 class=xl68 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl74
									style='height: 16.0pt; border-top: none'>配偶加分</td>
								<td colspan=2 class=xl75 style='border-left: none'>最高分17分</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>学历</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分4分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Secondaire
									général 普通高中</td>
								<td colspan=2 class=xl68 style='border-left: none'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Secondaire
									professionnel 职业高中</td>
								<td colspan=2 class=xl68 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Postsecondaire
									général 2 ans 2年的普通专科</td>
								<td colspan=2 class=xl68 style='border-left: none'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Postsecondaire
									technique 1 an ou 2 ans 1-2年技术专科</td>
								<td colspan=2 class=xl68 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Postsecondaire
									technique 3 ans 三年技术专科</td>
								<td colspan=2 class=xl68 style='border-left: none'>3</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 1
									er cycle 1 an 一年学制本科</td>
								<td colspan=2 class=xl68 style='border-left: none'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 1
									er cycle 2 ans 两年学制本科</td>
								<td colspan=2 class=xl68 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 1
									er cycle 3 ans ou+ 三年学制本科</td>
								<td colspan=2 class=xl68 style='border-left: none'>3</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 2
									ième cycle 1 an ou + 硕士</td>
								<td colspan=2 class=xl68 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Universitaire 3
									ième cycle 博士</td>
								<td colspan=2 class=xl68 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>受训领域</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分4分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl69
									style='height: 16.0pt; border-top: none'>按照学历专业加分，参考受训清单列表</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，1，2,
									3或4</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>年龄</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分3分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>18-35岁</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>3</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>36周岁</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>37周岁</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>38周岁</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>39周岁</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>40周岁</td>
								<td colspan=2 class=xl78 width=368
									style='border-right: .5pt solid black; border-left: none; width: 276pt'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>41周岁</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>42周岁</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>43周岁及以上</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>法语</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分6分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语-听力</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，2或3</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语-口语</td>
								<td colspan=2 class=xl68 style='border-left: none'>0，2或3</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>魁省有效工作offer</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分10分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Offre d'emploi
									validée dans la RMM蒙特利尔地区offer</td>
								<td colspan=2 class=xl68 style='border-left: none'>8</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Offre d'emploi
									validée à l’extérieur de la RMM蒙特利尔之外地区offer
								</td>
								<td colspan=2 class=xl68 style='border-left: none'>10</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>最低分要求</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>单身43/已婚52</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>子女加分</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分8分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>12岁以下子女</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>13-21岁子女</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>财政自足能力</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>最高分1分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>签署财政能力表格</td>
								<td colspan=2 class=xl76
									style='border-right: .5pt solid black; border-left: none'>1</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>通过分</td>
								<td colspan=2 class=xl70
									style='border-right: .5pt solid black; border-left: none'>单身50/已婚59</td>
							</tr>
						</table>

					</div>
				</div>
				<!-- 申请条件tab end-->
				
				<!-- 受训清单列表 tab start-->
				<div class="tab-pane fade tab-div" id="train">
					<div>
						<p>受训清单列表参考布谷网站：<a href="https://www.kukoo.org/qc">https://www.kukoo.org/qc</a>   培训加分</p>
						<p>魁北克官网受训列表链接： <a href="http://www.immigration-quebec.gouv.qc.ca/publications/en/diverses/list-training.pdf">http://www.immigration-quebec.gouv.qc.ca/publications/en/diverses/list-training.pdf</a></p>
					</div>
				</div>
				<!-- 受训清单列表tab start-->
				
				
				<!-- 材料清单tab start-->
				<div class="tab-pane fade tab-div" id="list">
					<table class="table table-striped table-bordered">
						<thead class="tab-table-thead">
							<th>材料</th>
							<th>主申/副申/子女</th>
							<th>是否必须</th>
							<th>样例及说明</th>
						</thead>
						<tbody>
							<tr>
								<td>移民信息表</td>
								<td></td>
								<td>是</td>
								<td></td>
							</tr>
							<tr>
								<td>护照复印件</td>
								<td></td>
								<td>是</td>
								<td>护照</td>
							</tr>
							<tr>
								<td>身份证复印件</td>
								<td></td>
								<td>是</td>
								<td>身份证</td>
							</tr>
							<tr>
								<td>出生医学证明复印件</td>
								<td></td>
								<td>是</td>
								<td>子女出生医学证明</td>
							</tr>
							<tr>
								<td>户口本复印件</td>
								<td></td>
								<td>是</td>
								<td>户口本</td>
							</tr>
							<tr>
								<td>照片</td>
								<td></td>
								<td>是</td>
								<td>照片指引</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业证/学位证复印件</td>
								<td></td>
								<td>是</td>
								<td>学历学位证</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业成绩单复印件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>雅思或TEF成绩原件</td>
								<td></td>
								<td>是</td>
								<td>雅思成绩单</td>
							</tr>
							<tr>
								<td>近十年所有工作证明信复印件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>聘用合同复印件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>近十年所有个税税单复印件</td>
								<td></td>
								<td>是</td>
								<td>个人所得税完税证明</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 材料清单tab end-->

				<!-- 费用详情tab start-->
				<div class="tab-pane fade tab-div" id="detail">
					<div>
						<p>总共涉及的资金：一人办理约5.2万 人民币 三口之家办理约6万人民币，其中：</p>
						<p>* 布谷服务费：4万人民币</p>
						<p>* 官方及第三方费用：1.2-2万人民币</p>
						<p>（备注：汇率按照1:5计算）</p>
					</div>
					<table class="table table-striped table-bordered">
						<thead class="tab-table-thead">
							<th style="width: 80px">费用详情</th>
							<th style="width: 60px">费用项</th>
							<th style="width: 80px">收费机构</th>
							<th>金额</th>
							<th style="width: 120px">收费时间/阶段</th>
							<th style="width: 80px">退款标准</th>
						</thead>
						<tbody>
							<tr>
								<td>咨询服务费</td>
								<td>咨询服务费</td>
								<td>布谷</td>
								<td>4万人民币</td>
								<td>签约</td>
								<td>可退</td>
							</tr>
							<tr>
								<td>第三方费用</td>
								<td>翻译、公证费</td>
								<td>相关机构</td>
								<td>按量收取，3000-5000人民币/户</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>
							<tr>
								<td>第三方费用</td>
								<td>学历认证费</td>
								<td>学历认证机构</td>
								<td>按量收取，1600-3000人民币/份</td>
								<td>递交申请前支付</td>
								<td>不退</td>
							</tr>
							<tr>
								<td rowspan="3">官方费用</td>
								<td rowspan="3">申请费</td>
								<td rowspan="3">加拿大联邦移民局</td>
								<td>主申请人：550加币/人</td>
								<td rowspan="3">递交申请前支付</td>
								<td rowspan="3">不退</td>
							</tr>
							<tr>
								<td>随行配偶：550加币/人</td>
							</tr>
							<tr>
								<td>随行未满22周岁子女：150加币/人</td>
							</tr>
							<tr>
								<td>官方费用</td>
								<td>登陆费</td>
								<td>加拿大联邦移民局</td>
								<td>申请人和配偶：490加币/人（未婚随行子女不交）</td>
								<td>获批登陆前</td>
								<td>不退</td>
							</tr>
							<tr>
								<td rowspan="2">第三方费用</td>
								<td rowspan="2">体检费</td>
								<td rowspan="2">指定体检医院</td>
								<td>15周岁以上：1700人民币/人</td>
								<td rowspan="2">申请签证前</td>
								<td rowspan="2">不退</td>
							</tr>
							<tr>
								<td>15周岁以下：500-1250人民币/人</td>
							</tr>
						</tbody>
					</table>
					<div>
						<p>备注：</p>
						<p>1. 以上涉及的翻译、公证、认证可委托布谷办理或自行办理</p>
						<p>2. 因移民局或第三方代办机构调整费用，以及客户文件的数量不同，以上费用以实际发生为准</p>
					</div>
				</div>
				<!-- 费用详情tab end-->
			</div>
		</div>
	</div>
	<!-- 下部分end  -->
</div>

<script>

	//显示更多start
	function showMore() {
		if ($("#more").text() == "更多详情") {
			$("#desc")
					.text(
							"魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQCertificat de sélection du Québec (CSQ – Québec selection certificate)-魁北克移民甄选。魁北克常规技术移民Regular selection program for skilled workers就是通过申请人自身的技术和才能移民魁北克，只要申请人有一定的法语、英文能力及学历，且目前所从事的职业及专长是魁北克就业市场所需要的，即可以有资格申请。");
			$("#more").text("收起");
		} else {
			$("#desc")
					.text(
							"魁北克技术移民的申请条件完全是魁省政府根据当地的实际情况和发展需要而定的，魁省有甄选权，签发CSQCertificat de sélection du......");
			$("#more").text("更多详情");
		}
	}
	//显示更多end
</script>
</html>