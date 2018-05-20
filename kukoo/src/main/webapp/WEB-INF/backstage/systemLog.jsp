<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <meta charset="utf-8" />
        <title>kukoo后台管理系统</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
    		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    		<jsp:include page="css.jsp"/>
    </head>
	<body>
        <!-- section header -->
        <jsp:include page="Header.jsp"/>

        <!-- section content -->
        <section class="section">
            <div class="row-fluid">
                <!-- span side-left -->
                <jsp:include page="LeftMenu.jsp"/>
                <!-- span side-left -->
                
                <!-- span content -->
                <div class="span11">
                    <!-- content -->
                    <div class="content">
                        <!-- content-header -->
                        <div class="content-header">
                          
                            <h2><i class="icofont-home"></i> 用户日志管理 <small>welcome to Kukoo</small></h2>
                        </div><!-- /content-header -->
                        
                        <!-- content-breadcrumb -->
                        <div class="content-breadcrumb">
                            <!--breadcrumb-nav-->
                            <!--
                            <ul class="breadcrumb-nav pull-right">
                                <li class="divider"></li>
                                <li class="btn-group">
                                    <a href="#" class="btn btn-small btn-link dropdown-toggle" data-toggle="dropdown">
                                        <i class="icofont-tasks"></i> Tasks
                                        <i class="icofont-caret-down"></i>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="#">Some Action</a></li>
                                        <li><a href="#">Other Action</a></li>
                                        <li class="divider"></li>
                                        <li><a href="#">Something Else</a></li>
                                    </ul>
                                </li>
                                <li class="divider"></li>
                                <li class="btn-group">
                                    <a href="#" class="btn btn-small btn-link">
                                        <i class="icofont-money"></i> Orders <span class="color-red">(+12)</span>
                                    </a>
                                </li>
                                <li class="divider"></li>
                                <li class="btn-group">
                                    <a href="#" class="btn btn-small btn-link">
                                        <i class="icofont-user"></i> Users <span class="color-red">(+34)</span>
                                    </a>
                                </li>
                            </ul>-->
                            <!--/breadcrumb-nav-->
                            
                            <!--breadcrumb-->
                            <ul class="breadcrumb">
                                <li><a href="index.html"><i class="icofont-home"></i> Kukoo</a> <span class="divider">&rsaquo;</span></li>
                                <li class="active">用户日志管理</li>
                            </ul><!--/breadcrumb-->
                        </div><!-- /content-breadcrumb -->
                        
                        <!-- content-body -->
                        <div class="content-body">
                            <!-- dashboar -->
                            <!-- <div class="divider-content"><span></span></div>-->
                            
                            <!-- tab stat -->
                            <!-- /tab stat -->

                            <!-- tab resume content -->
                            <div class="row-fluid" id="paging">
                                <div class="span12">
                                    <div class="box corner-all">
                                        <div class="box-header grd-white corner-top">
                                            <div class="header-control">
                                                <a data-box="collapse"><i class="icofont-caret-up"></i></a>
                                                <a data-box="close" data-hide="bounceOutRight">&times;</a>
                                            </div>
                                            <span>详细信息列表</span>
                                        </div>
                                        <div class="box-body">
                                            <table id="datatablestools" class="table table-hover responsive">
                                                <thead>
                                                    <tr>
                                                    	   <th>序号</th>
                                                        <th>用户名</th>
                                                        <th>用户Ip地址</th>
                                                        <th>日志标题</th>
                                                        <th>请求链接</th>
                                                        <th>请求时长</th>
                                                        <th>访问时间</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="index" items="${page.list }" varStatus="status">
                                                    	   <tr class="gradeA">
	                                                        <td>${status.index+1 }</td>
	                                                        <td>${index.user_id}</td>
	                                                        <td>${index.remote_addr }</td>
	                                                        <td class="center">${index.title }</td>
	                                                        <td class="center">${index.request_uri }</td>
	                                                        <td class="center">${index.timeout }</td>
	                                                        <td class="center">${index.operate_date }</td>
	                                                    </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                            <div class="row-fluid">
                                                <div class="span4">
	                                                <div class="message">
								                        共<i class="blue">${page.total}</i>条记录，当前显示第&nbsp;<i
								                            class="blue">${page.pageNum}/${page.pages}</i>&nbsp;页
							                    	   </div>
                                                </div>
                                                <div class="span8">
                                                    <div class="pagination pagination-right">
	                                                  <ul>
	                                                      <!-- <li class="disabled"><a href="#">Prev</a></li>
	                                                      <li class="active"><a href="#">1</a></li>
	                                                      <li><a href="#">2</a></li>
	                                                      <li><a href="#">3</a></li>
	                                                      <li><a href="#">4</a></li>
	                                                      <li><a href="#">Next</a></li> -->
	                                                         <c:if test="${!page.isFirstPage}">
								                                <li><a href="<%=basePath %>/main/showSystemLog?pageNum=${page.firstPage}">首页</a></li>
								                                <li><a href="javascript:queryLogs(${page.prePage});">上一页</a></li>
								                            </c:if>
								                            <c:forEach items="${page.navigatepageNums}" var="navigatepageNum">
								                            
								                                <c:if test="${navigatepageNum==page.pageNum}">
								                                    <li class="active"><a href="<%=basePath %>/main/showSystemLog?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
								                                </c:if>
								                                <c:if test="${navigatepageNum!=page.pageNum}">
								                                    <li><a href="<%=basePath %>/main/showSystemLog?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
								                                </c:if>
								                            </c:forEach>
								                            <c:if test="${!page.isLastPage}">
								                                <li><a href="javascript:queryLogs(${page.nextPage});">下一页</a></li>
								                                <li><a href="javascript:queryLogs(${page.lastPage});">最后一页</a></li>
								                            </c:if>
	                                                   </ul>
	                                              </div>  
                                                </div>
                                            </div>
                                            
											                                          
                                        </div><!-- /box-body -->
                                    </div><!-- /box -->
                                </div><!-- /span -->
                                
                            </div><!-- tab stat -->
                            
                            <!--/dashboar-->
                        </div><!--/content-body -->
                    </div><!-- /content -->
                </div><!-- /span content -->
                
                
            </div>
        </section>

        <jsp:include page="Footer.jsp"/>
		<jsp:include page="Js.jsp"/>
		<script>
		$(document).ready(function() {
			$(".table tr").sortable();
		});
		
		</script>
    </body>
</html>