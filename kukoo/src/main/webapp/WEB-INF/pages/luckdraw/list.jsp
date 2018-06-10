<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/base/head.jsp"%>

<%  
        //project  
        String project=request.getParameter("project");
        String country=request.getParameter("country");
        String search=request.getParameter("search");
     %>
<html>
<head>
<!-- <link rel="icon" href="../../favicon.ico"> -->
<title>布谷移民——项目列表</title>
</head>
<style>
.input_line{
	font-family: 'Poppins','Open Sans',Arial, Helvetica, sans-serif;
    border: none;
    border-bottom: 1px solid #ccc;
    border-radius: 0px;
    background: transparent;
    color: #323336;
    font-size: 14px;
    margin: 0;
    outline: medium none;
    padding: 8px 20px 8px 0;
    line-height: inherit;
}
</style>
<link rel="stylesheet" href="<%=basePath %>css/luckdraw/luck.css"> 
<script src="<%=basePath %>javascript/luckdraw/luck.js"></script>
<script type="text/javascript">
	$("document").ready(function() {
		/* 判断session用户是否登录 start*/
		if("${userId}" !== ""){
			$('#userCenter',parent.document).removeClass("hidden");
			$("#signUp",parent.document).addClass("hidden");
			$("#signIn",parent.document).addClass("hidden");
		}
		
	});
	
	$(function(){
	    	$(".list_lh").myScroll({
	    		speed:30, //数值越大，速度越慢
	    		rowHeight:68 //li的高度
	    	});
	    	$.ajax({ 
			type: 'GET',
			url: "/kukoo/luck/findWinLotteryInfo/all",
			success: function(result){
				if(result.length>0){
					var info = "";
					//alert("data="+result[0].lottery_id);
					for(var i=0;i<result.length;i++){
						info = info+ "<li><p>"/* +result[i].win_time+" " */+result[i].win_user_id+" 抽中 "+result[i].name+"</p></li>"
					}
					$("#WinLotteryInfo").html(info);
				}
			}
		});
	    	
	    	$("#ShowWinInfo a").click(function(){
	    		var user = "${lotterys.lotterysUserId}";
	    		$.ajax({ 
	    			type: 'GET',
	    			url: "/kukoo/luck/findWinLotteryInfo/"+user,
	    			success: function(result){
	    				if(result.length>0){
	    					var info = "<table style=\"text-align: center;\" class=\"table table-striped mb-40\">\n" + 
    						"	    		                <thead>\n" + 
    						"		    		                <tr>\n" + 
    						"		    		                  <th>序号</th>\n" + 
    						"		    		                  <th>中奖时间</th>\n" + 
    						"		    		                  <th>奖品名称</th>\n" + 
    						"		    		                </tr>\n" + 
    						"		    		            </thead>\n" ;
	    					for(var i=0;i<result.length;i++){
	    						info = info+"<tbody>\n" + 
	    						"		    		                <tr>\n" + 
	    						"		    		                  <td>"+(i+1)+"</td>\n" + 
	    						"		    		                  <td>"+result[i].win_time+"</td>\n" + 
	    						"		    		                  <td>"+result[i].name+"</td>\n" + 
	    						"		    		                </tr>\n" + 
	    						"	    		 </tbody>\n" ; 
	    					}
	    					info = info+"</table>";
	    					$("#WinInfoBody").html(info);
	    				}
	    			}
	    		});
	    		$('#WinInfoModal').modal({
					keyboard: true
			});
	    	});
	});
	
