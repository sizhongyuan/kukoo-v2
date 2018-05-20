<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
#lottery{
	margin:0px auto 0;
	<%-- background:url(<%=basePath %>img/luckdraw/bg-img.png) no-repeat; --%>
	padding:50px 55px;
	-webkit-background-size:cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
#lottery table{
	margin:0px auto 0; 
	padding:50px 55px;
	-webkit-background-size:cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
#lottery table td{text-align:center;vertical-align:middle;font-size:24px;color:#333;font-index:-999;}
#lottery table td a{display:block;text-decoration:none;}
#lottery table td.active{
	<%-- background:url(<%=basePath %>img/luckdraw/bg-roll.jpg) no-repeat; --%>
	position:absolute;
   /*  top:0%;
    center:0% ;*/
    width:15%;
    height:0%; 
}
</style>
<body>
<div id="lottery" style="margin-top: -50px;">
	<table cellpadding="0" cellspacing="0" style="border:8px solid #555;">
		${lotterys.lotterysTr}
		
		<%-- <tr>
			<td class="lottery-unit lottery-unit-0"><img src="<%=basePath %>img/luckdraw/1.png"></td>
			<td class="lottery-unit lottery-unit-1"><img src="<%=basePath %>img/luckdraw/2.png"></td>
			<td class="lottery-unit lottery-unit-2"><img src="<%=basePath %>img/luckdraw/4.png"></td>
            <td class="lottery-unit lottery-unit-3"><img src="<%=basePath %>img/luckdraw/3.png"></td>
		</tr>
		<tr>
			<td class="lottery-unit lottery-unit-11"><img src="<%=basePath %>img/luckdraw/7.png"></td>
			<td colspan="2" rowspan="2"><a style="width:100%;height:150px;overflow: hidden" href="#"></a></td>
			<td class="lottery-unit lottery-unit-4"><img src="<%=basePath %>img/luckdraw/5.png"></td>
		</tr>
		<tr>
			<td class="lottery-unit lottery-unit-10"><img src="<%=basePath %>img/luckdraw/1.png"></td>
			<td class="lottery-unit lottery-unit-5"><img src="<%=basePath %>img/luckdraw/6.png"></td>
		</tr>
        <tr>
			<td class="lottery-unit lottery-unit-9"><img src="<%=basePath %>img/luckdraw/3.png"></td>
			<td class="lottery-unit lottery-unit-8"><img src="<%=basePath %>img/luckdraw/6.png"></td>
			<td class="lottery-unit lottery-unit-7"><img src="<%=basePath %>img/luckdraw/8.png"></td>
            <td class="lottery-unit lottery-unit-6"><img src="<%=basePath %>img/luckdraw/7.png"></td>
		</tr> --%>
	</table>
</div>
<div class="modal fade" id="Win_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<!-- <div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					中奖啦
				</h4>
			</div> -->
			<div class="modal-body">
				<div id='info'>
				   <a href=""><img src="<%=basePath %>img/luckdraw/tk_img.png"></a>
				</div>
			</div>
			<!-- <div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">
					提交更改
				</button>
			</div> -->
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<div class="modal fade" id="Mes_Modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					提示
				</h4>
			</div>
			<div id="mes_body" class="modal-body" style="font-size: 18px;text-align: center;">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script type="text/javascript">
var wINDEX=-1;

var lottery={
	index:-1,	//当前转动到哪个位置，起点位置
	count:0,	//总共有多少个位置
	timer:0,	//setTimeout的ID，用clearTimeout清除
	speed:20,	//初始转动速度
	times:0,	//转动次数
	cycle:50,	//转动基本次数：即至少需要转动多少次再进入抽奖环节
	prize:-1,	//中奖位置
	winIndex:wINDEX,
	init:function(id){
		if ($("#"+id).find(".lottery-unit").length>0) {
			$lottery = $("#"+id);
			$units = $lottery.find(".lottery-unit");
			this.obj = $lottery;
			this.count = $units.length;
			$lottery.find(".lottery-unit-"+this.index).addClass("active");
		};
		lottery.winIndex=wINDEX;
	},
	roll:function(){
		var index = this.index;
		var count = this.count;
		var lottery = this.obj;
		$(lottery).find(".lottery-unit-"+index).removeClass("active");
		index += 1;
		if (index>count-1) {
			index = 0;
		};
		$(lottery).find(".lottery-unit-"+index).addClass("active");
		this.index=index;
		return false;
	},
	stop:function(index){
		this.prize=index;
		return false;
	}
};

function roll(){
	lottery.times += 1;
	lottery.roll();
	if (lottery.times > lottery.cycle+10 && lottery.prize==lottery.index) {
		console.log(lottery.prize+"=="+lottery.index);
		clearTimeout(lottery.timer);
		lottery.prize=-1;
		lottery.times=0;
		click=false;
		$('#Win_Modal').modal({
			keyboard: true
		});
		var url = "/kukoo/luck/winLottery/"+lottery.index+"/${lotterys.lotterysId}/${lotterys.lotterysUserId}";
		$.ajax({ 
			type: 'POST',
			url: url,
			success: function(result){
				//alert("mes="+result.mes);
				//alert("data="+result.data.name+"=="+result.data.lno);
				if(result.mes=="success"){
					console.log(result.data);
				}
			}
		});
		
	}else{
		if (lottery.times<lottery.cycle) {
			lottery.speed -= 10;
		}else if(lottery.times==lottery.cycle) {
			//var index = Math.random()*(lottery.count)|0;
			var index = lottery.winIndex;
			lottery.prize = index;		
		}else{
			if (lottery.times > lottery.cycle+10 && ((lottery.prize==0 && lottery.index==7) || lottery.prize==lottery.index+1)) {
				lottery.speed += 110;
			}else{
				lottery.speed += 20;
			}
		}
		if (lottery.speed<40) {
			lottery.speed=40;
		};
		//console.log(lottery.times+'^^^^^^'+lottery.speed+'^^^^^^^'+lottery.prize);
		lottery.timer = setTimeout(roll,lottery.speed);
	}
	return false;
}

var click=false;

window.onload=function(){
	var winUrl = "${lotterys.lotteryUrl}";
	$.ajax({ 
		type: 'GET',
		url: winUrl,
		success: function(result){
			//alert("mes="+result.mes);
			//alert("data="+result.data.name+"=="+result.data.lno);
			if(result.mes=="success"){
				wINDEX=result.data.lno;
				lottery.winIndex=wINDEX;
			}else{
				//alert(result.mes);
				$("#mes_body").html(result.mes);
				$('#Mes_Modal').modal({
					keyboard: true
				})
			}
			
		}
	});
	lottery.init('lottery');
	$("#lottery a").one("click",function(){
		if (click) {
			return false;
		}else{
			lottery.speed=100;
			roll();
			click=true;
			return false;
		} 
	});
};
</script>
</body>
</html>