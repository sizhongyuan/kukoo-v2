<!-- 注册页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html>
<link rel="stylesheet" href="<%=basePath %>css/user/user.css" />
<br/>
<br/>
<br/>

<div class="container" id="regist">
	    <div class="row" >
	        <div class="col-md-offset-3 col-md-6">
	            <form id="registForm" class="form-horizontal" action="<%=basePath %>user/signUp" method="post">
	            	<span class="heading">用户注册</span>
	            		<div class="form-group" id="mobileDiv">
	                		<label for="phone" class="col-sm-2 control-label">手机号:</label>
	                		<div class="col-sm-10">
	                			<input type="mobile" class="form-control" id="mobile" name="mobile" placeholder="手机号">
	                    		<i class="fa fa-user"></i>
	                		</div>
	                    <div class="hidden text-center" id="mobileMsg"><span id="mobileSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
	                </div>
	                <div class="form-group" id="captchaDiv">
	                		<label for="phone" class="col-sm-2 control-label">验证码:</label>
	                		<div class="col-sm-5">
	                			<input type="text" class="form-control" id="regist_captcha" name="regist_captcha" placeholder="验证码">
	                			<i class="fa fa-lock"></i>
	                    		<a href="#" class="fa fa-question-circle"></a>
	                		</div>
	                		<div class="col-sm-5">
	                			<button type="button" id="regist_captcha_btn" class="btn btn-default btn-block">获取验证码</button>
	                		</div>
	                    <div class="hidden text-center" id="captchaMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>验证码错误</div>
	                </div>
	                <div class="form-group">
	                		<button type="button" id="btn_regist" class="btn btn-default btn-block">立即注册</button>
	                </div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<div class="checkbox">
								<label>
									<input id="alreadyRead" type="checkbox">我已阅读并接受<a href="#">注册条款</a>
								</label>
							</div>
							<div class="hidden text-center" id="checkMsg"><span id="checkSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
						</div>
					</div>
	            </form>
	        </div>
	    </div>
	</div> 
	<div class="container hidden" id="success">
		<div class="row" >
	        <div class="col-md-offset-3 col-md-6">
	        		<h1 class="text-center">注册成功</h1>
	        		<h5 class="text-center"><span id="successText">页面在5秒后跳转</span><a id="clickMe" href="#">点我跳转</a></h5>
	        </div>
	    </div>
	</div>
	<!-- 注册 start-->
	<!-- <div class="container" id="regist">
	    <div class="row" >
	        <div class="col-md-offset-3 col-md-6">
	            <form id="registForm" class="form-horizontal" action="/kukoo/user/signUp" method="post">
	            	<span class="heading">用户注册</span>
	            		<div class="form-group">
		            		<label for="phone" class="col-sm-3 control-label">手机号:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="mobile" name="mobile" placeholder="手机号">
		                </div>
		                <div class="hidden text-center" id="mobileMsg"><span id="mobileSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
	                <div class="form-group">
		            		<label for="password" class="col-sm-3 control-label">密码:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="password" name="password" placeholder="密码">
		                </div>
		                <div class="hidden text-center" id="pwdMsg"><span id="pwdSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
		             <div class="form-group">
		            		<label for="conpsw" class="col-sm-3 control-label">再输一次:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="conpsw" disabled placeholder="密码">
		                </div>
		                <div class="hidden text-center" id="pwdAgMsg"><span id="pwdAgSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
		             <div class="form-group">
		            		<label for="userName" class="col-sm-3 control-label">用户名:</label>
		                <div class="col-sm-8">
		                    <input type="text" class="form-control" id="userName" name="userName" placeholder="用户名">
		                </div>
		                <div class="hidden text-center" id="userNameMsg"><span id="userNameSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
		             </div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-8">
							<div class="checkbox">
								<label>
									<input id="alreadyRead" type="checkbox">我已阅读并接受<a href="#">注册条款</a>
								</label>
							</div>
							<div class="hidden text-center" id="checkMsg"><span id="checkSpan" class="glyphicon glyphicon-exclamation-sign"></span></div>
						</div>
					</div>
	                <div class="form-group">
	                		<button type="button" id="btn_regist" class="btn btn-default">立即注册</button>
	                </div>
	            </form>
	        </div>
	    </div>
	</div> -->
	<!-- 注册 end-->
	<script>  
		/* 校验手机号有效性 start*/
		function validateMobile(mobile){
			/* 验证130-139,150-159,170-179,180-189号码段的手机号码 */
			var mobileReg = /^(((13[0-9]{1})|(15[0-9]{1})|17[0-9]{1}|(18[0-9]{1}))+\d{8})$/;
			return mobileReg.test(mobile);
		}
		/* 校验手机号有效性 end*/
		/* 获取验证码事件 start*/
		var clock = '';
		var nums = 60;
		var btn;
		var regist_captcha = "";
		$("#regist_captcha_btn").click(function(){
			 var mobile = $("#mobile").val();
			 if(mobile == ""){
				 $("#mobileSpan").text("请填写手机号");
				 $("#mobileMsg").removeClass("hidden");
				 return false;
			 }else if(!validateMobile(mobile)){
				 $("#mobileSpan").text("手机号格式不正确");
				 $("#mobileMsg").removeClass("hidden");
				 return false;
			 }else{
				 $("#mobileMsg").addClass("hidden");
			 }
			 btn = $("#regist_captcha_btn");
			 btn.prop("disabled",true); //将按钮置为不可点击
			 btn.text(""+nums+"秒后可重新获取");
			 clock = setInterval(doLoop,1000);
			 /* 短信接口信息 */
			/* 获取6位随机数 */
			 for (var i = 0; i < 6; i++) {
				 var rand = Math.floor(Math.random()*10);
				 regist_captcha += rand;
			}
			 var name = "18610278353";
			 var pwd = "7C02AE4E996C9F4C51EF9B647FB7";
			 var content = "【比特】 手机验证码:"+regist_captcha+"，请输入此号码，如果非本人操作请忽略。"
			 var stime = "";
			 var sign = "";
			 var type = "pt";
			 var extno = "";
			 var url = "http://web.duanxinwang.cc/asmx/smsservice.aspx?action=send&name="+name+"&pwd="+pwd+"&content="+content+"&mobile="+mobile+"&stime="+stime+"&sign="+sign+"&type="+type+"&extno="+extno+"";
			 /* 发送验证码请求 */
			 $.post(url,function(e){
				 
			 });
		});
		/* 获取验证码事件 end*/
		/* 定时器方法 start*/
		function doLoop(){
			 nums--;
			 if(nums > 0){
				 btn.text(""+nums+"秒后可重新获取");
			 }else{
				  clearInterval(clock); //清除js定时器
				  btn.prop("disabled",false);
				  btn.text("点击发送验证码");
				  nums = 60; //重置时间
				  regist_captcha = "";//重置验证码
			 }
		}
		/* 定时器方法 end*/
		/*注册按钮事件 start*/
		$("#btn_regist").click(function(){
			/* 手机号 */
			if($("#mobileMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#mobile").val() == ""){
				$("#mobileSpan").text("请填写手机号");
				$("#mobileMsg").removeClass("hidden");
				return false;
			}else if(!validateMobile($("#mobile").val())){
				$("#mobileSpan").text("手机号格式不正确");
				 $("#mobileMsg").removeClass("hidden");
				 return false;
			}else{
				$("#mobileMsg").addClass("hidden");
			}
			/* 验证码 */
			var captchaVal = $("#regist_captcha").val();
	   		 if(captchaVal == "" || captchaVal == undefined){
	   			 $("#captchaMsg").text("请填写验证码");
	   			 $("#captchaMsg").removeClass("hidden");
	   			 return false;
	   		 }else{
	   			 if(nums>0 && nums<60 && captchaVal==regist_captcha){
	   				 $("#captchaMsg").addClass("hidden");
	       		 }else{
	       			 $("#captchaMsg").removeClass("hidden");
	       			 $("#captchaMsg").text("验证码错误");
	       			 return false;
	       		 }
	   		 }
			/* 密码 */
			/* if($("#pwdMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#password").val() == ""){
				$("#pwdSpan").text("请填写手机号");
				$("#pwdMsg").removeClass("hidden");
				return false;
			}else{
				$("#pwdMsg").addClass("hidden");
			} */
			/* 再次密码 */
			/* if($("#pwdAgMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#password").val() == ""){
				$("#pwdAgSpan").text("请填写手机号");
				$("#pwdAgMsg").removeClass("hidden");
				return false;
			}else{
				$("#pwdAgMsg").addClass("hidden");
			} */
			/* 用户名 */
			/* if($("#userNameMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#userName").val() == ""){
				$("#userNameSpan").text("请填写手机号");
				$("#userNameMsg").removeClass("hidden");
				return false;
			}else{
				$("#userNameMsg").addClass("hidden");
			} */
			/* 我已阅读条款 */
			if($("#checkMsg").hasClass("hidden") == false){
				return false;
			}
			if($("#alreadyRead").prop("checked") == false){
				$("#checkSpan").text("请勾选");
				$("#checkMsg").removeClass("hidden");
				return false;
			}else{
				$("#checkMsg").addClass("hidden");
			}
			/* 提交注册 */
			$("#registForm").ajaxSubmit(function (data) {
				$("#regist").addClass("hidden");
				$("#success").removeClass("hidden");
				console.log("adas");
				var sec = 5;
				setInterval(function(){
					sec--;
					if(sec>0){
						$("#successText").text("页面在"+sec+"秒后跳转");
					}else{
						parent.changeframsrc("/kukoo/user/showSignIn");
					}
				},1000);
        		});
		})
		/*注册按钮事件 end*/
		/* 点我跳转事件 start */
		$("#clickMe").click(function(){
			parent.changeframsrc("/kukoo/user/showSignIn");
		})
		/* 点我跳转事件 end */
		/* 手机号是否注册校验 start*/
      	$("#mobile").change(function(){
      		var checkObject = new Object();
      		checkObject.mobile = $("#mobile").val();
      		var checkJson = JSON.stringify(checkObject); 
      		var url = "/kukoo/user/validateSignUp";
      		$.post(url,
      			  {"checkObj":checkJson},
      			  function(e){
      				  e=JSON.parse(e);
      				  if(e.mobileInUse){
      					  $("#mobileSpan").text("手机号已经注册");
      					  $("#mobileMsg").removeClass("hidden");
      					  
      				  }else{
      					  $("#mobileMsg").addClass("hidden");
      				  }
      			  });
      	});
		
		/* 手机号是否注册校验 end*/
		/* 密码框事件 start*/
		/* $("#password").change(function(){
			var password = $("#password").val();
			if(password.length < 8){
				$("#pwdMsg").removeClass("hidden");
				$("#pwdSpan").text("密码至少为8位");
			}else{
				$("#pwdMsg").addClass("hidden");
				$("#conpsw").prop("disabled",false);
			}
		}); */
		/* 密码框事件 end*/
		/* 校验两次密码是否一样 start*/
		/* $("#conpsw").change(function(){
			var password = $("#password").val();
			var conpsw = $("#conpsw").val();
			if(password !== conpsw){
				$("#pwdAgMsg").removeClass("hidden");
				$("#pwdAgSpan").text("两次密码输入不一致");
			}else{
				$("#pwdAgMsg").addClass("hidden");
			}
		}); */
		/* 校验两次密码是否一样 end*/
        </script>  
</html>