</script>
<body>

	<!-- LOADER -->
	<div id="loader-overflow">
		<div id="loader3" class="loader-cont">Please enable JS</div>
	</div>

	<div id="wrap" class="boxed ">
		<div class="grey-bg">
			<!-- Grey BG  -->

			<!--[if lte IE 8]>
				<div id="ie-container">
					<div id="ie-cont-close">
						<a href="#" onclick="javascript&#058;this.parentNode.parentNode.style.display="none"; return false;"><img src="images/ie-warn/ie-warning-close.jpg" style="border: none;" alt="Close"></a>
					</div>
					<div id="ie-cont-content" >
						<div id="ie-cont-warning">
							<img src="images/ie-warn/ie-warning.jpg" alt="Warning!">
						</div>
						<div id="ie-cont-text" >
							<div id="ie-text-bold">
								You are using an outdated browser
							</div>
							<div id="ie-text">
								For a better experience using this site, please upgrade to a modern web browser.
							</div>
						</div>
						<div id="ie-cont-brows" >
							<a href="http://www.firefox.com" target="_blank"><img src="images/ie-warn/ie-warning-firefox.jpg" alt="Download Firefox"></a>
							<a href="http://www.opera.com/download/" target="_blank"><img src="images/ie-warn/ie-warning-opera.jpg" alt="Download Opera"></a>
							<a href="http://www.apple.com/safari/download/" target="_blank"><img src="images/ie-warn/ie-warning-safari.jpg" alt="Download Safari"></a>
							<a href="http://www.google.com/chrome" target="_blank"><img src="images/ie-warn/ie-warning-chrome.jpg" alt="Download Google Chrome"></a>
						</div>
					</div>
				</div>
				<![endif]-->

			<!-- HEADER 1 FONT BLACK TRANSPARENT -->
			<header id="nav" class="header header-1 bg-gray">
				<div class="header-wrapper">
					<div class="container-m-30 clearfix">
						<div class="logo-row">

							<!-- LOGO -->
							<div class="logo-container-2">
								<div class="logo-2">
									<a href="<%=basePath %>homePage" class="clearfix"> <img
										src="<%=basePath %>elementy/images/logo.png" class="logo-img"
										alt="Logo">
									</a>
								</div>
							</div>
							<!-- BUTTON -->
							<div class="menu-btn-respons-container">
								<button id="menu-btn" type="button"
									class="navbar-toggle btn-navbar collapsed"
									data-toggle="collapse"
									data-target="#main-menu .navbar-collapse">
									<span aria-hidden="true" class="icon_menu hamb-mob-icon"></span>
								</button>
							</div>
						</div>
					</div>

					<!-- MAIN MENU CONTAINER -->
					<div class="main-menu-container">

						<div class="container-m-30 clearfix">

							<!-- MAIN MENU -->
							<div id="main-menu">
								<div class="navbar navbar-default" role="navigation">

									<!-- MAIN MENU LIST -->
									<nav class="collapse collapsing navbar-collapse right-1024">
										<ul class="nav navbar-nav">
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>homePage" class=""><div
														class="main-menu-title">家</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>homePage/list" class=""><div
														class="main-menu-title">项目列表</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>homePage/timeLine" class=""><div
														class="main-menu-title">时间轴</div></a>
											</li>
											
											<!-- MENU ITEM -->
											<li class="parent megamenu"><a href="<%=basePath %>homePage/dati" class=""><div
														class="main-menu-title">答题</div></a>
											</li>
										</ul>

									</nav>

								</div>
							</div>
							<!-- END main-menu -->

						</div>
						<!-- END container-m-30 -->

					</div>
					<!-- END main-menu-container -->

					<!-- SEARCH READ DOCUMENTATION -->
					<ul class="cd-header-buttons" style="z-index: 999;">
						<li><a class="cd-search-trigger" href="#cd-search"><span></span></a></li>
					</ul>
					<!-- cd-header-buttons -->
					<div id="cd-search" class="cd-search" style="background-color: #FFF;z-index: 99;">
						<form class="form-search" id="searchForm"
							action="" method="get">
							<input type="text" value="" name="search" id="search"
								placeholder="Search...">
						</form>
					</div>

				</div>
				<!-- END header-wrapper -->

			</header>

			<!-- PAGE TITLE LARGE 2 GRAY -->
			<div class="page-title-cont page-title-large2-cont bg-gray"
				style="padding-top: 10px;">
				<div class="relative container align-left">
					<div class="row">

						<div class="col-md-8">
							<h1 class="page-title2">抽奖</h1>
						</div>

						<div class="col-md-4">
							<div class="breadcrumbs2 font-poppins">
								<a class="a-inv" href="<%=basePath %>homePage/">Kukoo</a><span
									class="slash-divider">/</span><span class="bread-current">抽奖活动</span>
							</div>
						</div>

					</div>
				</div>
			</div>

			<!-- COTENT CONTAINER -->
		<div class="container p-140-cont" style="margin-top:-100px;">
          <div class="row">
          
            <!-- CONTENT -->
            <div class="col-sm-8 blog-main-posts">
          
              <!-- Post Item -->
              <div class="wow fadeIn pb-90">
                <div class="post-prev-img">
                	  <%@include file="/WEB-INF/pages/luckdraw/luck.jsp"%>
                  <!-- <a href="blog-single-sidebar-right.html"><img src="images/blog/post-wide-6.jpg" alt="img"></a> -->
                </div>
                  
                <div class="post-prev-title">
                  <h3 class="post-title-big">抽奖活动说明</h3>
                </div>
                 <hr>
                <div class="mb-80">
                	  
                  <%-- <p>
                  ${lotterys.lotterysDesc}.
                  </p> --%>
                  <p>
                  1.签约或者分享后可获得抽奖机会。
                  </p>
                  <p>
                  2.抽奖奖品均由Kukoo提供并全权负责，与该品牌无关；且不论颜色类型都是随机发放。
                  </p>
                   <p>
                  3.本活动采用积分抽奖的形式。
                  </p>
                  <p>
                  4.对抽奖若有疑问，可随时联系工作人员，联系方式XXXXXXX，意见反馈或者邮件xxx@xxx.com。
                  </p>
                  <p>
                  5.本抽奖活动最终解释权归Kukoo所有。
                  </p>
                  <!-- <pre class="mt-30 mb-30"></pre> -->
                </div>
             
              </div>

            </div>

            <!-- SIDEBAR -->
            <div class="col-sm-4 col-md-3 col-md-offset-1">
              
              <!-- SEARCH -->
              <!-- <div class="widget">
                <form class="form-search widget-search-form" action="page-search-results.html" method="get">
                  <input type="text" name="q" class="input-search-widget" placeholder="Search">
                  <button  type="submit" title="Start Search">
                    <span aria-hidden="true" class="icon_search"></span>
                  </button>
                </form>
              </div> -->
              
              <!-- WIDGET -->
              <div class="widget">
                
                <!-- <h5 class="widget-title2">中奖记录</h5> -->
                
                <div class="widget-body">
                  	
	                  
	                <div class="mb-80">
	                  <%-- <p>
	                  	${lotterys.lotterysList}
					  </p> --%>
	                  
	                    <div class="pt-5-cont">
	                    	<div class="pricing-table-4 text-center">
	                    	  <h3 class="pt-h6-cont">获奖用户名单</h3>
	                    	  <div class="price-cont-4">
	                    	    <span class="currency-5"></span><span class="price-5"></span>
	                    	    <span class="cents-cont-4">
	                    	      <span class="place2-4">&nbsp;</span>
	                    	    </span>	
	                    	  </div>
	                    	<div class="pt-content-container" style="margin:0px auto 0;">	
		                    	<div class="list_lh" style="height: 300px;">
		                        <ul id="WinLotteryInfo" class="list_lh">
			                         <!-- <li>
										<p>1.152*****120 抽中1000元</p>
									</li>
									<li>
										<p>2.152*****121 抽中1000元</p>
									</li>
									<li>
										<p>3.152*****122 抽中1000元</p>
									</li>-->
		                          </ul>
	                      	  </div>	
	                      </div>	
	                      <span class="cents-cont-4">
	                    	      <span class="place2-4">&nbsp;</span>
	                    	  </span>	
	                    	  <div id="ShowWinInfo" class="price-button-cont-3">	
	                    	    <a class="button rounded thin medium gray">查看我的获奖记录</a>
	                    	  </div>		
	                    	</div>
	                    </div>		
	                </div>
	              <!--   <div class="right" >
	                    <a href="blog-single-sidebar-right.html#comments" class="post-prev-count"><span aria-hidden="true" class="icon_comment_alt"></span><span class="icon-count">21</span></a>
	                    <a href="http://themeforest.net/user/abcgomel/portfolio?ref=abcgomel" class="post-prev-count"><span aria-hidden="true" class="icon_heart_alt"></span><span class="icon-count">53</span></a>
	                    <a href="#" class="post-prev-count dropdown-toggle" data-toggle="dropdown" aria-expanded="false" >
	                      <span aria-hidden="true" class="social_share"></span>
	                    </a>
	                    <ul class="social-menu dropdown-menu dropdown-menu-right" role="menu">
	                      <li><a href="#"><span aria-hidden="true" class="social_facebook"></span></a>
	                      </li>
	                      <li><a href="#"><span aria-hidden="true" class="social_twitter"></span></a></li>
	                      <li><a href="#"><span aria-hidden="true" class="social_dribbble"></span></a></li>
	                    </ul>
	                  </div> -->
                </div>
                
              </div>
             
              
              
              <!-- WIDGET -->
              <!-- <div class="widget">
                                
                <h5 class="widget-title2">Tags</h5>
                
                <div class="widget-body mt-25">
                  <div class="tags">
                    <a href="">design</a>
                    <a href="">development</a>
                    <a href="">minimal</a>
                    <a href="">branding</a>
                    <a href="">unique</a>
                    <a href="">clean</a>
                    <a href="">UI &amp; UX</a>
                  </div>
                </div>
                
              </div> -->
              

            </div>
            
          </div>
          
        </div>
			<!-- END container -->

			<!-- FOOTER 4 BLACK -->
			<%@include file="/WEB-INF/pages/base/footer.jsp"%>

		</div>
		<!-- End BG -->
	</div>
	<!-- End wrap -->
	
	<div class="modal fade" id="WinInfoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title">
					我的中奖记录
				</h4>
			</div>
			<div id="WinInfoBody" class="modal-body" style="font-size: 18px;text-align: center;">
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
</body>

</html>