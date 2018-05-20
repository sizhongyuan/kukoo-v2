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
                          
                            <h2><i class="icofont-home"></i> 奖品管理 <small>welcome to Kukoo</small></h2>
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
                                <li class="active">奖品管理</li>
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
                                                    	   <th>奖品编号</th>
                                                        <th>奖品名称</th>
                                                        <th>中奖率</th>
                                                        <th>奖品图片路径</th>
                                                        <th>奖品数量</th>
                                                        <th>操作</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="index" items="${page.list }" varStatus="status">
                                                    	   <tr class="gradeA">
	                                                        <td>${index.lno }</td>
	                                                        <td>${index.name}</td>
	                                                        <td>${index.rate }</td>
	                                                        <td class="center">${index.img_route }</td>
	                                                        <td class="center">${index.num }</td>
	                                                        <td id="lottery_edit"><a href="#" data=${index.id } class="icofont-edit">编辑</a></td>
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
								                                <li><a href="<%=basePath %>/main/showLotteryPage?pageNum=${page.firstPage}">首页</a></li>
								                                <li><a href="javascript:queryLogs(${page.prePage});">上一页</a></li>
								                            </c:if>
								                            <c:forEach items="${page.navigatepageNums}" var="navigatepageNum">
								                            
								                                <c:if test="${navigatepageNum==page.pageNum}">
								                                    <li class="active"><a href="<%=basePath %>/main/showLotteryPage?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
								                                </c:if>
								                                <c:if test="${navigatepageNum!=page.pageNum}">
								                                    <li><a href="<%=basePath %>/main/showLotteryPage?pageNum=${navigatepageNum}">${navigatepageNum}</a></li>
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

		<div class="modal fade" id="lottery_edit_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<form class="form-horizontal" action="/kukoo/main/editLottery/" method="post" enctype="multipart/form-data"/>
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button>
						<h4 class="modal-title" id="myModalLabel">
							编辑奖品
						</h4>
					</div>
					<div class="modal-body" style="font-size: 18px;text-align: center;">
							<div id="element" class="row-fluid">
                                        <!--span-->
                                        <div class="span12">
                                            <!--box-->
                                            <div class="box corner-all">
                                                <!--box body-->
                                                <div class="box-body">
                                                    <!--element-->
                                                    
                                                        <div class="control-group">
                                                            <label class="control-label" for="inputAuto">奖品编号</label>
                                                            <div class="controls">
                                                            	  <input type="hidden" id="id" name="id" class="grd-white" readonly="readonly"/>
                                                                <input type="text" id="lno" name="lno" class="grd-white" readonly="readonly"/>
                                                            </div>
                                                        </div>
                                                        <div class="control-group">
                                                            <label class="control-label" for="inputAuto">奖品名称</label>
                                                            <div class="controls">
                                                                <input type="text" id="name" name="name" class="grd-white" />
                                                            </div>
                                                        </div>
                                                        <div class="control-group">
                                                            <label class="control-label" for="inputAuto">中奖率</label>
                                                            <div class="controls">
                                                                <input type="text" id="rate" name="rate" class="grd-white" />
                                                            </div>
                                                        </div>
                                                        <div class="control-group">
                                                            <label class="control-label" for="inputUpload">奖品图片</label>
                                                            <div class="controls">
                                                                <input type="file" data-form="uniform" id="imgRoute" name="imgRoute"/>
                                                            </div>
                                                        </div>
                                                        <div class="control-group">
                                                            <label class="control-label" for="inputAuto">奖品数量</label>
                                                            <div class="controls">
                                                                <input type="text" id="num" name="num" class="grd-white" />
                                                            </div>
                                                        </div>
                                                        
                                                       <!--  <div class="control-group">
                                                            <label class="control-label" for="inputEditorSimple">Simple Editor</label>
                                                            <div class="controls">
                                                                <textarea id="inputEditorSimple" class="span10" rows="8" data-form="wysihtml5" placeholder="Enter text ..."></textarea>
                                                            </div>
                                                        </div> -->
                                                        <!-- <div class="form-actions">
                                                            <button type="submit" class="btn btn-primary">Save changes</button>
                                                            <button type="button" class="btn">Cancel</button>
                                                        </div> -->
                                                    
                                                    <!--/element-->
                                                </div><!--/box body-->
                                            </div><!--/box-->
                                        </div><!--/span--> 
                                    </div><!--/element-->
					</div>
					
					<div class="modal-footer">
						<button type="submit" class="btn btn-primary">保存修改</button>
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					</div>
					</form>
				</div><!-- /.modal-content -->
			</div><!-- /.modal -->
		</div>
		
        <jsp:include page="Footer.jsp"/>
		<jsp:include page="Js.jsp"/>
		
		<script>
		$(document).ready(function() {
			$(".table tr").sortable();
			
			$("#lottery_edit a").click(function(){
				$('#lottery_edit_modal').modal({
					keyboard: true
				});
				
				var url = "/kukoo/main/showEditLotteryPage/"+$(this).attr("data");
				$.ajax({ 
					type: 'GET',
					url: url,
					success: function(result){
						//alert("mes="+result.id);
						$("#id").val(result.id);
						$("#lno").val(result.lno);
						$("#name").val(result.name);
						$("#rate").val(result.rate);
						$("#imgRoute").val(result.img_route);
						$("#num").val(result.num);
						//alert("data="+result.data.name+"=="+result.data.lno);
						/* if(result.mes=="success"){
							console.log(result.data);
						} */
					}
				});
			});
		});
		
		</script>
    </body>
</html>