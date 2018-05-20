<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<link rel="stylesheet" type="text/css" href="<%=basePath %>css/homepage/homePage.css"/>

<html>
<script type="text/javascript">
	$("document").ready(function() {
		/* 判断session用户是否登录 start*/
		if("${userId}" !== ""){
			$('#userCenter',parent.document).removeClass("hidden");
			$("#signUp",parent.document).addClass("hidden");
			$("#signIn",parent.document).addClass("hidden");
		}
		/* 判断session用户是否登录 end*/
	});
	function mainQuery(){
		var country = $("#country").val().trim();
		var project = $("#project").val().trim();
		//alert("submit"+country+"---"+project);
		window.parent.setiframeSrc(country,project);
	}
</script>
<body>
	<div style="position:relative;">
		<%-- <img class="first-slide" src="<%=basePath %>img/homepage/homePage.jpeg" width="1344" height="613"> --%>
		<img src="<%=basePath %>img/homepage/homePage.jpeg" width="100%" height="100%" >
		<div class="row">
			<div class="input-size">
				<input type="text" class="form-control" style="border-radius:4px 0px 0px 4px;" id="country" placeholder="想移民的国家"/>
			</div>
			<div class="input-size">
				<input type="text" class="form-control" style="border-radius:0px;" id="project" placeholder="感兴趣的项目"/>
			</div>
			<!-- <div class="input-size">
				<input type="text" class="form-control" style="border-radius:0px;" id="inputPassword2" placeholder="其他"/>
			</div> -->
			<div class="button-size">
				<button onclick="mainQuery()" type="button" class="form-control botton-item" id="inputPassword2">
					<img src="<%=basePath %>img/homepage/search.png">搜索
				</button>
			</div>
		</div>
	</div>
</body>
	
</html>