<!-- 登录页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html>
<link rel="stylesheet" href="<%=basePath %>css/user/user.css" />
<br/>
<br/>
<br/>
    <!-- 登录 start-->
	<div class="container" id="login">
	    <div class="row" >
	        <div class="col-md-offset-3 col-md-6">
	            <form id="loginForm" class="form-horizontal" action="/kukoo/user/successSignIn" method="post">
	                <span class="heading">用户登录</span>
	                <div class="form-group" id="mobileDiv">
	                		<label for="phone" class="col-sm-2 control-label">手机号:</label>
	                		<div class="col-sm-10">
	                			<input type="mobile" class="form-control" id="mobile" name="mobile" placeholder="手机号">
	                    		<i class="fa fa-user"></i>
	                		</div>
	                    <div class="hidden text-center" id="mobileMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>手机号未注册</div>
	                </div>
	                <div class="form-group" id="captchaDiv">
	                		<label for="phone" class="col-sm-2 control-label">验证码:</label>
	                		<div class="col-sm-5">
	                			<input type="text" class="form-control" id="login_captcha" name="login_captcha" placeholder="验证码">
	                			<i class="fa fa-lock"></i>
	                    		<a href="#" class="fa fa-question-circle"></a>
	                		</div>
	                		<div class="col-sm-5">
	                			<button type="button" id="login_captcha_btn" class="btn btn-default btn-block">获取验证码</button>
	                		</div>
	                    <div class="hidden text-center" id="captchaMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>验证码错误</div>
	                </div>
	                <div class="form-group hidden" id="pwdDiv">
	                		<label for="phone" class="col-sm-2 control-label">密码:</label>
	                		<div class="col-sm-10">
	                			<input type="password" class="form-control" id="password" name="password" placeholder="密码">
	                			<i class="fa fa-lock"></i>
	                    		<a href="#" class="fa fa-question-circle"></a>
	                		</div>
	                    <div class="hidden text-center" id="pwdMsg"><span class="glyphicon glyphicon-exclamation-sign"></span>手机号或密码错误</div>
	                </div>
	                <div class="form-group">
	                    <div class="main-checkbox">
	                        <input type="checkbox" id="rememberCheck" />
	                        <label for="rememberCheck"></label>
	                    </div>
	                    <span class="text">记住密码</span>
	                    <span class="text"><a id="login_type" href="#">密码登录</a></span>
	                    <span class="text pull-right"><a href="#">忘记密码</a></span>
	                </div>
	                <div class="form-group">
	                		<button type="button" id="btn_login" class="btn btn-default btn-block">登录</button>           		
	                </div>
	                <div class="form-group">
	                		<span class="text">还没密码?<a id="clickMeRegist" href="#">点我注册</a></span>
	                </div>
	            </form>
	        </div>
	    </div>
	</div>
	<!-- 登录 end-->
	<script>  
      	/* 初始化页面时验证是否记住了手机号 start*/
        $(document).ready(function() {
            if ($.cookie("rememberCheck") == "true") {
                $("#rememberCheck").prop("checked", true);
                $("#mobile").val($.cookie("mobile"));
            }
        });
        /* 初始化页面时验证是否记住了手机号 end*/
      	/* 保存cookie方法 start*/
        function saveUserInfo() {
            if ($("#rememberCheck").prop("checked") == true) {
                var mobile = $("#mobile").val();
                $.cookie("rememberCheck", "true", { expires: 7 }); // 存储一个带7天期限的 cookie
                $.cookie("mobile", mobile, { expires: 7 }); // 存储一个带7天期限的 cookie
            }
            else {
                $.cookie("rememberCheck", "false", { expires: -1 });        // 删除 cookie
                $.cookie("mobile", '', { expires: -1 });
            }
        }
        /* 保存cookie方法 end*/
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
      					  $("#mobileDiv").addClass("has-error");
      					  $("#mobileMsg").addClass("hidden");
      				  }else{
      					  $("#mobileDiv").removeClass("has-error");
      					  $("#mobileMsg").removeClass("hidden");
      				  }
      			  });
      	});
      	/* 手机号是否注册校验 end*/
      	/* 获取验证码事件 start*/
		var clock = '';
		var nums = 60;
		var btn;
		var login_captcha = "";
		$("#login_captcha_btn").click(function(){
			 btn = $("#login_captcha_btn");
			 btn.prop("disabled",true); //将按钮置为不可点击
			 btn.text(""+nums+"秒后可重新获取");
			 clock = setInterval(doLoop,1000);
			 /* 短信接口信息 */
			/* 获取6位随机数 */
			 for (var i = 0; i < 6; i++) {
				 var rand = Math.ceil(Math.random()*10);
				 rand = (rand == 10)?9:rand;
				 login_captcha += rand;
			}
			 var name = "18610278353";
			 var pwd = "7C02AE4E996C9F4C51EF9B647FB7";
			 var content = "【比特】 手机验证码:"+login_captcha+"，请输入此号码，如果非本人操作请忽略。"
			 var mobile = $("#mobile").val();
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
		/*登录按钮事件 start*/
        $("#btn_login").click(function(){
        	 /* 判断登录方式 */
        	 var loginType = "";
        	 if($("#captchaDiv").hasClass("hidden")){
        		 /* 账号密码登录 */
        		 loginType = "pwd";
        	 }else{
        		 /* 验证码登录 */
        		 loginType = "captcha";
        		 var captchaVal = $("#login_captcha").val();
        		 if(captchaVal == "" || captchaVal == undefined){
        			 $("#captchaMsg").text("请填写验证码");
        			 $("#captchaMsg").removeClass("hidden");
        			 return false;
        		 }else{
        			 if(nums>0 && nums<60 && captchaVal==login_captcha){
        				 $("#captchaMsg").addClass("hidden");
            		 }else{
            			 $("#captchaMsg").removeClass("hidden");
            			 $("#captchaMsg").text("验证码错误");
            			 return false;
            		 }
        		 }
        	 }
        	  var loginObj = new Object();
        	  loginObj.mobile= $("#mobile").val();
        	  loginObj.pwd= $("#password").val();
        	  loginObj.loginType = loginType;
        	  var loginJson = JSON.stringify(loginObj); //将JSON对象转化为JSON字符  
        	  var url = "/kukoo/user/validateSignIn";
        	  $.post(url,
        	      {"loginObj":loginJson},
        	      function(e){
        	        e=JSON.parse(e); //由JSON字符串转换为JSON对象
        	        if(e.accountMsg){
        	          $("#mobileDiv").addClass("has-error");
        	          $("#mobileMsg").removeClass("hidden");
        	          
        	          $("#pwdDiv").removeClass("has-error");
        	          $("#pwdMsg").addClass("hidden");
        	        }else if (e.pwdMsg){
        	          $("#mobileDiv").removeClass("has-error");
        	          $("#mobileMsg").addClass("hidden");
        	          
        	          $("#pwdDiv").addClass("has-error");
        	          $("#pwdMsg").removeClass("hidden");
        	        }else if(e.user){
        	        		$("#loginForm").ajaxSubmit(function (data) {
        	        			$('#userCenter',parent.document).removeClass("hidden");
        	        			$('#userCenter',parent.document).removeClass("active");
        	        			$("#signUp",parent.document).addClass("hidden");
        	        			$("#signIn",parent.document).addClass("hidden");
        	        			parent.changeframsrc("/kukoo/menu/showProjectInfo");
        	        	 		  /* 调用保存cookie方法 */
        	              	  saveUserInfo();
        	            });
        	        }
        	  });
        });
        /*登录按钮事件 end*/
		/*密码登录回车事件 start*/
		$("#password").keydown(function(event){
			if(event.keyCode==13){ 
				/* 调用点击登录事件 */
				$("#btn_login").click(); 
			} 
		});
		/*密码登录回车事件 end*/
		/* 验证码登录回车事件 start*/
		$("#login_captcha").keydown(function(event){
			if(event.keyCode==13){ 
				/* 调用点击登录事件 */
				$("#btn_login").click(); 
			} 
		});
		/* 验证码登录回车事件 end*/
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
				  login_captcha = "";//重置验证码
			 }
		}
		/* 定时器方法 end*/
		/* 登录方式事件 start*/
		$("#login_type").click(function(){
			if($("#login_type").text() == "密码登录"){
				$("#captchaDiv").addClass("hidden",500);
				$("#pwdDiv").removeClass("hidden",500);
				$("#login_type").text("验证码登录");
			}else{
				$("#captchaDiv").removeClass("hidden");
				$("#pwdDiv").addClass("hidden");
				$("#login_type").text("密码登录");
			}
			
		})
		/* 登录方式事件 end*/
		/*点我注册事件 start*/
		$("#clickMeRegist").click(function(){
			parent.changeframsrc("/kukoo/user/showSignUp");
			$("#signUp",parent.document).addClass("active");
			$("#signIn",parent.document).removeClass("active");
		});
		/*点我注册事件 end*/
        </script>  
</html>
