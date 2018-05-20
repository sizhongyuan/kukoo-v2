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
						<p>加拿大萨省省提名移民提名项目</p>
					</div>
					<div class="row">
						<div class="col-xs-3 padding-clear name-width">项目简介</div>
						<div id="desc" class="col-xs-9 padding-clear desc-width"
							title="加拿大萨省省提名移民提名项目 Saskatchewan Immigrant Nominee Program ，简称
							SINP，加拿大
							SINP里有EE类别和OID，紧缺职业列表是一样的，不需要雇主提供offer就可以申请，但两个类别对语言要求不同，EE类别对主申请的雅思最低要求CLB7，OID对雅思最低要求CLB4。EE类别申请提名批准后向加拿大联邦申请永居签证，通过在线申请，一般联邦审理周期6个月内签发签证；OID类别申请提名批准后向加拿大联邦申请永居签证，通过纸质申请，一般联邦审理周期12个月左右签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。">加拿大萨省省提名移民提名项目 Saskatchewan Immigrant Nominee Program ，简称
							SINP，加拿大SINP里有EE类别和OID，紧缺职业......</div>
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
				<li><a href="#list" data-toggle="tab"> 材料清单 </a></li>
				<li><a href="#detail" data-toggle="tab"> 费用详情 </a></li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<!-- 政策解读tab start-->
				<div class="tab-pane fade in active tab-div" id="policy">
					<div>
						<p>加拿大萨省省提名移民提名项目 Saskatchewan Immigrant Nominee Program ，简称
							SINP，加拿大
							SINP里有EE类别和OID，紧缺职业列表是一样的，不需要雇主提供offer就可以申请，但两个类别对语言要求不同，EE类别对主申请的雅思最低要求CLB7，OID对雅思最低要求CLB4。EE类别申请提名批准后向加拿大联邦申请永居签证，通过在线申请，一般联邦审理周期6个月内签发签证；OID类别申请提名批准后向加拿大联邦申请永居签证，通过纸质申请，一般联邦审理周期12个月左右签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。</p>
						<p>SINP 2016年名额 EE 1700 OID 1800</p>
						<p>SINP 2017 年名额 EE 2600 OID 3300</p>
					</div>
				</div>
				<!-- 政策解读tab end-->

				<!-- 申请流程tab start-->
				<div class="tab-pane fade tab-div" id="process">
					<div>
						<p>SINP的EE类别申请流程</p>
						<p>1.确认满足SINP紧缺职业和评分标准。</p>
						<p>申请者应达到SINP评分中的60分，同时也满足EE池子67分，详见申请条件打分。</p>
						<p>最近10年内至少一年紧缺职业相关工作经验。</p>
						<p>2.信息录入EE系统，并同步注册SINP在线账号。</p>
						<p>3.SINP在线系统开放EE类类别名额，提交申请，申请费300加币。</p>
						<p>4.获得SINP省提名后，EE系统加600分，等待ITA</p>
						<p>5.申请人获得移民邀请ITA后，通过在线递交正式的签证申请，此时移民部承诺大部分申请6个月以内审理完毕（从递交之日算起）。</p>

						<p>SINP的OID类别申请流程</p>
						<p>1.确认满足SINP紧缺职业和评分标准。</p>
						<p>申请者应达到SINP评分中的60分。</p>
						<p>最近10年内至少一年紧缺职业相关工作经验。</p>
						<p>2.注册SINP在线账号，录入信息。</p>
						<p>3.SINP在线系统开放OID类类别名额，提交申请，申请费300加币。</p>
						<p>4.获得SINP省提名后，通过纸质递交正式的签证申请，一般18个月以内审理完毕（从递交之日算起）</p>

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
								<td>递交EE申请</td>
								<td>1~2周</td>
								<td>在线填写EE Profile</td>
							</tr>
							<tr>
								<td>4</td>
								<td>递交SINP省提名申请</td>
								<td>不定期</td>
								<td>等待开放名额才能提交申请</td>
							</tr>
							<tr>
								<td>5</td>
								<td>获得SINP省提名邀请</td>
								<td>3-6个月</td>
								<td>提交全套申请资料后，可能有补料或者调查</td>
							</tr>
							<tr>
								<td>6</td>
								<td>EE类别的话，获得EE邀请</td>
								<td>1~2周</td>
								<td>获得萨省提名后EE系统加600分，很快可以被邀请（即ITA）</td>
							</tr>
							<tr>
								<td></td>
								<td>OID类别的话，直接递交联邦申请</td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>7</td>
								<td>准备资料递交申请签证</td>
								<td>2~4周</td>
								<td>向移民局提交全套材料</td>
							</tr>
							<tr>
								<td>8</td>
								<td>EE类别获批、取得签证</td>
								<td>6个月内</td>
								<td>获得永居签证，进行登录前辅导</td>
							</tr>
							<tr>
								<td></td>
								<td>OID类别获签</td>
								<td>12-18个月</td>
								<td>获得永居签证，进行登录前辅导</td>
							</tr>
							<tr>
								<td>9</td>
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
						<p>SINP 无雇主offer类别需满足如下条件：</p>
						<p>1 满足SINP 评分标准，评分至少达到60分</p>
						<p>2 最近10年至少有一年相关的紧缺职业工作经验</p>
						<p>3 要求工作和专业相关</p>

						<p>SINP评分标准</p>
					</div>
					<div>
						<p>一 工作经验</p>
						<p>1 至少有一年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 最近10年工作年限按照同一个NOC职业代码（in the same NOC skill type (0, A or
							B)）计算；</p>
						<p>4 近10年的职业属于2016年版NOC的 level 0、A或B；</p>
						<p>二 语言能力</p>
						<p>雅思最低要求达到CLB4的水平，2年有效期。</p>
						<p>三 学历要求</p>
						<p>完成加拿大ECA学历认证（加拿大境内学历除外）；</p>
						<p>四 SINP打分超过60分（满分100分）</p>
						<p>FSW评分标准如下所示：（官方网站：<a href="http://www.saskatchewan.ca/residents/moving-to-saskatchewan/immigrating-to-saskatchewan/saskatchewan-immigrant-nominee-program/applicants-international-skilled-workers/assess-your-eligibility">http://www.saskatchewan.ca/residents/moving-to-saskatchewan/immigrating-to-saskatchewan/saskatchewan-immigrant-nominee-program/applicants-international-skilled-workers/assess-your-eligibility</a>）</p>
						<table class="table table-striped table-bordered">
							<tr height=21
								style='height: 16.0pt; background-color: #16a2d3; color: #ffffff'>
								<td colspan=3 height=21 class=xl65 width=261
									style='border-right: .5pt solid black; height: 16.0pt; width: 195pt'>A
									学历&amp;培训</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl68 width=87
									style='height: 16.0pt; border-top: none; width: 65pt;width:300px'>硕士、博士学历</td>
								<td colspan=2 class=xl69 style='border-left: none'>23</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>三年以上本科学位</td>
								<td colspan=2 class=xl69 style='border-left: none'>20</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>萨省认证技工证书</td>
								<td colspan=2 class=xl69 style='border-left: none'>20</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>两年及以上高等学历学位、文凭或者证书</td>
								<td colspan=2 class=xl69 style='border-left: none'>15</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>一年及以上高等学历学位、文凭或者证书</td>
								<td colspan=2 class=xl69 style='border-left: none'>12</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td colspan=3 height=21 class=xl65
									style='border-right: .5pt solid black; height: 16.0pt'>B
									工作经验</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl71
									style='height: 16.0pt; border-top: none'>最近5年内的工作经验加分</td>
								<td colspan=2 class=xl69 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>5年</td>
								<td colspan=2 class=xl69 style='border-left: none'>10</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>4年</td>
								<td colspan=2 class=xl69 style='border-left: none'>8</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>3年</td>
								<td colspan=2 class=xl69 style='border-left: none'>6</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>2年</td>
								<td colspan=2 class=xl69 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>1年</td>
								<td colspan=2 class=xl69 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl71
									style='height: 16.0pt; border-top: none'>6-10年（5年外）的工作经验加分</td>
								<td colspan=2 class=xl69 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>5年</td>
								<td colspan=2 class=xl69 style='border-left: none'>5</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>4年</td>
								<td colspan=2 class=xl69 style='border-left: none'>4</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>3年</td>
								<td colspan=2 class=xl69 style='border-left: none'>3</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>2年</td>
								<td colspan=2 class=xl69 style='border-left: none'>2</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>1年</td>
								<td colspan=2 class=xl69 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td colspan=3 height=21 class=xl65 style='height: 16.0pt'>C
									语言能力</td>
							</tr>
							<tr height=21 style='height: 16.0pt;'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>CLB 8及以上（雅思听力7.5，其它三个6.5）</td>
								<td colspan=2 class=xl69 style='border-left: none'>20</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>CLB 7 （雅思四个6）</td>
								<td colspan=2 class=xl69 style='border-left: none'>18</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>CLB 6 （雅思读5，其它三个5.5）</td>
								<td colspan=2 class=xl69 style='border-left: none'>16</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>CLB 5 （雅思读4，其它三个5）</td>
								<td colspan=2 class=xl69 style='border-left: none'>14</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>CLB 4 （雅思听4.5，读3.5，其它两个4）</td>
								<td colspan=2 class=xl69 style='border-left: none'>12</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td colspan=3 height=21 class=xl65 style='height: 16.0pt'>D
									年龄</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>18-21周岁</td>
								<td colspan=2 class=xl69 style='border-left: none'>8</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>22-34周岁</td>
								<td colspan=2 class=xl69 style='border-left: none'>12</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>35-45周岁</td>
								<td colspan=2 class=xl69 style='border-left: none'>10</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>46-50周岁</td>
								<td colspan=2 class=xl69 style='border-left: none'>8</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>&lt;18周岁或&gt;50周岁</td>
								<td colspan=2 class=xl69 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td colspan=3 height=21 class=xl65 style='height: 16.0pt'>E
									适应能力</td>
							</tr>
							<tr height=103 style='height: 77.0pt'>
								<td height=103 class=xl68 width=87
									style='height: 77.0pt; border-top: none; width: 65pt'>萨省居住一年的近亲属PR或者公民（父母，兄弟姐妹，舅舅叔叔姑姑阿姨，祖父母，表亲堂亲姊妹）</td>
								<td colspan=2 class=xl69 style='border-left: none'>20</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>最近5年在萨省合法工作满12个月</td>
								<td colspan=2 class=xl69 style='border-left: none'>5</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>在萨省读书至少一个学年</td>
								<td colspan=2 class=xl69 style='border-left: none'>5</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td colspan=3 height=21 class=xl65 style='height: 16.0pt'>萨省雇主offer类别</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl70
									style='height: 16.0pt; border-top: none'>拥有高技能雇主offer</td>
								<td colspan=2 class=xl69 style='border-left: none'>30</td>
							</tr>
							<tr height=21 style='height: 16.0pt;background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl72
									style='height: 16.0pt; border-top: none'>满分（A+E）</td>
								<td colspan=2 class=xl73 style='border-left: none'>100</td>
							</tr>
						</table>
						<div>
							<p>NS紧缺职业清单，参考布谷网站上NS省职业列表 <a href="https://www.kukoo.org/ns">https://www.kukoo.org/ns</a></p>
							<p> 官方说明参看链接
								<a href="https://novascotiaimmigration.com/wp-content/uploads/Demand-AppGuide-English-1.pdf
								Page5">https://novascotiaimmigration.com/wp-content/uploads/Demand-AppGuide-English-1.pdf
								Page5</a></p>
						</div>
					</div>
				</div>
				<!-- 申请条件tab end-->

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
								<td>护照扫描件</td>
								<td></td>
								<td>是</td>
								<td>护照</td>
							</tr>
							<tr>
								<td>结婚证扫描件</td>
								<td></td>
								<td>是</td>
								<td></td>
							</tr>
							<tr>
								<td>身份证正反面扫描件</td>
								<td></td>
								<td>是</td>
								<td>身份证</td>
							</tr>
							<tr>
								<td>主副申请出生公证扫描件</td>
								<td></td>
								<td>是</td>
								<td></td>
							</tr>
							<tr>
								<td>子女出生医学证明扫描件</td>
								<td></td>
								<td>是</td>
								<td>子女出生医学证明</td>
							</tr>
							<tr>
								<td>户口本扫描件</td>
								<td></td>
								<td>是</td>
								<td>户口本</td>
							</tr>
							<tr>
								<td>移民照片电子版</td>
								<td></td>
								<td>是</td>
								<td>照片指引</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业证/学位证扫描件</td>
								<td></td>
								<td>是</td>
								<td>学历学位证</td>
							</tr>
							<tr>
								<td>最高全日制学历的毕业成绩单扫描件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>雅思或TEF成绩单扫描件</td>
								<td></td>
								<td>是</td>
								<td>雅思成绩单</td>
							</tr>
							<tr>
								<td>近十年所有工作证明信扫描件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>聘用合同扫描件</td>
								<td></td>
								<td>是</td>
								<td>--</td>
							</tr>
							<tr>
								<td>近十年所有个税、社保证明扫描件</td>
								<td></td>
								<td>是</td>
								<td>个人所得税完税证明</td>
							</tr>
							<tr>
								<td>无犯罪公证扫描件（联邦阶段需要）</td>
								<td></td>
								<td></td>
								<td></td>
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
								<td>按量收取，1000-3000人民币/户</td>
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
								<td>官方费用</td>
								<td>省申请费</td>
								<td>省政府</td>
								<td>萨省300加币/家庭，安省1500加币/家庭，NB省250加币/家庭     魁省主申请785加币，随同人员每人168加币</td>
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
								<td>未登录可退</td>
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
							"加拿大萨省省提名移民提名项目 Saskatchewan Immigrant Nominee Program ，简称SINP，加拿大SINP里有EE类别和OID，紧缺职业列表是一样的，不需要雇主提供offer就可以申请，但两个类别对语言要求不同，EE类别对主申请的雅思最低要求CLB7，OID对雅思最低要求CLB4。EE类别申请提名批准后向加拿大联邦申请永居签证，通过在线申请，一般联邦审理周期6个月内签发签证；OID类别申请提名批准后向加拿大联邦申请永居签证，通过纸质申请，一般联邦审理周期12个月左右签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。");
			$("#more").text("收起");
		} else {
			$("#desc")
					.text(
							"加拿大萨省省提名移民提名项目 Saskatchewan Immigrant Nominee Program ，简称SINP，加拿大SINP里有EE类别和OID，紧缺职业......");
			$("#more").text("更多详情");
		}
	}
	//显示更多end
</script>
</html>