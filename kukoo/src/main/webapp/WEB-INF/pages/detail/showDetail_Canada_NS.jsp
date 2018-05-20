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
						<p>加拿大新斯科舍省移民提名项目</p>
					</div>
					<div class="row">
						<div class="col-xs-3 padding-clear name-width">项目简介</div>
						<div id="desc" class="col-xs-9 padding-clear desc-width"
							title="加拿大新斯科舍省移民提名项目 Nova Scotia Nominee Program ，简称 NSNP，加拿大 NSNP 里有EE下有两类，A类需要有雇主offer，随时可以申请；另一类是B类，属于紧缺职业类别，不需要雇主提供offer就可以申请，但需要抢配额。中国申请人一般选择B类别的技术移民，只要具备NS省需要的技能和经验就有机会获得该省的提名，提名批准后向加拿大联邦申请永居签证，一般联邦审理周期6个月内签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。">加拿大新斯科舍省移民提名项目 Nova Scotia Nominee Program ，简称 NSNP，加拿大 NSNP 里有EE下有两类，A类需要有雇主offer......</div>
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
						<p>加拿大新斯科舍省移民提名项目 Nova Scotia Nominee Program ，简称 NSNP，加拿大 NSNP 里有EE下有两类，A类需要有雇主offer，随时可以申请；另一类是B类，属于紧缺职业类别，不需要雇主提供offer就可以申请，但需要抢配额。中国申请人一般选择B类别的技术移民，只要具备NS省需要的技能和经验就有机会获得该省的提名，提名批准后向加拿大联邦申请永居签证，一般联邦审理周期6个月内签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。</p>
						<p>NSDEE 分为A、B两类，A类需要雇主offer，职业属于NOC 0、A、B level就可以，B类不需要雇主offer，但申请人从事职业需要在紧缺职业清单上。</p>
						<p>NSDEE Category B（无雇主offer紧缺职业类别） 2017 年开放记录：</p>
						<p>5.8 突然开放250配额，未提前通知开放时间</p>
						<p>7.5 突然开放，未告知名额，未提前通知开放时间</p>
						<p>10.11 开放250-300配额，提前公布开放时间</p>
						<p>12.09 开放175 to 225，提前公布开放时间</p>
					</div>
				</div>
				<!-- 政策解读tab end-->

				<!-- 申请流程tab start-->
				<div class="tab-pane fade tab-div" id="process">
					<div>
						<p>1.确认满足NS紧缺职业和评分标准。</p>
						<p>申请者应达到NS评分中的67分，也是进入EE池子67分，详见NS申请条件打分。</p>
						<p>最近6年内至少一年紧缺职业相关工作经验。</p>
						<p>2.信息录入EE系统，并同步注册NS在线账号。</p>
						<p>3.NS省在线系统开放B类名额，提交申请。</p>
						<p>4.获得NS省提名后，EE系统加600分，等待ITA</p>
						<p>申请人获得移民邀请ITA后，递交正式的签证申请，此时移民部承诺大部分申请6个月以内审理完毕（从递交之日算起）。</p>
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
								<td>递交NS省提名申请</td>
								<td>不定期</td>
								<td>等待开放名额才能提交申请</td>
							</tr>
							<tr>
								<td>5</td>
								<td>获得NS省提名邀请</td>
								<td>2-3个月</td>
								<td>提交全套NS申请资料后，可能有补料或者调查</td>
							</tr>
							<tr>
								<td>6</td>
								<td>获得EE邀请</td>
								<td>1~2周</td>
								<td>获得NS省提名后EE系统加600分，很快可以被邀请（即ITA）</td>
							</tr>
							<tr>
								<td>7</td>
								<td>准备资料递交申请签证</td>
								<td>2~4周</td>
								<td>向移民局提交全套材料</td>
							</tr>
							<tr>
								<td>8</td>
								<td>获批、取得签证</td>
								<td>6个月内</td>
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
						<p>NSDEE项目 B类无雇主offer类别需满足如下条件：</p>
						<p>1 满足NSNP评分标准，评分至少达到67分</p>
						<p>2 最近6年至少有一年相关的紧缺职业工作经验</p>
					</div>
					<div>
						<p>一 工作经验</p>
						<p>1 至少有一年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 最近6年工作年限按照同一个NOC职业代码（in the same NOC skill type (0, A or B)）计算；</p>
						<p>4 近6年的职业属于2016年版NOC的 level 0、A或B；</p>
						<p>二 语言能力</p>
						<p>雅思最低要求达到CLB7的水平（雅思4个6），2年有效期。</p>
						<p>三 学历要求</p>
						<p>完成加拿大ECA学历认证（加拿大境内学历除外）；</p>
						<p>四 NS打分超过67分（满分100分）</p>
						<p>FSW评分标准如下所示：</p>
						<table class="table table-striped table-bordered">
							<thead class="tab-table-thead">
								<th>评分项</th>
								<th colspan="5">NSPNP评分因素及对应评分</th>
							</thead>
							<tbody>
								<tr>
									<td rowspan="4">教育加分</td>
									<td>博士</td>
									<td>硕士</td>
									<td>双学历</td>
									<td>3年文凭</td>
								</tr>
								<tr>
									<td>25分</td>
									<td>23分</td>
									<td>22分</td>
									<td>21分</td>
								</tr>
								<tr>
									<td>2年文凭</td>
									<td>一年文凭</td>
									<td>高中</td>
									<td rowspan="2"></td>
								</tr>
								<tr>
									<td>19分</td>
									<td>15分</td>
									<td>5分</td>
								</tr>
								<tr>
									<td rowspan="2">语言加分</td>
									<td>第一语言CLB 7（雅思听6，读6，写6，说6）</td>
									<td>第一语言CLB 8（雅思听7.5，读6.5，写6.5，说6.5）</td>
									<td>第一语言CLB 9（雅思听8，读7，写7，说7）</td>
									<td>第二语言CLB 5</td>
								</tr>
								<tr>
									<td>4分/项</td>
									<td>5分/项</td>
									<td>6分/项</td>
									<td>1分/项</td>
								</tr>
								<tr>
									<td rowspan="2">工作加分</td>
									<td>1年</td>
									<td>2-3年</td>
									<td>4-5年</td>
									<td>6年+</td>
								</tr>
								<tr>
									<td>9分</td>
									<td>11分</td>
									<td>13分</td>
									<td>15分</td>
								</tr>
								<tr>
									<td rowspan="6">年龄加分</td>
									<td>18<=35岁</td>
									<td>36岁</td>
									<td>37岁</td>
									<td>38岁</td>
								</tr>
								<tr>
									<td>12分</td>
									<td>11分</td>
									<td>10分</td>
									<td>9分</td>
								</tr>
								<tr>
									<td>39岁</td>
									<td>40岁</td>
									<td>41岁</td>
									<td>42岁</td>
								</tr>
								<tr>
									<td>8分</td>
									<td>7分</td>
									<td>6分</td>
									<td>5分</td>
								</tr>
								<tr>
									<td>43岁</td>
									<td>44岁</td>
									<td>45岁</td>
									<td>46岁</td>
								</tr>
								<tr>
									<td>4分</td>
									<td>3分</td>
									<td>2分</td>
									<td>1分</td>
								</tr>
								<tr>
									<td>NS雇主安排（拥有LMIA或者持有工签在NS省工作）</td>
									<td colspan="4">10分</td>
								</tr>
								<tr>
									<td rowspan="4">适应能力</td>
									<td>主申最近5年一年在NS省工作</td>
									<td>主申最近5年有2年在NS省读书</td>
									<td>主副申加拿大直系亲属（父母、祖父母、兄弟姐妹、叔叔舅舅、姑姑姨）</td>
									<td>主申请雇主安排额外加分</td>
								</tr>
								<tr>
									<td>10分</td>
									<td>5分</td>
									<td>5分</td>
									<td>5分</td>
								</tr>
								<tr>
									<td>配偶最近5年一年在NS省工作</td>
									<td>配偶雅思（CLB 4）（雅思听力4.5，读3.5，其他两个4）</td>
									<td rowspan="2" colspan="2"></td>
								</tr>
								<tr>
									<td>5分</td>
									<td>5分</td>
								</tr>
							</tbody>
						</table>
						<div>
							<p>NS紧缺职业清单，参考布谷网站上NS省职业列表  <a href="https://www.kukoo.org/ns">https://www.kukoo.org/ns</a></p>   
							<p>官方说明参看链接 <a href="https://novascotiaimmigration.com/wp-content/uploads/Demand-AppGuide-English-1.pdf   Page5">https://novascotiaimmigration.com/wp-content/uploads/Demand-AppGuide-English-1.pdf   Page5</a> </p>
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
							"加拿大新斯科舍省移民提名项目 Nova Scotia Nominee Program ，简称 NSNP，加拿大 NSNP 里有EE下有两类，A类需要有雇主offer，随时可以申请；另一类是B类，属于紧缺职业类别，不需要雇主提供offer就可以申请，但需要抢配额。中国申请人一般选择B类别的技术移民，只要具备NS省需要的技能和经验就有机会获得该省的提名，提名批准后向加拿大联邦申请永居签证，一般联邦审理周期6个月内签发签证。加拿大宪法规定，移民事务由联邦政府和省政府共同管辖，省提名项目必须由联邦政府发放移民签证并最终成为加拿大永久居民。");
			$("#more").text("收起");
		} else {
			$("#desc")
					.text(
							"加拿大新斯科舍省移民提名项目 Nova Scotia Nominee Program ，简称 NSNP，加拿大 NSNP 里有EE下有两类，A类需要有雇主offer......");
			$("#more").text("更多详情");
		}
	}
	//显示更多end
</script>
</html>