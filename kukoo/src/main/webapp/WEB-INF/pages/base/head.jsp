<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ page isELIgnored="false" %>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
			<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
				<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
					<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
					<html>
						<head>
							<%
									String path = request.getContextPath();
									String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
									String servicePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+"/";
									String myToken  =(String)  request.getSession().getAttribute("sessionToken");
								%>
								<meta charset="utf-8">
									<meta http-equiv="X-UA-Compatible" content="IE=edge">
										<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
										<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
											<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
											<meta name="robots" content="index, follow">
												<meta name="keywords" content="HTML5 Template">
													<meta name="description" content="Elementy - Responsive HTML5 Template">
														<meta name="author" content="zhangshijie">
															<meta name="theme-color" content="#2a2b2f">
																<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
																	<!-- Bootstrap core CSS -->
																	<%-- <link rel="stylesheet" href="<%=basePath %>javascript/bootstrap-3.3.7-dist/css/bootstrap.min.css" /> --%>
																		<!-- 网站公共部分样式 -->
																		<link rel="stylesheet" href="<%=basePath %>css/base/base.css"/>

																		<!-- 新版页面引用start -->
																		<!-- FAVICONS -->
																		<link rel="shortcut icon" href="<%=basePath %>elementy/images/favicon/favicon.png">
																			<link rel="apple-touch-icon" href="<%=basePath %>elementy/images/favicon/apple-touch-icon.png">
																				<link rel="apple-touch-icon" sizes="72x72" href="<%=basePath %>elementy/images/favicon/apple-touch-icon-72x72.png">
																					<link rel="apple-touch-icon" sizes="114x114" href="<%=basePath %>elementy/images/favicon/apple-touch-icon-114x114.png">
																						<link rel="icon" sizes="192x192" href="<%=basePath %>elementy/images/favicon/icon-192x192.png">
																							<!-- CSS -->
																							<!-- GOOGLE FONT -->
																							<link href="<%=basePath %>elementy/css/google-font.css" rel="stylesheet" type="text/css">
																								<!-- REVOSLIDER CSS SETTINGS -->
																								<!-- REVOLUTION STYLE SHEETS -->
																								<link href="<%=basePath %>elementy/revo-slider/css/settings.css" rel="stylesheet" type="text/css">
																									<!-- BOOTSTRAP -->
																									<link rel="stylesheet" href="<%=basePath %>elementy/css/bootstrap.min.css">
																										<!-- ICONS ELEGANT FONT & FONT AWESOME & LINEA ICONS -->
																										<link rel="stylesheet" href="<%=basePath %>elementy/css/icons-fonts.css">
																											<!-- 这是我加的图标库，和上面那个目前没有发现冲突，可以使用 -->
																											<link rel="stylesheet" href="<%=basePath %>font-awesome-4.7.0/css/font-awesome.css">
																												<!-- CSS THEME -->
																												<link rel="stylesheet" href="<%=basePath %>elementy/css/style.css">
																													<!-- ANIMATE -->
																													<link rel='stylesheet' href="<%=basePath %>elementy/css/animate.min.css">
																														<!-- IE Warning CSS -->
																														<!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="css/ie-warning.css" ><![endif]-->
																														<!--[if lte IE 8]><link rel="stylesheet" type="text/css" href="css/ie8-fix.css" ><![endif]-->
																														<!-- Magnific popup, Owl Carousel Assets in style.css -->
																														<!-- CSS end -->

																														<!-- JS begin some js files in bottom of file-->
																														<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
																														<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
																														<!--[if lt IE 9]> <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script> <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script> <![endif]-->

																														<!-- jQuery -->
																														<script src="<%=basePath %>elementy/js/velocity.min.js"></script>
																														<script src="<%=basePath %>elementy/js/jquery.min.js"></script>

																														<!-- Include all compiled plugins (below), or include individual files as needed -->
																														<script src="<%=basePath %>elementy/js/bootstrap.min.js"></script>

																														<!-- MAGNIFIC POPUP -->
																														<script src='<%=basePath %>elementy/js/jquery.magnific-popup.min.js'></script>

																														<!-- PORTFOLIO SCRIPTS -->
																														<script src="<%=basePath %>elementy/js/isotope.pkgd.min.js"></script>
																														<script src="<%=basePath %>elementy/js/imagesloaded.pkgd.min.js"></script>
																														<script src="<%=basePath %>elementy/js/masonry.pkgd.min.js"></script>

																														<!-- APPEAR -->
																														<script src="<%=basePath %>elementy/js/jquery.appear.js"></script>

																														<!-- OWL CAROUSEL -->
																														<script src="<%=basePath %>elementy/js/owl.carousel.min.js"></script>

																														<!-- MAIN SCRIPT -->
																														<script src="<%=basePath %>elementy/js/main.js"></script>

																														<!-- REVOSLIDER SCRIPTS -->
																														<script src="<%=basePath %>elementy/revo-slider/js/jquery.themepunch.tools.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/jquery.themepunch.revolution.min.js"></script>

																														<!-- NAV SIDEBAR -->
																														<script src="<%=basePath %>elementy/js/jquery.nav.js"></script>
																														<script src="<%=basePath %>elementy/js/vue.min.js"></script>
																														<script src="<%=basePath %>javascript/dist/pageBase.js"></script>

																														<!-- SLIDER REVOLUTION 5.0 EXTENSIONS (Load Extensions only on Local File Systems ! The following part can be removed on Server for On Demand Loading) -->
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.actions.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.carousel.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.migration.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.navigation.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.parallax.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
																														<script src="<%=basePath %>elementy/revo-slider/js/extensions/revolution.extension.video.min.js"></script>
																														<!-- 新版页面引用end -->

																														<!-- 引用JS -->
																														<%-- <script src="<%=basePath %>javascript/jquery/1.12.4/jquery.min.js"></script>
																														<script src="<%=basePath %>javascript/jquery/cookie/jquery.cookie.js"></script>
																														<script src="<%=basePath %>javascript/jquery/form/jquery.form.js"></script>
																														<script src="<%=basePath %>javascript/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script> --%>

																															<script type="text/javascript">
																																var BASEPATH = '<%=basePath%>';
																															</script>
																														</head>
																														<body></body>
																													</html>
