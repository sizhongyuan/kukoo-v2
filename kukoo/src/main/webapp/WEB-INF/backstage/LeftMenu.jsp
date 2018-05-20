<%@ page language="java" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!-- span side-left -->
<div class="span1">
    <!--side bar-->
    <aside class="side-left">
        <ul class="sidebar">
            <li class="active first"> <!--always define class .first for first-child of li element sidebar left-->
                <a href="index.html" title="dashboard">
                    <div class="helper-font-24">
                        <i class="icofont-dashboard"></i>
                    </div>
                    <span class="sidebar-text">用户管理</span>
                </a>
            </li>
            <li>
                <a href="interface.html" title="interface">
                    <div class="helper-font-24">
                        <i class="icofont-magnet"></i>
                    </div>
                    <span class="sidebar-text">项目介绍</span>
                </a>
            </li>
            <li>
                <a href="charts.html" title="charts">
                    <div class="helper-font-24">
                        <i class="icofont-bar-chart"></i>
                    </div>
                    <span class="sidebar-text">在线答题</span>
                </a>
            </li>
            <li>
                <a href="tables.html" title="table">
                    <div class="helper-font-24">
                        <i class="icofont-table"></i>
                    </div>
                    <span class="sidebar-text">详细信息采集</span>
                </a>
            </li>
            <li>
                <a href="grids.html" title="grids">
                    <div class="helper-font-24">
                        <i class="icofont-columns"></i>
                    </div>
                    <span class="sidebar-text">时间轴配置</span>
                </a>
            </li>
            <li>
                <a href="<%=basePath %>main/showSystemLog" title="grids">
                    <div class="helper-font-24">
                        <i class="icofont-columns"></i>
                    </div>
                    <span class="sidebar-text">用户日志采集</span>
                </a>
            </li>
            <li>
                <a href="icons.html" title="icons">
                    <div class="helper-font-24">
                        <i class="icofont-star"></i>
                    </div>
                    <span class="sidebar-text">权限管理</span>
                </a>
            </li>
           
            <li>
                <a href="#" title="more">
                    <div class="badge badge-important">5</div>
                    <div class="helper-font-24">
                        <i class="icofont-th-large"></i>
                    </div>
                    <span class="sidebar-text">More</span>
                </a>
                <ul class="sub-sidebar corner-top shadow-silver-dark">
                    <li>
                        <a href="404.html" title="not found">
                            <div class="helper-font-24">
                                <i class="icofont-warning-sign"></i>
                            </div>
                            <span class="sidebar-text">404</span>
                        </a>
                    </li>
                    <li>
                        <a href="login.html" title="login">
                            <div class="helper-font-24">
                                <i class="icofont-lock"></i>
                            </div>
                            <span class="sidebar-text">Login</span>
                        </a>
                    </li>
                    <li>
                        <a href="invoice.html" title="invoice">
                            <div class="helper-font-24">
                                <i class="icofont-barcode"></i>
                            </div>
                            <span class="sidebar-text">Invoice</span>
                        </a>
                    </li>
                    <li>
                        <a href="pricing.html" title="pricing table">
                            <div class="helper-font-24">
                                <i class="icofont-briefcase"></i>
                            </div>
                            <span class="sidebar-text">Pricing</span>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="bonus-page/resume/index.html" title="resume">
                            <div class="helper-font-24">
                                <i class="icofont-user"></i>
                            </div>
                            <span class="sidebar-text">Resume</span>
                        </a>
                    </li>
                </ul>
            </li>
        </ul>
    </aside><!--/side bar -->
</div><!-- span side-left -->