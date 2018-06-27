<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html lang="zh-CN">
<script src="http://res.wx.qq.com/open/js/jweixin-1.2.0.js"></script>
<script>
	/* var url = location.href.split('#')[0];
	
	wx.config({
	debug: true,
	appId: 'wxa7e5e00c55178c8a',
	timestamp: "${wx.timestamp}",
	nonceStr: "${wx.noncestr}",
	signature: "${wx.signature}",
	jsApiList: [
	// 所有要调用的 API 都要加到这个列表中
	'checkJsApi',
	'onMenuShareTimeline',
	'onMenuShareAppMessage',
	]
	});
	
	wx.ready(function () {
	// 在这里调用 API
	wx.onMenuShareTimeline({
	title: '答题分享', // 分享标题
	link: url, // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
	imgUrl: 'xxxxxxxxxxxxxx', // 分享图标
	success: function () {
	// 用户确认分享后执行的回调函数
	},
	cancel: function () {
	// 用户取消分享后执行的回调函数
	}
	});
	wx.onMenuShareAppMessage({
	title: '1234567', // 分享标题
	desc: 'xxxxxx3456789xxxxx', // 分享描述
	link: 'http://www.kukoovisa.com', // 分享链接，该链接域名或路径必须与当前页面对应的公众号JS安全域名一致
	imgUrl: 'wechat.png', // 分享图标
	type: '', // 分享类型,music、video或link，不填默认为link
	dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
	success: function () {
	// 用户确认分享后执行的回调函数
	},
	cancel: function () {
	// 用户取消分享后执行的回调函数
	}
	});
	}); */
	
	
	
	$(document).ready(function () {
    //通过ajax，在页面加载的时候获取微信分享接口signature，nonceStr，timestamp 和appId
    $.ajax({
        type: "post",
        url: "/kukoo/shareController/share",
        dataType: "json",
        data:{shareUrl:"http://www.kukoovisa.com/"},
        success: function (data) {
        console.log(data.appId);
        console.log(data.timestamp);
        console.log(data.nonceStr);
        console.log(data.signature);
        console.log(data.shareUrl);
            wx.config({
                debug: true,
                appId: data.appId,
                timestamp: data.timestamp,
                nonceStr: data.nonceStr,
                signature: data.signature,
                jsApiList: ['onMenuShareAppMessage',
							'onMenuShareTimeline']
                // 功能列表，我们要使用JS-SDK的什么功能
            });
            wx.ready(function () {
                // 获取“分享给朋友”按钮点击状态及自定义分享内容接口
                wx.onMenuShareAppMessage({
                    title: "分享自定义标题", // 分享标题
                    desc: "分享自定义描述", // 分享描述
                    link: data.shareUrl,//分享点击之后的链接
                    imgUrl:'wechat.png', // 分享图标
                    type: 'link', // 分享类型,music、video或link，不填默认为link
                    success: function () {
                        //成功之后的回调
                        alert("分享成功");
                    }
                });
                wx.onMenuShareTimeline({
                    title: "分享自定义标题", // 分享标题
                    desc: "分享自定义描述", // 分享描述
                    link: data.shareUrl,//分享点击之后的链接
                    imgUrl:'wechat.png', // 分享图标
                    type: 'link', // 分享类型,music、video或link，不填默认为link
                    success: function () {
                        //成功之后的回调
                        alert("分享成功");
                    },
                    cancel: function () {
                        // 用户取消分享后执行的回调函数
                        alert("分享失败");
                    }
                });
            });
            wx.error(function (res) {
            	//console.log(res);
            	//alert(res);
                //打印错误消息。及把 debug:false,设置为debug:ture就可以直接在网页上看到弹出的错误提示
            });
        }
    })
});
	</script>

