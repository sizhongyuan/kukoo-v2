<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>
<html>
<link rel="stylesheet" href="<%=basePath %>css/user/user.css" />
<br/>
<br/>
<br/>
     用户信息:<a id="showDetail" href="#">${userId} </a>
</html>
<script>
	$("#showDetail").click(function(){
		parent.changeframsrc("/kukoo/detail/showDetail");
	});
</script>