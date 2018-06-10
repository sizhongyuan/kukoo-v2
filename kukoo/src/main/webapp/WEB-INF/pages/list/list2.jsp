<!-- 列表页面 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%> 

<link rel="stylesheet" href="<%=basePath %>css/jquery-ui/jquery-ui-1.10.4.custom.min.css" />
<link rel="stylesheet" href="<%=basePath %>css/list/list.css" />
<script src="<%=basePath %>javascript/jquery-ui/jquery-ui-1.10.4.custom.min.js"></script>

<script>
$(function() {
    $( "#slider-range-min" ).slider({
      range: "min",
      value: 37,
      min: 1,
      max: 700,
      slide: function( event, ui ) {
        $( "#amount" ).val( "$" + ui.value );
      }
    });
    $( "#amount" ).val( "$" + $( "#slider-range-min" ).slider( "value" ) );
  });
	
	
</script>

<html>
	<!-- <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container-fluid"> 
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#kukoo-navbar-collapse">
				<span class="sr-only">切换导航</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Kukoo</a>
		</div>
		<div class="collapse navbar-collapse" id="kukoo-navbar-collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#">全部项目</a></li>
			    <li><a href="#">移民评估</a></li>
			    <li><a href="#">注册</a></li>
			    <li><a href="#">登录</a></li>
			</ul>
		</div>
		</div>
	</nav> -->
	<div style="margin-top:30px;border:0;border-top:1px solid #eee"></div>
    <div class="container" style="margin-top:20px;">
    		<div class="panel panel-default">
		    <div class="panel-body">
		        <div class="row">
					<div class="col-xs-12">
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label class="col-sm-2 control-label">国家地区</label>
								<div class="col-sm-4">
									<select class="form-control">
										<option>请选择国家</option>
										<option>选择A</option>
										<option>选择B</option>
										<option>选择C</option>
									</select>
								</div>
								<div class="col-sm-4">
									<input class="form-control" type="text"  value="该选择地区">
								</div>
								<label class="col-sm-2 control-label"></label>
							</div>
							<div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">项目</label>
								<div class="col-sm-4">
									<input class="form-control" type="text"  value="该选择项目">
								</div>
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-4"></div>
							</div>
							<div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">申请周期</label>
								<div class="col-sm-4">
									<input class="form-control" type="text"  value="该选择申请周期">
								</div>
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-4"></div>
							</div>
							<!-- <div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">费用范围</label>
								<div class="col-sm-8">
									<input id="ex1" data-slider-id='ex1Slider' type="text" data-slider-min="0" data-slider-max="20" data-slider-step="1" data-slider-value="14"/>
								</div>
								<label class="col-sm-2 control-label"></label>
							</div> -->
							<div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
							<div class="form-group">
								<label class="col-sm-2 control-label">费用范围</label>
								<div class="col-sm-8">
									<div id="slider-range-min" style="margin-top:10px;"></div>
									<p>
									  <label for="amount"></label>
									  <input type="text" id="amount" style="border:0; color:#aaa; font-weight:bold;" disabled="disabled">
									</p>
								</div>
								<label class="col-sm-2 control-label"></label>
							</div>
							<div class="form-group"  data-toggle="collapse" data-target="#more-query">
								<label class="col-sm-2 control-label">
									<span class="glyphicon glyphicon-filter" style="color:#66ccff;"></span>
									<small style="color: #66ccff;">更多筛选条件</small>
								</label>
								<label class="col-sm-10 control-label"></label>
							</div>
							
							<div id="more-query" class="collapse">
								<div class="form-group">
									<label class="col-sm-2 control-label">申请周期</label>
									<div class="col-sm-4">
										<input class="form-control" type="text"  value="该选择申请周期">
									</div>
									<label class="col-sm-2 control-label"></label>
									<div class="col-sm-4"></div>
								</div>
								<div style="margin-bottom:10px;margin-top:-5px;border:0;border-top:1px solid #eee"></div>
									<div class="form-group">
									<label class="col-sm-2 control-label">国家地区</label>
									<div class="col-sm-4">
										<select class="form-control">
											<option>请选择国家</option>
											<option>选择A</option>
											<option>选择B</option>
											<option>选择C</option>
										</select>
									</div>
									<div class="col-sm-4">
										<input class="form-control" type="text"  value="该选择地区">
									</div>
									<label class="col-sm-2 control-label"></label>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label"></label>
								<div class="col-sm-2">
									<button type="button" style="width:120px;height:30px;" class="btn btn-info" data-toggle="button">重置</button>
								</div>
								<div class="col-sm-2">
									<button type="button" style="width:120px;height:30px;" class="btn btn-info" data-toggle="button">搜索</button>
								</div>
								<div class="col-sm-6"></div>
							</div>
							<!-- <div class="form-group has-success">
								<label class="col-sm-2 control-label" for="inputSuccess">
									输入成功
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputSuccess">
								</div>
							</div>
							<div class="form-group has-warning">
								<label class="col-sm-2 control-label" for="inputWarning">
									输入警告
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputWarning">
								</div>
							</div>
							<div class="form-group has-error">
								<label class="col-sm-2 control-label" for="inputError">
									输入错误
								</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="inputError">
								</div>
							</div> -->
						</form>
					</div>
				</div>
		    </div>
		</div>
		
         <div class="panel panel-default">
		    <div class="panel-body p-body">
		        <div class="row">
					<div class="col-xs-12">
						<div class="row">
							<ol class="breadcrumb p-body">
							    <li><a href="#">Home</a></li>
							    <li><a href="#">一级</a></li>
							    <li class="active">二级</li>
							</ol>
							<div class="row">
								<div class="col-xs-6">
									<div class="panel panel-default">
									    <div class="panel-body">
									        <div class="row">
												<div class="col-xs-12">
													<a href="<%=basePath %>detail/showDetail/" class="thumbnail">
											            <img src="<%=basePath %>img/homepage/homePage.jpeg"
											                 alt="通用的占位符缩略图">
											        </a>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12">
													<div class="row">
														<div class="col-xs-8">
														<h4>蒹葭苍苍</h4>
														蒹葭苍苍，白露为霜。所谓伊人，在水一方。
														溯洄从之，道阻且长。溯游从之，宛在水中央。
														蒹葭萋萋，白露未晞。所谓伊人，在水之湄。
														溯洄从之，道阻且跻。溯游从之，宛在水中坻。
														蒹葭采采，白露未已。所谓伊人，在水之涘。
														溯洄从之，道阻且右。溯游从之，宛在水中沚。
														</div>
														<div class="col-xs-1">
														<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
														</div>
													</div>
													
												</div>
											</div>
									    </div>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="panel panel-default">
									    <div class="panel-body">
									        <div class="row">
												<div class="col-xs-12">
													<a href="<%=basePath %>detail/showDetail/" class="thumbnail">
											            <img src="<%=basePath %>img/homepage/homePage.jpeg"
											                 alt="通用的占位符缩略图">
											        </a>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12">
													<div class="row">
														<div class="col-xs-8">
														<h4>蒹葭苍苍</h4>
														蒹葭苍苍，白露为霜。所谓伊人，在水一方。
														溯洄从之，道阻且长。溯游从之，宛在水中央。
														蒹葭萋萋，白露未晞。所谓伊人，在水之湄。
														溯洄从之，道阻且跻。溯游从之，宛在水中坻。
														蒹葭采采，白露未已。所谓伊人，在水之涘。
														溯洄从之，道阻且右。溯游从之，宛在水中沚。
														</div>
														<div class="col-xs-1">
														<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
														</div>
													</div>
													
												</div>
											</div>
									    </div>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
									<div class="panel panel-default">
									    <div class="panel-body">
									        <div class="row">
												<div class="col-xs-12">
													<a href="#" class="thumbnail">
											            <img src="<%=basePath %>img/homepage/homePage.jpeg"
											                 alt="通用的占位符缩略图">
											        </a>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12">
													<div class="row">
														<div class="col-xs-8">
														<h4>蒹葭苍苍</h4>
														蒹葭苍苍，白露为霜。所谓伊人，在水一方。
														溯洄从之，道阻且长。溯游从之，宛在水中央。
														蒹葭萋萋，白露未晞。所谓伊人，在水之湄。
														溯洄从之，道阻且跻。溯游从之，宛在水中坻。
														蒹葭采采，白露未已。所谓伊人，在水之涘。
														溯洄从之，道阻且右。溯游从之，宛在水中沚。
														</div>
														<div class="col-xs-1">
														<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
														</div>
													</div>
													
												</div>
											</div>
									    </div>
									</div>
								</div>
								<div class="col-xs-6">
									<div class="panel panel-default">
									    <div class="panel-body">
									        <div class="row">
												<div class="col-xs-12">
													<a href="#" class="thumbnail">
											            <img src="<%=basePath %>img/homepage/homePage.jpeg"
											                 alt="通用的占位符缩略图">
											        </a>
												</div>
											</div>
											<div class="row">
												<div class="col-xs-12">
													<div class="row">
														<div class="col-xs-8">
														<h4>蒹葭苍苍</h4>
														蒹葭苍苍，白露为霜。所谓伊人，在水一方。
														溯洄从之，道阻且长。溯游从之，宛在水中央。
														蒹葭萋萋，白露未晞。所谓伊人，在水之湄。
														溯洄从之，道阻且跻。溯游从之，宛在水中坻。
														蒹葭采采，白露未已。所谓伊人，在水之涘。
														溯洄从之，道阻且右。溯游从之，宛在水中沚。
														</div>
														<div class="col-xs-1">
														<button type="button" class="btn btn-primary" data-toggle="button">标签1</button>
														</div>
													</div>
													
												</div>
											</div>
									    </div>
									</div>
								</div>
							</div>
							<!-- <ul class="list-group">
							    <li class="list-group-item p-body box">
								    	<div class="row">
										<div class="col-xs-6">
											<div class="row">
												<div class="col-xs-6">
													图标
													图标
													图标
												</div>
												<div class="col-xs-6">
													蒹葭苍苍，白露为霜。所谓伊人，在水一方。
													溯洄从之，道阻且长。溯游从之，宛在水中央。
													蒹葭萋萋，白露未晞。所谓伊人，在水之湄。
													溯洄从之，道阻且跻。溯游从之，宛在水中坻。
													蒹葭采采，白露未已。所谓伊人，在水之涘。
													溯洄从之，道阻且右。溯游从之，宛在水中沚。
												</div>
											</div>
										</div>
										<div class="col-xs-6">
											<div class="row">
												<div class="col-xs-6">
													图标
													图标
													图标
												</div>
												<div class="col-xs-6">
													蒹葭苍苍，白露为霜。所谓伊人，在水一方。
													溯洄从之，道阻且长。溯游从之，宛在水中央。
													蒹葭萋萋，白露未晞。所谓伊人，在水之湄。
													溯洄从之，道阻且跻。溯游从之，宛在水中坻。
													蒹葭采采，白露未已。所谓伊人，在水之涘。
													溯洄从之，道阻且右。溯游从之，宛在水中沚。
												</div>
											</div>
										</div>
									</div>
							    </li>
							</ul> -->
							<div style="text-align: center;">
								<ul class=" pagination pagination-sm">
								    <li><a href="#">&laquo;</a></li>&nbsp;
								    <li><a href="#">1</a></li>&nbsp;
								    <li><a href="#">2</a></li>&nbsp;
								    <li><a href="#">3</a></li>&nbsp;
								    <li><a href="#">4</a></li>&nbsp;
								    <li><a href="#">...</a></li>&nbsp;
								    <li><a href="#">&raquo;</a></li>&nbsp;
								</ul>
							</div>
							
							<div class="panel panel-default">
								    <div class="panel-body p-body">
								    		<h3 class="panel-title">
								            热门项目推荐
								        </h3>
								        加拿大项目 | 加拿大项目 | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目  | 加拿大项目 
								    </div>
							</div>
							
							<!-- <div class="copyright">
								<div class="container">
									<div class="row">
										<div class="col-sm-12">
											<span>Copyright © <a href="http://www.youzhan.org">优站精选</a></span>
											| <span><a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备11008151号</a></span>
										</div>
									</div>
								</div>
							</div> -->
						</div>
					</div>
				</div>
		    </div>
		</div>
   </div><!--/.fluid-container-->
   
</html>