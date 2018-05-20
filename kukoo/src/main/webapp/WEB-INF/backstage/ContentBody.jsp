<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>pages/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" charset="utf-8" src="<%=basePath %>pages/js/suggestion.js"></script>
 <!-- content-body -->
                        <div class="content-body">
                            <!-- dashboar -->
                            <!-- shortcut button 中间顶部的消息提醒-->
                            <div class="shortcut-group">
                                <ul class="a-btn-group">
                                    <li>
                                        <a href="<%=basePath %>pages/AddNotice.jsp" class="a-btn grd-white" rel="tooltip" title="撰写通知">
                                            <span></span>
                                            <span><i class="icofont-edit color-silver-dark"></i></span>
                                            <span class="color-silver-dark"><i class="icofont-file color-silver-dark"></i></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="a-btn grd-white" rel="tooltip" title="提交报销单">
                                            <span></span>
                                            <span><i class="icofont-upload color-silver-dark"></i></span>
                                            <span class="color-silver-dark"><i class="icofont-upload-alt color-silver-dark"></i></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="a-btn grd-white" rel="tooltip" title="9个待办事项">
                                            <span></span>
                                            <span><i class="icofont-envelope color-silver-dark"></i></span>
                                            <span class="color-silver-dark"><i class="icofont-envelope-alt color-teal"></i></span>
                                            <div class="badge badge-info">9</div> <!--don't use span here!-->
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="a-btn grd-white" rel="tooltip" title="2个新任务">
                                            <span></span>
                                            <span><i class="icofont-barcode color-silver-dark"></i></span>
                                            <span class="color-silver-dark"><i class="icofont-shopping-cart color-red"></i></span>
                                            <div class="label label-important">2</div> <!--don't use span here!-->
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="a-btn grd-white" rel="tooltip" title="查看数据分析">
                                            <span></span>
                                            <span><i class="icofont-bar-chart color-silver-dark"></i></span>
                                            <span class="color-silver-dark"><i class="typicn-lineChart"></i></span>
                                        </a>
                                    </li>
                                    <li class="clearfix"></li>
                                </ul>
                            </div>
                            <!-- /shortcut button  中间顶部的消息提醒-->
                            
                            <div class="divider-content"><span></span></div>
                            
                            <!-- tab stat -->
                           		<!--  图表生成区 -->
                            <!-- /tab stat -->

                            <!-- tab resume content 中间新任务部分和写建议的部分 -->
                            <div class="row-fluid">
                            
                                <!-- tab resume update 中间新任务部分-->
                                <div class="span6">
                                    <div class="box-tab corner-all">
                                    
                                       <!--  顶部 -->
                                        <div class="box-header corner-top">
                                            <!--tab action-->
                                            <div class="header-control pull-right">
                                                <a data-box="collapse"><i class="icofont-caret-up"></i></a>
                                                <a data-box="close" data-hide="rotateOutDownLeft">&times;</a>
                                            </div>
                                          <!--   顶部按钮 -->
                                            <ul class="nav nav-pills">
                                                <!--tab menus-->
                                                <li class="active"><a data-toggle="tab" href="#recent-orders">最新任务</a></li>
                                                <li><a data-toggle="tab" href="#recent-posts">历史任务</a></li>
                                                <li><a data-toggle="tab" href="#recent-comments">其他</a></li><!--/tab menus-->
                                            </ul>
                                            <!--  / 顶部按钮 -->
                                        </div>
                                        <!--  /顶部 -->
                                        <div class="box-body">
                                            <!-- widgets-tab-body -->
                                            <div class="tab-content">
                                                <!--   最新任务 -->
                                                <div class="tab-pane fade in active" id="recent-orders">
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                       <!--  图片可以变成根据紧急程度判断来显示不同内容 -->
                                                            <img class="media-object" data-src="js/holder.js/64x64" />
                                                            
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="#">任务名称 </a><small class="helper-font-small">by 任务分配者和时间</small></h4>
                                                            <p>任务具体内容</p>
                                                            <div class="btn-group pull-right">
                                                                <!-- <a href="#" class="btn btn-mini">Approve</a> -->
                                                                <a href="#" class="btn btn-mini">接受</a>
                                                                <a href="#" class="btn btn-mini btn-danger">拒绝</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-small btn-link pull-right">查看更多&rarr;</a>
                                                </div>
                                                <!--   /最新任务 -->
                                                <!--   历史任务 -->
                                                <div class="tab-pane fade" id="recent-posts">
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object" data-src="js/holder.js/64x64" />
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="#">任务名称 </a><small class="helper-font-small">by 分配者和时间</small></h4>
                                                            <p>任务描述内容</p>
                                                            <div class="btn-group pull-right">
                                                               <!--  <a href="#" class="btn btn-mini">Edit</a> -->
                                                                <a href="#" class="btn btn-mini">查看</a>
                                                               <!--  <a href="#" class="btn btn-mini btn-danger">拒绝</a> -->
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <a href="#" class="btn btn-small btn-link pull-right">View all &rarr;</a>
                                                </div>
                                                <!--   /历史任务 -->
                                                <!-- 其他 -->
                                                <div class="tab-pane fade" id="recent-comments">
                                                    <div class="media">
                                                        <a class="pull-left" href="#">
                                                            <img class="media-object" data-src="js/holder.js/64x64" />
                                                        </a>
                                                        <div class="media-body">
                                                            <h4 class="media-heading"><a href="#">Lacinia non </a><small class="helper-font-small">by jane smith on 20 aug 2012, ip 192.168.56.7</small></h4>
                                                            <p>Raw denim you probably haven't heard of them jean shorts Austin.</p>
                                                            <div class="btn-group pull-right">
                                                                <a href="#" class="btn btn-mini">Approve</a>
                                                                <a href="#" class="btn btn-mini">Spam</a>
                                                                <a href="#" class="btn btn-mini btn-danger">Delete</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                 
                                                    <a href="#" class="btn btn-small btn-link pull-right">View all &rarr;</a>
                                                </div>
                                                <!-- /其他 -->
                                            </div>
                                            <!--/widgets-tab-body-->
                                        </div>
                                        <!--/box-body-->
                                    </div>
                                    <!--/box-tab-->
                                </div>
                                <!-- tab resume update /中间新任务部分-->
                               <!--  中间部分写建议 -->
                                <div class="span6">
                                    <div class="box corner-all">
                                        <div class="box-header corner-top grd-white">
                                            <div class="header-control">
                                                <a data-box="collapse"><i class="icofont-caret-up"></i></a>
                                                <a data-box="close" data-hide="rotateOutDownRight">&times;</a>
                                            </div>
                                            <span><i class="icofont-envelope"></i> 提建议</span>
                                        </div>
                                        <div class="box-body">
                                            <form  method="post" id="form_11">
                                                <div class="control-group">
                                                    <label class="control-label">To：总经理</label>
                                                    <!-- <div class="controls">
                                                        <input type="hidden" class="input-block-level" name="reseiver" value="johndoe@mail.com, janedoe@mail.com, johnsmith@mail.com, janesmith@mail.com" />
                                                    </div> -->
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">标题</label>
                                                    <div class="controls">
                                                        <input type="text" class="input-block-level grd-white" name="suggestion.title" />
                                                    </div>
                                                </div>
                                                <div class="control-group">
                                                    <label class="control-label">内容</label>
                                                    <div class="controls">
                                                        <textarea name="suggestion.content" data-form="wysihtml5" rows="8" class="span11"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-actions">
                                                    <input type="reset" class="btn" value="重置" />
                                                    <input type="button" class="btn btn-primary" value="提交" id="tijiao"/>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <!-- / 中间部分写建议 -->
                            </div>
                            <!-- tab stat /中间新任务部分和写建议的部分-->
                            
                            <!--schedule  日历控件-->
                           <!--  <div class="box corner-all">
                                <div class="box-header grd-white color-silver-dark corner-top">
                                    <div class="header-control">
                                        <a data-box="collapse"><i class="icofont-caret-up"></i></a>
                                    </div>
                                    <span>Schedule this month</span>
                                </div>
                                <div class="box-body">
                                    <div id="schedule"></div>
                                </div>
                            </div> -->
                            <!--schedule  /日历控件-->
                            
                            <!--/dashboar-->
                        </div><!--/content-body -->