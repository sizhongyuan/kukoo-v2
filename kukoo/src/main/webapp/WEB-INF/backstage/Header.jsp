<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- section header -->
        <header class="header">
            <!--nav bar helper-->
            <div class="navbar-helper">
                <div class="row-fluid">
                    <!--panel site-name-->
                    <div class="span2">
                        <div class="panel-sitename">
                            <h2><a href="index.html"><span class="color-teal">Ku</span>koo</a></h2>
                        </div>
                    </div>
                    <!--/panel name-->

                    <div class="span6">
                        <!--panel search-->
                        <div class="panel-search">
                            <form class="form-search" />
                                <div class="input-icon-append">
                                    <button type="submit" rel="tooltip-bottom" title="search" class="icon"><i class="icofont-search"></i></button>
                                    <input class="input-large search-query grd-white" maxlength="23" placeholder="Search here..." type="text" />
                                </div>
                            </form>
                        </div><!--/panel search-->
                    </div>
                    <div class="span3">
                        <!--panel button ext-->
                        <div class="panel-ext dropdown pull-right">
                            
                            <div class="btn-group user-group">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <img class="corner-all" align="middle" src="<%=basePath %>backstage/img/user-thumb.jpg" title="John Doe" alt="john doe" /> <!--this for display on PC device-->
                                    <button class="btn btn-small btn-inverse">John Doe</button> <!--this for display on tablet and phone device-->
                                </a>
                                <ul class="dropdown-menu dropdown-user" role="menu" aria-labelledby="dLabel">
                                    <li>
                                        <div class="media">
                                            <a class="pull-left" href="#">
                                                <img class="img-circle" src="<%=basePath %>backstage/img/user.jpg" title="profile" alt="profile" />
                                            </a>
                                            <div class="media-body description">
                                                <p><strong>John Doe</strong></p>
                                                <p class="muted">johndoe@mail.com</p>
                                                <p class="action"><a class="link" href="#">Activity</a> - <a class="link" href="#">Setting</a></p>
                                                <a href="bonus-page/resume/index.html" class="btn btn-primary btn-small btn-block">View Profile</a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="dropdown-footer">
                                        <div>
                                            <a class="btn btn-small pull-right" href="<%=basePath %>main/showLoginPage">Logout</a>
                                            <a class="btn btn-small" href="#">Add Account</a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div><!--panel button ext-->
                    </div>
                    <div class="span1">
                    </div>
                </div>
            </div><!--/nav bar helper-->
        </header>