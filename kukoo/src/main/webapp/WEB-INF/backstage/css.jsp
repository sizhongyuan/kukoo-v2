<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
		<!-- styles -->
        <link href="<%=basePath %>backstage/css/bootstrap.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/bootstrap-responsive.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn-responsive.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn-helper.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/stilearn-icon.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/font-awesome.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/animate.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/uniform.default.css" rel="stylesheet" />
		
		<link href="<%=basePath %>backstage/css/datepicker.css" rel="stylesheet"/>
        <link href="<%=basePath %>backstage/css/select2.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/fullcalendar.css" rel="stylesheet" />
        <link href="<%=basePath %>backstage/css/bootstrap-wysihtml5.css" rel="stylesheet" />
		<link href="<%=basePath %>backstage/css/colorpicker.css" rel="stylesheet"/>
		<link href="<%=basePath %>backstage/css/responsive-tables.css" rel="stylesheet"/>
        <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->