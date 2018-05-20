<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                          
                            <h2><i class="icofont-home"></i> 用户管理 <small>welcome to Kukoo</small></h2>
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
                                <li class="active">用户管理</li>
                            </ul><!--/breadcrumb-->
                        </div><!-- /content-breadcrumb -->
                        
                        <!-- content-body -->
                        <div class="content-body">
                            <!-- dashboar -->
                            <!-- <div class="divider-content"><span></span></div>-->
                            
                            <!-- tab stat -->
                            <!-- /tab stat -->

                            <!-- tab resume content -->
                            <div class="row-fluid">
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
                                                        <th>用户名</th>
                                                        <th>用户地址</th>
                                                        <th>手机号</th>
                                                        <th>邮件</th>
                                                        <th>选择项目</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Firefox 3.0</td>
                                                        <td>Win 2k+ / OSX.3+</td>
                                                        <td class="center">1.9</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Camino 1.0</td>
                                                        <td>OSX.2+</td>
                                                        <td class="center">1.8</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Camino 1.5</td>
                                                        <td>OSX.3+</td>
                                                        <td class="center">1.8</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Netscape 7.2</td>
                                                        <td>Win 95+ / Mac OS 8.6-9.2</td>
                                                        <td class="center">1.7</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Netscape Browser 8</td>
                                                        <td>Win 98SE+</td>
                                                        <td class="center">1.7</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Netscape Navigator 9</td>
                                                        <td>Win 98+ / OSX.2+</td>
                                                        <td class="center">1.8</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.0</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.1</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1.1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                   <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.0</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.1</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1.1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.0</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.1</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1.1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.0</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.1</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1.1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.0</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                    <tr class="gradeA">
                                                        <td>Gecko</td>
                                                        <td>Mozilla 1.1</td>
                                                        <td>Win 95+ / OSX.1+</td>
                                                        <td class="center">1.1</td>
                                                        <td class="center">A</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            
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
    </body>
</html>