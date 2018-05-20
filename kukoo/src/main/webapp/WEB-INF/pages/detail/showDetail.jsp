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
						<p>加拿大联邦技术移民-快速通道项目</p>
					</div>
					<div class="row">
						<div class="col-xs-3 padding-clear name-width">项目简介</div>
						<div id="desc" class="col-xs-9 padding-clear desc-width"
							title="加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内居住地限制，目前采用EE快速通道筛选系统，审理快速，周期最快8个月登陆加拿大。
								  本项目具有办理周期短，对语言等条件要求高等特点；适合学历高，年龄轻，英语好的申请人。">加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内......</div>
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
				<li><a href="#condition" data-toggle="tab" onclick="loadEcharts()"> 申请条件 </a></li>
				<li><a href="#list" data-toggle="tab"> 材料清单 </a></li>
				<li><a href="#detail" data-toggle="tab"> 费用详情 </a></li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<!-- 政策解读tab start-->
				<div class="tab-pane fade in active tab-div" id="policy">
					<div>
						<p>加同管辖。加拿大联邦技术移民项目（the Federal Skilled Worker
							Program，“FSW”）即为申请者向加拿大联邦政府递交技术移民申请，由联邦政府发放移民签证并最终成为加拿大永久居民的移民申请项目。</p>
						<p>自2015年开始，加拿大联邦技术移民（FSW）必须通过快速通道方式（Express
							Entry,“EE”）申请。即在满足FSW申请条件基础上，申请者还需统一按照的EE的综合排名系统（CRS）规则重新打分；最终根据分数排名情况受理移民申请，并在受理后的6个月内获得移民签证。</p>
						<p>联邦技术移民快速通道（EE）自实施以来，已经进行过71次邀请。最近一次邀请分数为435分，最低邀请分数为413分。历次邀请的CRS分数以及人数统计如下。申请人CRS分数超过430分的被邀请的概率较大。</p>
					</div>
					<div class="charts" id="charts"></div>
					<!-- <table class="table table-striped table-bordered">
						<thead class="tab-table-thead">
							<th>EE邀请日期</th>
							<th>EE邀请人数</th>
							<th>EE邀请分数</th>
							<th>年度邀请次数</th>
							<th>EE总邀请次数</th>
						</thead>
						<tbody>
							<tr>
								<td>2017/9/6</td>
								<td>2772</td>
								<td>435</td>
								<td>21</td>
								<td>71</td>
							</tr>
							<tr>
								<td>2017/8/23</td>
								<td>3035</td>
								<td>434</td>
								<td>20</td>
								<td>70</td>
							</tr>
							<tr>
								<td>2017/8/9</td>
								<td>2991</td>
								<td>433</td>
								<td>19</td>
								<td>69</td>
							</tr>
							<tr>
								<td>2017/8/2</td>
								<td>3264</td>
								<td>441</td>
								<td>18</td>
								<td>68</td>
							</tr>
							<tr>
								<td>2017/7/12</td>
								<td>3202</td>
								<td>440</td>
								<td>17</td>
								<td>67</td>
							</tr>
							<tr>
								<td>2017/6/28</td>
								<td>3409</td>
								<td>449</td>
								<td>16</td>
								<td>66</td>
							</tr>
							<tr>
								<td>2017/5/31</td>
								<td>3877</td>
								<td>413</td>
								<td>15</td>
								<td>65</td>
							</tr>
							<tr>
								<td>2017/5/17</td>
								<td>3687</td>
								<td>415</td>
								<td>12</td>
								<td>62</td>
							</tr>
							<tr>
								<td>2017/5/4</td>
								<td>3796</td>
								<td>423</td>
								<td>11</td>
								<td>61</td>
							</tr>
							<tr>
								<td>2017/4/19</td>
								<td>3665</td>
								<td>415</td>
								<td>10</td>
								<td>60</td>
							</tr>
							<tr>
								<td>2017/4/12</td>
								<td>3923</td>
								<td>423</td>
								<td>9</td>
								<td>59</td>
							</tr>
							<tr>
								<td>2017/4/5</td>
								<td>3753</td>
								<td>431</td>
								<td>8</td>
								<td>58</td>
							</tr>
							<tr>
								<td>2017/3/24</td>
								<td>3749</td>
								<td>441</td>
								<td>7</td>
								<td>57</td>
							</tr>
							<tr>
								<td>2017/3/1</td>
								<td>3884</td>
								<td>434</td>
								<td>6</td>
								<td>56</td>
							</tr>
							<tr>
								<td>2017/2/22</td>
								<td>3611</td>
								<td>441</td>
								<td>5</td>
								<td>55</td>
							</tr>
							<tr>
								<td>2017/2/8</td>
								<td>3664</td>
								<td>447</td>
								<td>4</td>
								<td>54</td>
							</tr>
							<tr>
								<td>2017/1/25</td>
								<td>3508</td>
								<td>453</td>
								<td>3</td>
								<td>53</td>
							</tr>
							<tr>
								<td>2017/1/11</td>
								<td>3334</td>
								<td>459</td>
								<td>2</td>
								<td>52</td>
							</tr>
							<tr>
								<td>2017/1/4</td>
								<td>2902</td>
								<td>468</td>
								<td>1</td>
								<td>51</td>
							</tr>
							<tr>
								<td>2016/12/22</td>
								<td>2878</td>
								<td>475</td>
								<td>27</td>
								<td>50</td>
							</tr>
							<tr>
								<td>2016/12/16</td>
								<td>1936</td>
								<td>497</td>
								<td>26</td>
								<td>49</td>
							</tr>
							<tr>
								<td>2016/11/30</td>
								<td>559</td>
								<td>786</td>
								<td>25</td>
								<td>48</td>
							</tr>
							<tr>
								<td>2016/11/16</td>
								<td>2427</td>
								<td>470</td>
								<td>24</td>
								<td>47</td>
							</tr>
							<tr>
								<td>2016/11/2</td>
								<td>2080</td>
								<td>472</td>
								<td>23</td>
								<td>46</td>
							</tr>
							<tr>
								<td>2016/10/19</td>
								<td>1804</td>
								<td>475</td>
								<td>22</td>
								<td>45</td>
							</tr>
							<tr>
								<td>2016/10/12</td>
								<td>1518</td>
								<td>484</td>
								<td>21</td>
								<td>44</td>
							</tr>
							<tr>
								<td>2016/9/21</td>
								<td>1288</td>
								<td>483</td>
								<td>20</td>
								<td>43</td>
							</tr>
							<tr>
								<td>2016/9/7</td>
								<td>1000</td>
								<td>491</td>
								<td>19</td>
								<td>42</td>
							</tr>
							<tr>
								<td>2016/8/24</td>
								<td>750</td>
								<td>538</td>
								<td>18</td>
								<td>41</td>
							</tr>
							<tr>
								<td>2016/8/10</td>
								<td>754</td>
								<td>490</td>
								<td>17</td>
								<td>40</td>
							</tr>
							<tr>
								<td>2016/7/27</td>
								<td>755</td>
								<td>488</td>
								<td>16</td>
								<td>39</td>
							</tr>
							<tr>
								<td>2016/7/13</td>
								<td>747</td>
								<td>482</td>
								<td>15</td>
								<td>38</td>
							</tr>
							<tr>
								<td>2016/6/29</td>
								<td>773</td>
								<td>482</td>
								<td>14</td>
								<td>37</td>
							</tr>
							<tr>
								<td>2016/6/15</td>
								<td>752</td>
								<td>488</td>
								<td>13</td>
								<td>36</td>
							</tr>
							<tr>
								<td>2016/6/1</td>
								<td>762</td>
								<td>483</td>
								<td>12</td>
								<td>35</td>
							</tr>
							<tr>
								<td>2016/5/18</td>
								<td>763</td>
								<td>484</td>
								<td>11</td>
								<td>34</td>
							</tr>
							<tr>
								<td>2016/5/6</td>
								<td>799</td>
								<td>534</td>
								<td>10</td>
								<td>33</td>
							</tr>
							<tr>
								<td>2016/4/20</td>
								<td>1018</td>
								<td>468</td>
								<td>9</td>
								<td>32</td>
							</tr>
							<tr>
								<td>2016/4/6</td>
								<td>954</td>
								<td>470</td>
								<td>8</td>
								<td>31</td>
							</tr>
							<tr>
								<td>2016/3/23</td>
								<td>1014</td>
								<td>470</td>
								<td>7</td>
								<td>30</td>
							</tr>
							<tr>
								<td>2016/3/9</td>
								<td>1013</td>
								<td>473</td>
								<td>6</td>
								<td>29</td>
							</tr>
							<tr>
								<td>2016/2/24</td>
								<td>1484</td>
								<td>453</td>
								<td>5</td>
								<td>28</td>
							</tr>
							<tr>
								<td>2016/2/10</td>
								<td>1505</td>
								<td>459</td>
								<td>4</td>
								<td>27</td>
							</tr>
							<tr>
								<td>2016/1/27</td>
								<td>1468</td>
								<td>457</td>
								<td>3</td>
								<td>26</td>
							</tr>
							<tr>
								<td>2016/1/13</td>
								<td>1518</td>
								<td>453</td>
								<td>2</td>
								<td>25</td>
							</tr>
							<tr>
								<td>2016/1/6</td>
								<td>1463</td>
								<td>461</td>
								<td>1</td>
								<td>24</td>
							</tr>
							<tr>
								<td>2015/12/18</td>
								<td>1503</td>
								<td>460</td>
								<td>23</td>
								<td>23</td>
							</tr>
							<tr>
								<td>2015/12/4</td>
								<td>1451</td>
								<td>461</td>
								<td>22</td>
								<td>22</td>
							</tr>
							<tr>
								<td>2015/11/27</td>
								<td>1559</td>
								<td>472</td>
								<td>21</td>
								<td>21</td>
							</tr>
							<tr>
								<td>2015/11/13</td>
								<td>1506</td>
								<td>484</td>
								<td>20</td>
								<td>20</td>
							</tr>
							<tr>
								<td>2015/10/23</td>
								<td>1502</td>
								<td>489</td>
								<td>19</td>
								<td>19</td>
							</tr>
							<tr>
								<td>2015/10/2</td>
								<td>1530</td>
								<td>450</td>
								<td>18</td>
								<td>18</td>
							</tr>
							<tr>
								<td>2015/9/18</td>
								<td>1545</td>
								<td>450</td>
								<td>17</td>
								<td>17</td>
							</tr>
							<tr>
								<td>2015/9/8</td>
								<td>1517</td>
								<td>459</td>
								<td>16</td>
								<td>16</td>
							</tr>
							<tr>
								<td>2015/8/21</td>
								<td>1523</td>
								<td>456</td>
								<td>15</td>
								<td>15</td>
							</tr>
							<tr>
								<td>2015/8/7</td>
								<td>1402</td>
								<td>471</td>
								<td>14</td>
								<td>14</td>
							</tr>
							<tr>
								<td>2015/7/17</td>
								<td>1581</td>
								<td>451</td>
								<td>13</td>
								<td>13</td>
							</tr>
							<tr>
								<td>2015/7/10</td>
								<td>1516</td>
								<td>463</td>
								<td>12</td>
								<td>12</td>
							</tr>
							<tr>
								<td>2015/6/26</td>
								<td>1575</td>
								<td>469</td>
								<td>11</td>
								<td>11</td>
							</tr>
							<tr>
								<td>2015/6/12</td>
								<td>1501</td>
								<td>482</td>
								<td>10</td>
								<td>10</td>
							</tr>
							<tr>
								<td>2015/5/22</td>
								<td>1361</td>
								<td>755</td>
								<td>9</td>
								<td>9</td>
							</tr>
							<tr>
								<td>2015/4/17</td>
								<td>715</td>
								<td>453</td>
								<td>8</td>
								<td>8</td>
							</tr>
							<tr>
								<td>2015/4/10</td>
								<td>925</td>
								<td>469</td>
								<td>7</td>
								<td>7</td>
							</tr>
							<tr>
								<td>2015/3/27</td>
								<td>1637</td>
								<td>453</td>
								<td>6</td>
								<td>6</td>
							</tr>
							<tr>
								<td>2015/3/20</td>
								<td>1620</td>
								<td>481</td>
								<td>5</td>
								<td>5</td>
							</tr>
							<tr>
								<td>2015/2/27</td>
								<td>1187</td>
								<td>735</td>
								<td>4</td>
								<td>4</td>
							</tr>
							<tr>
								<td>2015/2/20</td>
								<td>849</td>
								<td>808</td>
								<td>3</td>
								<td>3</td>
							</tr>
							<tr>
								<td>2015/2/7</td>
								<td>779</td>
								<td>818</td>
								<td>2</td>
								<td>2</td>
							</tr>
							<tr>
								<td>2015/1/31</td>
								<td>779</td>
								<td>886</td>
								<td>1</td>
								<td>1</td>
							</tr>
							<tr>
								<td>累计人数:</td>
								<td>130871</td>
								<td></td>
								<td>最低分数:</td>
								<td>413</td>
							</tr>
						</tbody>
					</table> -->
				</div>
				<!-- 政策解读tab end-->

				<!-- 申请流程tab start-->
				<div class="tab-pane fade tab-div" id="process">
					<div>
						<p>1.确认满足联邦技术移民项目（FSW）评分标准</p>
						<p>申请者应首先满足联邦技术移民项目（FSW）评分标准。</p>
						<p>FSW具体评分标准参见“申请条件”页。您也可使用布谷的在线评分系统进行自测。</p>
						<p>2.录入EE系统的MyCIC账户并进行（CRS）打分</p>
						<p>确认满足联邦技术移民项目（FSW）要求后，申请者可将自己的信息录入EE系统的MyCIC账户。填写完毕后，EE系统的综合排名体系（Comprehensive
							Ranking System,
							CRS）会根据CRS的评分标准重新计算分数，并根据分数排名等待获得移民申请邀请（Invitation to Apply，
							“ITA”）;我们把这个过程叫做“入池”。</p>
						<p>CRS的具体评分标准参见“申请条件”页。您也可使用布谷的在线评分系统进行自测。</p>
						<p>3.根据EE系统CRS打分获得移民邀请</p>
						<p>移民局会不定期根据CRS评分情况，对高于特定分数的申请者发出移民申请邀请（ITA）。当申请人的CRS分数高于移民局邀请的分数时，申请人可以获得移民局的移民邀请（ITA），并开始正式的移民申请。</p>
						<p>EE历次邀请人数及CRS分数线统计参见“政策解读”页。</p>
						<p>4.申请人递交正式的移民申请</p>
						<p>申请人获得移民邀请ITA后，递交正式的移民申请，此时移民部承诺大部分申请6个月以内审理完毕（从递交之日算起）。</p>
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
								<td>获得邀请</td>
								<td>不定期</td>
								<td>获得邀请</td>
							</tr>
							<tr>
								<td>5</td>
								<td>申请签证</td>
								<td>2~8周</td>
								<td>向移民局提交全套材料</td>
							</tr>
							<tr>
								<td>6</td>
								<td>获批、取得签证</td>
								<td>6~8周</td>
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
						<p>申请加拿大联邦技术移民-快速通道项目需满足如下条件：</p>
						<p>1 满足联邦技术移民项目（FSW）评分标准</p>
						<p>2 按照CRS评分标准打分，并根据分数高低获得联邦邀请（通常要求430分以上）</p>
						<p>FSW及CRS具体评分标准如下。您也可使用布谷的在线评分系统进行自测。</p>
					</div>
					<div>
						<p>* FSW评分标准</p>
						<p>一 工作经验</p>
						<p>1 至少有一年的工作经验，可以是连续的全职或者等同的兼职；</p>
						<p>2 有偿的工作（志愿者、无偿的不算）；</p>
						<p>3 工作年限按照同一个NOC职业代码（in the same NOC skill type (0, A or
							B)）计算；</p>
						<p>4 近10年的职业属于2011年版NOC的 level 0、A或B；</p>
						<p>二 语言能力</p>
						<p>雅思达到CLB7的水平（雅思4个6），2年有效期。</p>
						<p>三 学历要求</p>
						<p>完成加拿大ECA学历认证；</p>
						<p>四 FSW打分超过67分（满分100分）</p>
						<p>FSW评分标准如下所示：</p>
						<table class="table table-striped table-bordered">
							<thead class="tab-table-thead">
								<th>评分项</th>
								<th colspan="5">加拿大技术移民评分因素及对应评分</th>
							</thead>
							<tbody>
								<tr>
									<td rowspan="2">语言加分</td>
									<td>第一语言CLB 7</td>
									<td>第一语言CLB 8</td>
									<td>第一语言CLB 9</td>
									<td>第二语言CLB 5</td>
								</tr>
								<tr>
									<td>4分/项</td>
									<td>5分/项</td>
									<td>6分/项</td>
									<td>1分/项</td>
								</tr>
								<tr>
									<td rowspan="6">年龄加分</td>
									<td><=35岁</td>
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
									<td>LMO加分</td>
									<td colspan="4">10分</td>
								</tr>
								<tr>
									<td rowspan="4">适应能力</td>
									<td>主申加拿大工作</td>
									<td>主申加拿大学习</td>
									<td>主副申加拿大直系亲属</td>
									<td>AEO</td>
								</tr>
								<tr>
									<td>10分</td>
									<td>5分</td>
									<td>5分</td>
									<td>5分</td>
								</tr>
								<tr>
									<td>配偶加拿大工作</td>
									<td>配偶雅思（CLB 4）</td>
									<td rowspan="2" colspan="2"></td>
								</tr>
								<tr>
									<td>5分</td>
									<td>5分</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div>
						<p>* CRS评分标准</p>
						<p>EE评分系统的CRS综合排名体系 (Comprehensive Ranking
							System)，满分1200分，主要涉及4个方面：核心要素（年龄、教育、语言和加拿大工作经验）；配偶加分（教育、语言和加拿大工作经验）；适应能力（教育、工作经验和加拿大资格证书）；雇主offer和省提名。总分
							1200=核心分数+配偶加分+适应分数+其他分数。</p>
						<p>下面标准适用于2016-11-19后新的 EE 评分标准。</p>
						<table class="table table-striped table-bordered">
							<tr height=21
								style='height: 16.0pt; background-color: #16a2d3; color: #ffffff'>
								<td height=21 class=xl65 width=160
									style='height: 16.0pt; width: 65pt'>I. 核心评分要素</td>
								<td colspan=2 class=xl71 width=174
									style='border-left: none; width: 130pt'>有配偶，最高460 分</td>
								<td colspan=2 class=xl71 width=174
									style='border-left: none; width: 130pt'>单身，最高500 分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>年龄加分</td>
								<td colspan=2 class=xl79 style='border-left: none'>已婚最高100分</td>
								<td colspan=2 class=xl79 style='border-left: none'>单身最高110分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>未超过17周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>18周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>90</td>
								<td colspan=2 class=xl72 style='border-left: none'>99</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>19周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>95</td>
								<td colspan=2 class=xl72 style='border-left: none'>105</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>20 - 29周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>100</td>
								<td colspan=2 class=xl72 style='border-left: none'>110</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>30周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>95</td>
								<td colspan=2 class=xl72 style='border-left: none'>105</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>31周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>90</td>
								<td colspan=2 class=xl72 style='border-left: none'>99</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>32周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>85</td>
								<td colspan=2 class=xl72 style='border-left: none'>94</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>33周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>80</td>
								<td colspan=2 class=xl72 style='border-left: none'>88</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>34周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>75</td>
								<td colspan=2 class=xl72 style='border-left: none'>83</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>35周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>70</td>
								<td colspan=2 class=xl72 style='border-left: none'>77</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>36周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>65</td>
								<td colspan=2 class=xl72 style='border-left: none'>72</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>37周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>60</td>
								<td colspan=2 class=xl72 style='border-left: none'>66</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>38周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>55</td>
								<td colspan=2 class=xl72 style='border-left: none'>61</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>39周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>50</td>
								<td colspan=2 class=xl72 style='border-left: none'>55</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>40周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>45</td>
								<td colspan=2 class=xl72 style='border-left: none'>50</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>41周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>35</td>
								<td colspan=2 class=xl72 style='border-left: none'>39</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>42周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>25</td>
								<td colspan=2 class=xl72 style='border-left: none'>28</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>43周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>15</td>
								<td colspan=2 class=xl72 style='border-left: none'>17</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>44周岁</td>
								<td colspan=2 class=xl72 style='border-left: none'>5</td>
								<td colspan=2 class=xl72 style='border-left: none'>6</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>45周岁 or more</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>教育加分</td>
								<td colspan=2 class=xl79 style='border-left: none'>已婚最高140分</td>
								<td colspan=2 class=xl79 style='border-left: none'>单身最高150分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>初中以下</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>初高中</td>
								<td colspan=2 class=xl72 style='border-left: none'>28</td>
								<td colspan=2 class=xl72 style='border-left: none'>30</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>一年高等教育</td>
								<td colspan=2 class=xl72 style='border-left: none'>84</td>
								<td colspan=2 class=xl72 style='border-left: none'>90</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>二年高等教育</td>
								<td colspan=2 class=xl72 style='border-left: none'>91</td>
								<td colspan=2 class=xl72 style='border-left: none'>98</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>三年及以上高等教育</td>
								<td colspan=2 class=xl72 style='border-left: none'>112</td>
								<td colspan=2 class=xl72 style='border-left: none'>120</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>两个以上高等教育且其中一个为3年制及以上</td>
								<td colspan=2 class=xl72 style='border-left: none'>119</td>
								<td colspan=2 class=xl72 style='border-left: none'>128</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>硕士</td>
								<td colspan=2 class=xl72 style='border-left: none'>126</td>
								<td colspan=2 class=xl72 style='border-left: none'>135</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>博士</td>
								<td colspan=2 class=xl72 style='border-left: none'>140</td>
								<td colspan=2 class=xl72 style='border-left: none'>150</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>第一语言，单项</td>
								<td colspan=2 class=xl79 style='border-left: none'>已婚最高128分</td>
								<td colspan=2 class=xl79 style='border-left: none'>单身最高136分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>Less than CLB 4</td>
								<td colspan=2 class=xl72 style='border-left: none'>0分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>0分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 4 or 5</td>
								<td colspan=2 class=xl72 style='border-left: none'>6分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>6分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 6</td>
								<td colspan=2 class=xl72 style='border-left: none'>8分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>9分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 7</td>
								<td colspan=2 class=xl72 style='border-left: none'>16分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>17分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 8</td>
								<td colspan=2 class=xl72 style='border-left: none'>22分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>23分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 9</td>
								<td colspan=2 class=xl72 style='border-left: none'>29分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>31分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 10 or more</td>
								<td colspan=2 class=xl72 style='border-left: none'>32分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>34分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>第二语言，单项</td>
								<td colspan=2 class=xl79 style='border-left: none'>已婚最高22分</td>
								<td colspan=2 class=xl79 style='border-left: none'>单身最高24分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 4 or less</td>
								<td colspan=2 class=xl72 style='border-left: none'>0分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>0分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 5 or 6</td>
								<td colspan=2 class=xl72 style='border-left: none'>1分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>1分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 7 or 8</td>
								<td colspan=2 class=xl72 style='border-left: none'>3分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>3分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 9 or more</td>
								<td colspan=2 class=xl72 style='border-left: none'>6分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'>6分/项</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>加拿大工作经验加分</td>
								<td colspan=2 class=xl79 style='border-left: none'>已婚最高70分</td>
								<td colspan=2 class=xl79 style='border-left: none'>单身最高80分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>不到一年</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>1 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>35</td>
								<td colspan=2 class=xl72 style='border-left: none'>40</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>2 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>46</td>
								<td colspan=2 class=xl72 style='border-left: none'>53</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>3 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>56</td>
								<td colspan=2 class=xl72 style='border-left: none'>64</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>4 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>63</td>
								<td colspan=2 class=xl72 style='border-left: none'>72</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>5 年及以上</td>
								<td colspan=2 class=xl72 style='border-left: none'>70</td>
								<td colspan=2 class=xl72 style='border-left: none'>80</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>II. 配偶加分</td>
								<td colspan=2 class=xl71 style='border-left: none'>有配偶，最高40分</td>
								<td colspan=2 class=xl71 style='border-left: none'>单身不适用</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>配偶教育加分</td>
								<td colspan=2 class=xl72 style='border-left: none'>最高10分</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>初中以下</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>初高中</td>
								<td colspan=2 class=xl72 style='border-left: none'>2</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>一年高等教育</td>
								<td colspan=2 class=xl72 style='border-left: none'>6</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>二年高等教育</td>
								<td colspan=2 class=xl72 style='border-left: none'>7</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>三年及以上高等教育</td>
								<td colspan=2 class=xl72 style='border-left: none'>8</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>两个以上高等教育且其中一个为3年制及以上</td>
								<td colspan=2 class=xl72 style='border-left: none'>9</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>硕士</td>
								<td colspan=2 class=xl72 style='border-left: none'>10</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>博士</td>
								<td colspan=2 class=xl72 style='border-left: none'>10</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>配偶第一语言加分</td>
								<td colspan=2 class=xl79 style='border-left: none'>最高20分</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 4 or less</td>
								<td colspan=2 class=xl72 style='border-left: none'>0分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 5 or 6</td>
								<td colspan=2 class=xl72 style='border-left: none'>1分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 7 or 8</td>
								<td colspan=2 class=xl72 style='border-left: none'>3分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>CLB 9 or more</td>
								<td colspan=2 class=xl72 style='border-left: none'>5分/项</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>配偶加拿大工作经验</td>
								<td colspan=2 class=xl79 style='border-left: none'>最高10分</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>不到一年</td>
								<td colspan=2 class=xl72 style='border-left: none'>0</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>1 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>5</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>2 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>7</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>3 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>8</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>4 年</td>
								<td colspan=2 class=xl72 style='border-left: none'>9</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>5 年及以上</td>
								<td colspan=2 class=xl72 style='border-left: none'>10</td>
								<td colspan=2 class=xl72 style='border-left: none'></td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td colspan=5 height=21 class=xl73 style='height: 16.0pt'>III.
									加拿大技术移民适应分，最高100，对加拿大工作，学历，语言及海外学历综合评分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td colspan=5 height=21 class=xl75 style='height: 16.0pt'>
								</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td colspan=5 height=21 class=xl77 style='height: 16.0pt'>备注：以下五项评分中，一和二总分最高为50分，三和四总分最高为50分，所有项总分最高100分！</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66 style='height: 16.0pt'>一、学历奖励分，基于语言,50</td>
								<td colspan=2 class=xl69 style='border-left: none'>第一语言单项都达到CLB
									7的学历奖励分</td>
								<td colspan=2 class=xl69 style='border-left: none'>第一语言单项都达到CLB
									9学历奖励分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>中学 (levels
									1&amp;2)</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>一年及以上高等教育(levels
									3,4 &amp; 5)</td>
								<td colspan=2 class=xl70 style='border-left: none'>13</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>两个及以上高等学历且一个学历年制超过3年(levels
									6,7 &amp; 8)</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
								<td colspan=2 class=xl70 style='border-left: none'>50</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>二、学历奖励分，基于加拿大工作，50</td>
								<td colspan=2 class=xl69 style='border-left: none'>有一年以上加拿大工作经验的学历奖励分</td>
								<td colspan=2 class=xl69 style='border-left: none'>有二年以上加拿大工作经验的学历奖励分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>中学 (levels
									1&amp;2)</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>一年及以上高等教育(levels
									3,4 &amp; 5)</td>
								<td colspan=2 class=xl70 style='border-left: none'>13</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>两个及以上高等学历且一个学历年制超过3年(levels
									6,7 &amp; 8)</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
								<td colspan=2 class=xl70 style='border-left: none'>50</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>三、工作分，基于语言，50</td>
								<td colspan=2 class=xl69 style='border-left: none'>第一语言单项都达到
									CLB 7 的海外工作经验加分</td>
								<td colspan=2 class=xl69 style='border-left: none'>第一语言单项都达到
									CLB 9 的海外工作经验加分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>无加拿大外工作经验</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>1-2年加拿大外工作</td>
								<td colspan=2 class=xl70 style='border-left: none'>13</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>3年以上加拿大外工作</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
								<td colspan=2 class=xl70 style='border-left: none'>50</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>四、工作分，有加拿大工作，50</td>
								<td colspan=2 class=xl69 style='border-left: none'>有1年加拿大工作经验的海外工作奖励加分</td>
								<td colspan=2 class=xl69 style='border-left: none'>有2年加拿大工作经验的海外工作奖励加分</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>无加拿大外工作经验</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
								<td colspan=2 class=xl70 style='border-left: none'>0</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>1-2年加拿大外工作</td>
								<td colspan=2 class=xl70 style='border-left: none'>13</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>3年以上加拿大外工作</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
								<td colspan=2 class=xl70 style='border-left: none'>50</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl66
									style='height: 16.0pt; border-top: none'>五、加拿大技工职业证书及官方语言，50</td>
								<td colspan=2 class=xl69 style='border-left: none'>语言单项不低于
									CLB 5 且有一项达到 7</td>
								<td colspan=2 class=xl69 style='border-left: none'>语言单项都达到
									CLB 7</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>持有加拿大技工
									certificate of qualification</td>
								<td colspan=2 class=xl70 style='border-left: none'>25</td>
								<td colspan=2 class=xl70 style='border-left: none'>50</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl65
									style='height: 16.0pt; border-top: none'>IV. 其他加分
									Additional points</td>
								<td colspan=4 class=xl71 style='border-left: none'>Maximum
									600 points</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>加拿大公民或永居的兄弟姐妹</td>
								<td colspan=4 class=xl68 style='border-left: none'>15</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语 NCLC 7 级同时英语
									CLB 4级</td>
								<td colspan=4 class=xl68 style='border-left: none'>15</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>法语 NCLC 7 级同时英语
									CLB 5级</td>
								<td colspan=4 class=xl68 style='border-left: none'>30</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>1-2年加拿大高等学历</td>
								<td colspan=4 class=xl68 style='border-left: none'>15</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>3 年及以上加拿大高等教育</td>
								<td colspan=4 class=xl68 style='border-left: none'>30</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>NOC 00 开头高管职业雇佣安排</td>
								<td colspan=4 class=xl68 style='border-left: none'>200（获得
									LMIA 或已经在加拿大工作一年以上）</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>其他 NOC 0，A，B
									职业雇佣安排</td>
								<td colspan=4 class=xl68 style='border-left: none'>50（获得
									LMIA 或已经在加拿大工作一年以上）</td>
							</tr>
							<tr height=21 style='height: 16.0pt'>
								<td height=21 class=xl67
									style='height: 16.0pt; border-top: none'>EE 下省提名</td>
								<td colspan=4 class=xl68 style='border-left: none'>600</td>
							</tr>
						</table>
					</div>

					<div>
						<p>* CRS评分标准</p>
						<p>联邦技术移民快速通道（EE）自实施以来，已经进行过71次邀请。最近一次邀请分数为435分，最低邀请分数为413分。历次邀请的CRS分数以及人数统计如下：</p>
						
						<div class="charts" id="chartsCopy"></div>

						<!-- <table class="table table-striped table-bordered">
						<thead class="tab-table-thead">
							<th>EE邀请日期</th>
							<th>EE邀请人数</th>
							<th>EE邀请分数</th>
							<th>年度邀请次数</th>
							<th>EE总邀请次数</th>
						</thead>
						<tbody>
							<tr>
								<td>2017/9/6</td>
								<td>2772</td>
								<td>435</td>
								<td>21</td>
								<td>71</td>
							</tr>
							<tr>
								<td>2017/8/23</td>
								<td>3035</td>
								<td>434</td>
								<td>20</td>
								<td>70</td>
							</tr>
							<tr>
								<td>2017/8/9</td>
								<td>2991</td>
								<td>433</td>
								<td>19</td>
								<td>69</td>
							</tr>
							<tr>
								<td>2017/8/2</td>
								<td>3264</td>
								<td>441</td>
								<td>18</td>
								<td>68</td>
							</tr>
							<tr>
								<td>2017/7/12</td>
								<td>3202</td>
								<td>440</td>
								<td>17</td>
								<td>67</td>
							</tr>
							<tr>
								<td>2017/6/28</td>
								<td>3409</td>
								<td>449</td>
								<td>16</td>
								<td>66</td>
							</tr>
							<tr>
								<td>2017/5/31</td>
								<td>3877</td>
								<td>413</td>
								<td>15</td>
								<td>65</td>
							</tr>
							<tr>
								<td>2017/5/17</td>
								<td>3687</td>
								<td>415</td>
								<td>12</td>
								<td>62</td>
							</tr>
							<tr>
								<td>2017/5/4</td>
								<td>3796</td>
								<td>423</td>
								<td>11</td>
								<td>61</td>
							</tr>
							<tr>
								<td>2017/4/19</td>
								<td>3665</td>
								<td>415</td>
								<td>10</td>
								<td>60</td>
							</tr>
							<tr>
								<td>2017/4/12</td>
								<td>3923</td>
								<td>423</td>
								<td>9</td>
								<td>59</td>
							</tr>
							<tr>
								<td>2017/4/5</td>
								<td>3753</td>
								<td>431</td>
								<td>8</td>
								<td>58</td>
							</tr>
							<tr>
								<td>2017/3/24</td>
								<td>3749</td>
								<td>441</td>
								<td>7</td>
								<td>57</td>
							</tr>
							<tr>
								<td>2017/3/1</td>
								<td>3884</td>
								<td>434</td>
								<td>6</td>
								<td>56</td>
							</tr>
							<tr>
								<td>2017/2/22</td>
								<td>3611</td>
								<td>441</td>
								<td>5</td>
								<td>55</td>
							</tr>
							<tr>
								<td>2017/2/8</td>
								<td>3664</td>
								<td>447</td>
								<td>4</td>
								<td>54</td>
							</tr>
							<tr>
								<td>2017/1/25</td>
								<td>3508</td>
								<td>453</td>
								<td>3</td>
								<td>53</td>
							</tr>
							<tr>
								<td>2017/1/11</td>
								<td>3334</td>
								<td>459</td>
								<td>2</td>
								<td>52</td>
							</tr>
							<tr>
								<td>2017/1/4</td>
								<td>2902</td>
								<td>468</td>
								<td>1</td>
								<td>51</td>
							</tr>
							<tr>
								<td>2016/12/22</td>
								<td>2878</td>
								<td>475</td>
								<td>27</td>
								<td>50</td>
							</tr>
							<tr>
								<td>2016/12/16</td>
								<td>1936</td>
								<td>497</td>
								<td>26</td>
								<td>49</td>
							</tr>
							<tr>
								<td>2016/11/30</td>
								<td>559</td>
								<td>786</td>
								<td>25</td>
								<td>48</td>
							</tr>
							<tr>
								<td>2016/11/16</td>
								<td>2427</td>
								<td>470</td>
								<td>24</td>
								<td>47</td>
							</tr>
							<tr>
								<td>2016/11/2</td>
								<td>2080</td>
								<td>472</td>
								<td>23</td>
								<td>46</td>
							</tr>
							<tr>
								<td>2016/10/19</td>
								<td>1804</td>
								<td>475</td>
								<td>22</td>
								<td>45</td>
							</tr>
							<tr>
								<td>2016/10/12</td>
								<td>1518</td>
								<td>484</td>
								<td>21</td>
								<td>44</td>
							</tr>
							<tr>
								<td>2016/9/21</td>
								<td>1288</td>
								<td>483</td>
								<td>20</td>
								<td>43</td>
							</tr>
							<tr>
								<td>2016/9/7</td>
								<td>1000</td>
								<td>491</td>
								<td>19</td>
								<td>42</td>
							</tr>
							<tr>
								<td>2016/8/24</td>
								<td>750</td>
								<td>538</td>
								<td>18</td>
								<td>41</td>
							</tr>
							<tr>
								<td>2016/8/10</td>
								<td>754</td>
								<td>490</td>
								<td>17</td>
								<td>40</td>
							</tr>
							<tr>
								<td>2016/7/27</td>
								<td>755</td>
								<td>488</td>
								<td>16</td>
								<td>39</td>
							</tr>
							<tr>
								<td>2016/7/13</td>
								<td>747</td>
								<td>482</td>
								<td>15</td>
								<td>38</td>
							</tr>
							<tr>
								<td>2016/6/29</td>
								<td>773</td>
								<td>482</td>
								<td>14</td>
								<td>37</td>
							</tr>
							<tr>
								<td>2016/6/15</td>
								<td>752</td>
								<td>488</td>
								<td>13</td>
								<td>36</td>
							</tr>
							<tr>
								<td>2016/6/1</td>
								<td>762</td>
								<td>483</td>
								<td>12</td>
								<td>35</td>
							</tr>
							<tr>
								<td>2016/5/18</td>
								<td>763</td>
								<td>484</td>
								<td>11</td>
								<td>34</td>
							</tr>
							<tr>
								<td>2016/5/6</td>
								<td>799</td>
								<td>534</td>
								<td>10</td>
								<td>33</td>
							</tr>
							<tr>
								<td>2016/4/20</td>
								<td>1018</td>
								<td>468</td>
								<td>9</td>
								<td>32</td>
							</tr>
							<tr>
								<td>2016/4/6</td>
								<td>954</td>
								<td>470</td>
								<td>8</td>
								<td>31</td>
							</tr>
							<tr>
								<td>2016/3/23</td>
								<td>1014</td>
								<td>470</td>
								<td>7</td>
								<td>30</td>
							</tr>
							<tr>
								<td>2016/3/9</td>
								<td>1013</td>
								<td>473</td>
								<td>6</td>
								<td>29</td>
							</tr>
							<tr>
								<td>2016/2/24</td>
								<td>1484</td>
								<td>453</td>
								<td>5</td>
								<td>28</td>
							</tr>
							<tr>
								<td>2016/2/10</td>
								<td>1505</td>
								<td>459</td>
								<td>4</td>
								<td>27</td>
							</tr>
							<tr>
								<td>2016/1/27</td>
								<td>1468</td>
								<td>457</td>
								<td>3</td>
								<td>26</td>
							</tr>
							<tr>
								<td>2016/1/13</td>
								<td>1518</td>
								<td>453</td>
								<td>2</td>
								<td>25</td>
							</tr>
							<tr>
								<td>2016/1/6</td>
								<td>1463</td>
								<td>461</td>
								<td>1</td>
								<td>24</td>
							</tr>
							<tr>
								<td>2015/12/18</td>
								<td>1503</td>
								<td>460</td>
								<td>23</td>
								<td>23</td>
							</tr>
							<tr>
								<td>2015/12/4</td>
								<td>1451</td>
								<td>461</td>
								<td>22</td>
								<td>22</td>
							</tr>
							<tr>
								<td>2015/11/27</td>
								<td>1559</td>
								<td>472</td>
								<td>21</td>
								<td>21</td>
							</tr>
							<tr>
								<td>2015/11/13</td>
								<td>1506</td>
								<td>484</td>
								<td>20</td>
								<td>20</td>
							</tr>
							<tr>
								<td>2015/10/23</td>
								<td>1502</td>
								<td>489</td>
								<td>19</td>
								<td>19</td>
							</tr>
							<tr>
								<td>2015/10/2</td>
								<td>1530</td>
								<td>450</td>
								<td>18</td>
								<td>18</td>
							</tr>
							<tr>
								<td>2015/9/18</td>
								<td>1545</td>
								<td>450</td>
								<td>17</td>
								<td>17</td>
							</tr>
							<tr>
								<td>2015/9/8</td>
								<td>1517</td>
								<td>459</td>
								<td>16</td>
								<td>16</td>
							</tr>
							<tr>
								<td>2015/8/21</td>
								<td>1523</td>
								<td>456</td>
								<td>15</td>
								<td>15</td>
							</tr>
							<tr>
								<td>2015/8/7</td>
								<td>1402</td>
								<td>471</td>
								<td>14</td>
								<td>14</td>
							</tr>
							<tr>
								<td>2015/7/17</td>
								<td>1581</td>
								<td>451</td>
								<td>13</td>
								<td>13</td>
							</tr>
							<tr>
								<td>2015/7/10</td>
								<td>1516</td>
								<td>463</td>
								<td>12</td>
								<td>12</td>
							</tr>
							<tr>
								<td>2015/6/26</td>
								<td>1575</td>
								<td>469</td>
								<td>11</td>
								<td>11</td>
							</tr>
							<tr>
								<td>2015/6/12</td>
								<td>1501</td>
								<td>482</td>
								<td>10</td>
								<td>10</td>
							</tr>
							<tr>
								<td>2015/5/22</td>
								<td>1361</td>
								<td>755</td>
								<td>9</td>
								<td>9</td>
							</tr>
							<tr>
								<td>2015/4/17</td>
								<td>715</td>
								<td>453</td>
								<td>8</td>
								<td>8</td>
							</tr>
							<tr>
								<td>2015/4/10</td>
								<td>925</td>
								<td>469</td>
								<td>7</td>
								<td>7</td>
							</tr>
							<tr>
								<td>2015/3/27</td>
								<td>1637</td>
								<td>453</td>
								<td>6</td>
								<td>6</td>
							</tr>
							<tr>
								<td>2015/3/20</td>
								<td>1620</td>
								<td>481</td>
								<td>5</td>
								<td>5</td>
							</tr>
							<tr>
								<td>2015/2/27</td>
								<td>1187</td>
								<td>735</td>
								<td>4</td>
								<td>4</td>
							</tr>
							<tr>
								<td>2015/2/20</td>
								<td>849</td>
								<td>808</td>
								<td>3</td>
								<td>3</td>
							</tr>
							<tr>
								<td>2015/2/7</td>
								<td>779</td>
								<td>818</td>
								<td>2</td>
								<td>2</td>
							</tr>
							<tr>
								<td>2015/1/31</td>
								<td>779</td>
								<td>886</td>
								<td>1</td>
								<td>1</td>
							</tr>
							<tr>
								<td>累计人数:</td>
								<td>130871</td>
								<td></td>
								<td>最低分数:</td>
								<td>413</td>
							</tr>
						</tbody>
					</table> -->
						
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
	// 获取到这个DOM节点，然后初始化

	var myChart = echarts.init(document.getElementById("charts"));
	
	option1 = {
		    title: {
		        text: ''
		    },
		    tooltip: {
		        trigger: 'axis'
		    },
		    legend: {
		        data:['EE分数','EE人数']
		    },
		    grid: {
		        left: '3%',
		        right: '4%',
		        bottom: '3%',
		        containLabel: true
		    },
		    toolbox: {
		        feature: {
		            saveAsImage: {}
		        }
		    },
		    xAxis: {
		        type: 'category',
		        boundaryGap: false,
		        data: ['	2015/1/31','2015/2/7	','2015/2/20','2015/2/27','2015/3/20','2015/3/27','2015/4/10',
		        		   '2015/4/17','2015/5/22','2015/6/12','2015/6/26','2015/7/10	','2015/7/17','2015/8/7',
		        		   '2015/8/21','2015/9/8','2015/9/18','2015/10/2','2015/10/23','2015/11/13','2015/11/27',
		        		   '2015/12/4','2015/12/18','2016/1/6','2016/1/13','2016/1/27	','2016/2/10','2016/2/24',
		        		   '2016/3/9','2016/3/23','2016/4/6','2016/4/20','2016/5/6','	2016/5/18','2016/6/1',
		        		   '2016/6/15','2016/6/29','2016/7/13','2016/7/27','2016/8/10','2016/8/24','2016/9/7',
		        		   '2016/9/21','2016/10/12','2016/10/19','2016/11/2','2016/11/16','2016/11/30','2016/12/16',
		        		   '	2016/12/22','2017/1/4','2017/1/11','2017/1/25','2017/2/8','2017/2/22','2017/3/1',
		        		   '	2017/3/24','	2017/4/5','2017/4/12','2017/4/19','2017/5/4','2017/5/17','2017/5/31',
		        		   '	2017/6/28','	2017/7/12','2017/8/2','2017/8/9','2017/8/23','2017/9/6']
		    },
		    yAxis: {
		        type: 'value'
		    },
		    series: [
		        {
		            name:'EE人数',
		            type:'line',
		            stack: '总量',
		            data:[779,779,849,1187,1620,1637,925,715,1361,1501,1575,1516,1581,1402,1535,1517,1545,
		            		  1530,1502,1506,1559,1451,1503,1463,1518,1468,1505,1484,1013,1014,954,1018,799,
		            		  763,762,752,773,747,755,754,750,1000,1288,1518,1804,2080,2427,559,1936,2878,2902,
		            		  3334,3508,3664,3611,3884,3749,3753,3923,3665,3796,3687,3877,3409,3202,3264,2991,3035,2772]
		        },
		        {
		            name:'EE分数',
		            type:'line',
		            stack: '总量',
		            data:[886,818,808,735,481,453,469,453,755,482,469,463,451,471,456,459,450,450,489,484,472,461,
		            		  460,461,453,457,459,453,473,470,470,468,534,484,483,488,482,482,488,490,538,491,483,484,
		            		  475,472,470,786,497,475,468,459,453,447,441,434,441,431,423,415,423,415,413,449,440,441,433,434,435]
		        }
		    ]
		};
	
	
	myChart.setOption(option1);
	
	
	function loadEcharts(){
		var chartsCopy = echarts.init(document.getElementById("chartsCopy"));
		option = {
			    title: {
			        text: ''
			    },
			    tooltip: {
			        trigger: 'axis'
			    },
			    legend: {
			        data:['EE分数','EE人数']
			    },
			    grid: {
			        left: '3%',
			        right: '4%',
			        bottom: '3%',
			        containLabel: true
			    },
			    toolbox: {
			        feature: {
			            saveAsImage: {}
			        }
			    },
			    xAxis: {
			        type: 'category',
			        boundaryGap: false,
			        data: ['	2015/1/31','2015/2/7	','2015/2/20','2015/2/27','2015/3/20','2015/3/27','2015/4/10',
			        		   '2015/4/17','2015/5/22','2015/6/12','2015/6/26','2015/7/10	','2015/7/17','2015/8/7',
			        		   '2015/8/21','2015/9/8','2015/9/18','2015/10/2','2015/10/23','2015/11/13','2015/11/27',
			        		   '2015/12/4','2015/12/18','2016/1/6','2016/1/13','2016/1/27	','2016/2/10','2016/2/24',
			        		   '2016/3/9','2016/3/23','2016/4/6','2016/4/20','2016/5/6','	2016/5/18','2016/6/1',
			        		   '2016/6/15','2016/6/29','2016/7/13','2016/7/27','2016/8/10','2016/8/24','2016/9/7',
			        		   '2016/9/21','2016/10/12','2016/10/19','2016/11/2','2016/11/16','2016/11/30','2016/12/16',
			        		   '	2016/12/22','2017/1/4','2017/1/11','2017/1/25','2017/2/8','2017/2/22','2017/3/1',
			        		   '	2017/3/24','	2017/4/5','2017/4/12','2017/4/19','2017/5/4','2017/5/17','2017/5/31',
			        		   '	2017/6/28','	2017/7/12','2017/8/2','2017/8/9','2017/8/23','2017/9/6']
			    },
			    yAxis: {
			        type: 'value'
			    },
			    series: [
			        {
			            name:'EE人数',
			            type:'line',
			            stack: '总量',
			            data:[779,779,849,1187,1620,1637,925,715,1361,1501,1575,1516,1581,1402,1535,1517,1545,
			            		  1530,1502,1506,1559,1451,1503,1463,1518,1468,1505,1484,1013,1014,954,1018,799,
			            		  763,762,752,773,747,755,754,750,1000,1288,1518,1804,2080,2427,559,1936,2878,2902,
			            		  3334,3508,3664,3611,3884,3749,3753,3923,3665,3796,3687,3877,3409,3202,3264,2991,3035,2772]
			        },
			        {
			            name:'EE分数',
			            type:'line',
			            stack: '总量',
			            data:[886,818,808,735,481,453,469,453,755,482,469,463,451,471,456,459,450,450,489,484,472,461,
			            		  460,461,453,457,459,453,473,470,470,468,534,484,483,488,482,482,488,490,538,491,483,484,
			            		  475,472,470,786,497,475,468,459,453,447,441,434,441,431,423,415,423,415,413,449,440,441,433,434,435]
			        }
			    ]
			};
		chartsCopy.resize()
		chartsCopy.setOption(option);
	}
	//显示更多start
	function showMore() {
		if ($("#more").text() == "更多详情") {
			$("#desc")
					.text(
							"加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内居住地限制，目前采用EE快速通道筛选系统，审理快速，周期最快8个月登陆加拿大。本项目具有办理周期短，对语言等条件要求高等特点；适合学历高，年龄轻，英语好的申请人。");
			$("#more").text("收起");
		} else {
			$("#desc")
					.text(
							"加拿大联邦技术移民名额充沛，无职业限制，一人成功，全家均可同时获得加拿大永久居民身份。获得永居后无工作要求，无加拿大境内......");
			$("#more").text("更多详情");
		}
	}
	//显示更多end
</script>
</html>