<style>
        table,table tr th, table tr td { border:1px solid #0094ff; }
</style>
<head>
<title>布谷移民——移民解决方案专家</title>
</head>

<body>
	 微信分享开发  
      <img   
        style="width:32px; height:35px; cursor:pointer"   
        alt=""   
        src="wechat.png"> 
	<!-- <button id="" onclick="tijiao()">提交</button>
	<button id="aaa" onclick="zhuanye()">获取专业</button>
	<table border="2">
		<tr>
			<td>输入参数</td>
			<td><textarea id="jianyikuang" style="width:900px;height:200px;"></textarea></td>
		</tr>
		<tr>
			<td>返回参数</td>
			<td><textarea id="fanhuikuang" style="width:900px;height:200px;"></textarea></td>
		</tr>
	</table> -->
  	<!-- <table>
  	<tr>
  	<td></td>
  	<td>主</td>
  	<td>副</td>
  	</tr>
  	<tr>
  	<td>年龄</td>
  	<td><input type="text" id="nianlingzhu"></td>
  	<td><input type="text" id="nianlingfu" ></td>
  	</tr>
  	<tr>
  	<td>子女</td>
  	<td>12岁以下子女<input type="text" id="zinv12"></td>
  	<td>13-21岁子女<input type="text" id="zinv13" ></td>
  	</tr>
  	<tr>
  	<td>学历状况</td>
  	<td><select id="xuelizhu">
		  <option value ="博士">博士</option>
		  <option value ="硕士">硕士</option>
		  <option value="双学历">双学历</option>
		  <option value="本科（4年制）">本科（4年制）</option>
		  <option value="本科（3年制）">本科（3年制）</option>
		  <option value="本科（2年制）">本科（2年制）</option>
		  <option value="本科（1年制）">本科（1年制）</option>
		  <option value="专科（文科）">专科（文科）</option>
		  <option value="专科（理科）">专科（理科）</option>
		  <option value="普通高中">普通高中</option>
		  <option value="职业高中">职业高中</option>
		  <option value="初中及以下">初中及以下</option>
		</select>
	</td>
  	<td><select id="xuelifu">
		  <option value ="博士">博士</option>
		  <option value ="硕士">硕士</option>
		  <option value="双学历">双学历</option>
		  <option value="本科（4年制）">本科（4年制）</option>
		  <option value="本科（3年制）">本科（3年制）</option>
		  <option value="本科（2年制）">本科（2年制）</option>
		  <option value="本科（1年制）">本科（1年制）</option>
		  <option value="专科（文科）">专科（文科）</option>
		  <option value="专科（理科）">专科（理科）</option>
		  <option value="普通高中">普通高中</option>
		  <option value="职业高中">职业高中</option>
		  <option value="初中及以下">初中及以下</option>
		</select>
	</td>
  	</tr>
  	<tr>
  	<td>工作类型</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>制造业工程师、经理类</td>
  	<td><input type="text" id="jinglileizhu"></td>
  	<td><input type="text" id="jingli"></td>
  	</tr>
  	<tr>
  	<td>维修/操作技师、技工类</td>
  	<td><input type="text" id="zinv12"></td>
  	<td><input type="text" id="zinv12"></td>
  	</tr>
  	<tr>
  	<td>农业、园艺类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>企业咨询类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>土地测量类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>医疗、生物类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>幼教类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>地质矿产类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>计算机类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>社会及社区工作</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>土木、建筑类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>大专及职业院校教师</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>法律相关</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>行政助理</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>护士</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>金融财会类</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>其他</td>
  	<td></td>
  	<td></td>
  	</tr>
  	
  	<tr>
  	<td>英语水平</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>听</td>
  	<td><select id="yingyutingzhu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	<td><select id="yingyutingfu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	</tr>
  	<tr>
  	<td>说</td>
  	<td><select id="yingyushuozhu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	<td><select id="yingyushuofu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	</tr>
  	<tr>
  	<td>读</td>
  	<td><select id="yingyuduzhu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	<td><select id="yingyudufu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	</tr>
  	<tr>
  	<td>写</td>
  	<td><select id="yingyuxiezhu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	<td><select id="yingyuxiefu">
  			<option value="0">0</option>
		  <option value ="0.5">0.5</option>
		  <option value ="1">1</option>
		  <option value="1.5">1.5</option>
		  <option value="2">2</option>
		  <option value="2.5">2.5</option>
		  <option value="3">3</option>
		  <option value="3.5">3.5</option>
		  <option value="4">4</option>
		  <option value="4.5">4.5</option>
		  <option value="5">5</option>
		  <option value="5.5">5.5</option>
		  <option value="6">6</option>
		  <option value="6.5">6.5</option>
		  <option value="7">7</option>
		  <option value="7.5">7.5</option>
		  <option value="8">8</option>
		  <option value="8.5">8.5</option>
		  <option value="9">9</option>
		</select></td>
  	</tr>
  	<tr>
  	<td>法语水平</td>
  	<td></td>
  	<td></td>
  	</tr>
  	<tr>
  	<td>听</td>
  	<td><select id="fayutingzhu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	<td><select id="fayutingfu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	</tr>
  	<tr>
  	<td>说</td>
  	<td><select id="fayushuozhu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	<td><select id="fayushuofu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	</tr>
  	<tr>
  	<td>读</td>
  	<td><select id="fayuduzhu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	<td><select id="fayudufu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	</tr>
  	<tr>
  	<td>写</td>
  	<td><select id="fayuxiezhu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	<td><select id="fayuxiefu">
  			<option value="高">高</option>
		  <option value ="中">中</option>
		  <option value ="低">低</option>
		  <option value="入门">入门</option>
		  <option value="不会">不会</option>
		</select></td>
  	</tr>
  	</table> -->
</body>
</html>