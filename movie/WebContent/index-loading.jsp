<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>首页（登录）</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link rel="stylesheet" href="css/menu.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,700,300'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css"
	media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#horizontalTab').easyResponsiveTabs({
			type : 'default', //Types: default, vertical, accordion           
			width : 'auto', //auto or any width like 600px
			fit : true
		// 100% fit in a container
		});
	});
</script>
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1200);
		});
	});
</script>
<!---- start-smoth-scrolling---->

</head>
<body>
	<!-- header-section-starts -->
	<div class="header-top-strip">
	<!-- 顶层登录 -->
		<div class="container">
	        <!--top的左侧选项-->
			<div class="header-top-left">
				<p>
					<a href="#">全天候客户服务 </a> |
					<a href="#">重新发送预订确认</a>
				</p>
			</div>
			
			<!--包括选择城市和登录注册小界面 -->
			<div class="header-top-right">
				<div class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title">Modal title</h4>
							</div>
							<div class="modal-body">
								<p>One fine body&hellip;</p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
								<button type="button" class="btn btn-primary">Save changes</button>
							</div>
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
				
				<!-- 顶部右侧登录区域  -->
				<a href="#">欢迎登录：</a>	
			    	  <button class="btn btn-primary" data-toggle="modal" >  	
						<a href="movie-personal.jsp">
						<c:if test="${! empty  user.user_id }" >				           
                			 ${user.username }               
                		</c:if>
                		</a>	
                		<a href="index-loading.jsp">
               	    	<c:if test="${empty  user.user_id }" >				           
                			<td>未登录</td>              
                		</c:if>
                		</a>
                	</button>
                
                <!-- 以下删除 -->
				<!-- 弹出的登录注册的小页面-->				
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">立即登录</h4>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col-md-8"
										style="border-right: 1px dotted #C2C2C2; padding-right: 30px;">
										<!-- Nav tabs -->
										<ul class="nav nav-tabs">
											<li class="active"><a href="#Login" data-toggle="tab">登录</a></li>
											<li><a href="#Registration" data-toggle="tab">注册</a></li>
										</ul>
										<!--登录 -->
										<div class="tab-content">
											<div class="tab-pane active" id="Login">
												<form role="form" class="form-horizontal" action="./UserLoginController" method="post">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">Email</label>
														<div class="col-sm-10">
															<input type="text" class="form-control" id="email" name="email" placeholder="email" />
														</div>
													</div>
													<div class="form-group">
														<label for="exampleInputPassword1" class="col-sm-2 control-label"> 密码</label>
														<div class="col-sm-10">
															<input type="password" class="form-control" id="password" name="password" placeholder="password" />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
														    <input type="submit" value="登录">
															<!--button type="submit" class="btn btn-primary btn-sm">登录</button-->
															<a href="javascript:;">忘记密码?</a>
														</div>
													</div>
												</form>
											</div>
											<!-- 注册 -->
											<div class="tab-pane" id="Registration">
												<form role="form" class="form-horizontal" action="/movie/UserRegisterController" method="post">
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															姓名</label>
														<div class="col-sm-10">
															<div class="row">
																<div class="col-md-3">
																	<select class="form-control">
																		<option>男</option>
																		<option>女</option>
																	</select>
																</div>
																<div class="col-md-9">
																	<input type="text" id="username"
																		name="username"  />
																</div>
															</div>
														</div>
													</div>
													<div class="form-group">
														<label for="email" class="col-sm-2 control-label">
															Email</label>
														<div class="col-sm-10">
															<input type="text" id="email" name="email"
																 />
														</div>
													</div>
													<div class="form-group">
														<label for="mobile" class="col-sm-2 control-label">
															Mobile</label>
														<div class="col-sm-10">
															<input type="text" id="phone"  name="phone"
																 />
														</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															Password</label>
														<div class="col-sm-10">
															<input type="password" id="password"  name="password"
																 />
														</div>
													</div>
													<div class="row">
														<div class="col-sm-2"></div>
														<div class="col-sm-10">
															<input type="submit" value="注册">
														</div>
													</div>
												</form>
											</div>
										</div>
										<div id="OR" class="hidden-xs">OR</div>
									</div>
									<div class="col-md-4">
										<div class="row text-center sign-with">
											<div class="col-md-12">
												<h3 class="other-nw">其他登录方式</h3>
											</div>
											<div class="col-md-12">
												<div class="btn-group btn-group-justified">
													<a href="#" class="btn btn-primary">手机登录</a> <a href="#"
														class="btn btn-danger"> QQ</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- 以上删除 -->	
				<script>
					$('#myModal').modal('show');
				</script>
			</div>
		
			<div class="clearfix"></div>
		</div>
	</div>
	
	<!-- 主体内容部分 -->
	<div class="container">
		<div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="#"><h1>My Show</h1></a>
				</div>
				
				<!-- 搜索功能？ -->
				<div class="search">
					<div class="search2">
						<form>
							<i class="fa fa-search"></i> 
							<input type="text"
								   value="你可以查询电影、演员等"
								   onfocus="this.value = '';"
								   onblur="if (this.value == '') {this.value = 'Search for a movie, play, event, sport or more';}" 
						    />
						</form>
					</div>
				</div>
				
				<div class="clearfix"></div>
			</div>
			
			<!-- 导航栏 -->
			<div class="bootstrap_container">
				<nav class="navbar navbar-default w3_megamenu" role="navigation">
					<div class="navbar-header">
						<button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle">
							<span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
						</button>
						
						<a href="#" class="navbar-brand"><i class="fa fa-home"></i></a>
					</div>
					
					<!-- 导航栏左侧 -->

					<div id="defaultmenu" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
						
							<li class="active"><a href="#">主页</a></li>
							
							<li class="dropdown w3_megamenu-fw">
							<a href="movie-single.jsp" >电影</a>
							</li>
							
							<li class="dropdown w3_megamenu-fw">
							<a href="blog.jsp"> 影评</a>
							</li>
						
							<li class="dropdown w3_megamenu-fw">
							<a href="actors.jsp"> 演员</a>
							</li>
							
						</ul>
						
						<!-- 导航栏右侧-联系我们 -->

						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="#" data-toggle="dropdown"
								class="dropdown-toggle">联系我们<b class="caret"></b></a>
								<ul class="dropdown-menu">
									<li>
										<form id="contact1" action="#" name="contactform"
											method="post">
											<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
												<input type="text" name="name" id="name1"
													class="form-control" placeholder="Name"> <input
													type="text" name="email" id="email1" class="form-control"
													placeholder="Email">
											</div>
											<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
												<input type="text" name="phone" id="phone1"
													class="form-control" placeholder="Phone"> <input
													type="text" name="subject" id="subject1"
													class="form-control" placeholder="Subject">
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<textarea class="form-control" name="comments"
													id="comments1" rows="6" placeholder="Your Message ..."></textarea>
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="pull-right">
													<input type="submit" value="SEND" id="submit1"
														class="btn btn-primary small">
												</div>
											</div>
											<div class="clearfix"></div>
										</form>
									</li>
								</ul></li>
						</ul>
						

					</div>
				</nav>
			<!-- 导航栏结束 -->
			</div>
			

            <!-- 主体内容上层部分 -->
			<div class="main-banner">
			<!-- 轮播图 -->
				<div class="banner col-md-8">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li><img src="images/pic1.jpg" class="img-responsive"
									alt="" /></li>
								<li><img src="images/pic2.jpg" class="img-responsive"
									alt="" /></li>
								<li><img src="images/pic3.jpg" class="img-responsive"
									alt="" /></li>
								<li><img src="images/pic4.jpg" class="img-responsive"
									alt="" /></li>
							</ul>
						</div>
					</section>
					<!--样式 -->
					<script defer src="js/jquery.flexslider.js"></script>
					<link rel="stylesheet" href="css/flexslider.css" type="text/css"
						media="screen" />
					<script type="text/javascript">
						$(function() {
							SyntaxHighlighter.all();
						});
						$(window).load(function() {
							$('.flexslider').flexslider({
								animation : "slide",
								start : function(slider) {
									$('body').removeClass('loading');
								}
							});
						});
					</script>
				</div>
				<!-- 耻辱柱排行部分 -->
				<div class="col-md-4 banner-right">
					<div class="grid_3 grid_5">
						<div class="bs-example bs-example-tabs" role="tabpanel"
							data-example-id="togglable-tabs">
							<div id="1" margin:20px>
								<h4>本周耻辱柱</h4>
								<ul class="mov_list">
									<li>NO.1</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.2</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.3</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.4</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.5</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.6</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.7</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.8</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.9</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
								<ul class="mov_list">
									<li>NO.10</li>
									<li><a href="./gotosingle?id=1">侏罗纪世界（3D）（U / A）</a></li>
								</ul>
							</div>

						</div>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		
		
		<!-- 主体内容下层部分 -->
		<div class="footer-top-grid">
		    <!-- 主体内容下层部分【左侧影片部分】 -->
			<div class="list-of-movies col-md-8">
				<!-- 热映与上映 -->
				<div class="tabs">
					<div class="sap_tabs">
						<div id="horizontalTab"
							style="display: block; width: 100%; margin: 0px;">
							<ul class="resp-tabs-list">
								<li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>正在热映</span></li>
								<li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>本周上映</span></li>
								<li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>即将上映</span></li>
								<div class="clearfix"></div>
							</ul>
							<div class="resp-tabs-container">
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
									<ul class="tab_img">
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=2"> <img
													src="images/pic-1.jpg" class="img-responsive" alt="" /></a>
												<div class="info1"></div>
												<div class="mask"></div>
												<div class="tab_desc">
													<a href="./gotosingle?id=2">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>97</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=2"><img
													src="images/pic-2.jpg" class="img-responsive" alt="" /></a>
												<div class="info1"></div>
												<div class="mask"></div>
												<div class="tab_desc">
													<a href="./gotosingle?id=2">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>98</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=2"><img
													src="images/pic-10.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=2">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>100</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<div class="clearfix"></div>
									</ul>
								</div>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
									<ul class="tab_img">
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=1"><img
													src="images/pic-8.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>92</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=1"> <img
													src="images/pic-3.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>100</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<li class="last">
											<div class="view view-first">
												<a href="./gotosingle?id=1"><img
													src="images/pic-9.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>74</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<div class="clearfix"></div>
									</ul>
								</div>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
									<ul class="tab_img">
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=1"> <img
													src="images/pic-4.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>88</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=1"> <img
													src="images/pic-12.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>100</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<li class="last">
											<div class="view view-first">
												<a href="./gotosingle?id=1"><img
													src="images/pic-5.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
													<div class="percentage-w-t-s">
														<h5>90</h5>
														<p>
															% <br> 想看
														</p>
														<div class="clearfix"></div>
													</div>
												</div>
											</div>
										</li>
										<div class="clearfix"></div>
									</ul>
								</div>
								<div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
									<ul class="tab_img">
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=1"> <img
													src="images/pic-6.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
												</div>
											</div>
										</li>
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=1"> <img
													src="images/pic-1.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
												</div>
											</div>
										</li>
										<li>
											<div class="view view-first">
												<a href="./gotosingle?id=1"> <img
													src="images/pic-9.jpg" class="img-responsive" alt="" /></a>
												<div class="mask">
													<div class="info1"></div>
												</div>
												<div class="tab_desc">
													<a href="./gotosingle?id=1">查看详情</a>
												</div>
											</div>
										</li>
										<div class="clearfix"></div>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				
				<!-- 精选 -->
				<div class="clearfix"></div>
				<div class="featured">
					<h4>精选</h4>
					<ul>
						<li>
							<div class="f-movie">
								<div class="f-movie-img">
									<a href="./gotosingle?id=3"><img src="images/f4.jpg" alt="" /></a>
								</div>
								<div class="f-movie-name">
									<a>片名一</a>
									<p>全国</p>
								</div>
								<div class="f-buy-tickets">
									<a href="./gotosingle?id=3">查看详情</a>
								</div>
							</div>
						</li>
						<li>
							<div class="f-movie">
								<div class="f-movie-img">
									<a href="./gotosingle?id=3"><img src="images/f5.jpg" alt="" /></a>
								</div>
								<div class="f-movie-name">
									<a>片名二</a>
									<p>全国</p>
								</div>
								<div class="f-buy-tickets">
									<a href="./gotosingle?id=3">查看详情</a>
								</div>
							</div>
						</li>
						<li>
							<div class="f-movie">
								<div class="f-movie-img">
									<a href="./gotosingle?id=3"><img src="images/f6.jpg" alt="" /></a>
								</div>
								<div class="f-movie-name">
									<a >片名三</a>
									<p>全国</p>
								</div>
								<div class="f-buy-tickets">
									<a href="./gotosingle?id=3">查看详情</a>
								</div>
							</div>
						</li>
						<li>
							<div class="f-movie">
								<div class="f-movie-img">
									<a href="./gotosingle?id=1"><img src="images/f1.jpg" alt=""></a>
								</div>
								<div class="f-movie-name">
									<a>片名四</a>
									<p>全国</p>
								</div>
								<div class="f-buy-tickets">
									<a href="./gotosingle?id=1">查看详情</a>
								</div>
							</div>
						</li>
						<li>
							<div class="f-movie">
								<div class="f-movie-img">
									<a href="./gotosingle?id=1"><img src="images/f2.jpg" alt=""></a>
								</div>
								<div class="f-movie-name">
									<a>片名五</a>
									<p>全国</p>
								</div>
								<div class="f-buy-tickets">
									<a href="./gotosingle?id=1">查看详情</a>
								</div>
							</div>
						</li>
						<li>
							<div class="f-movie">
								<div class="f-movie-img">
									<a href="./gotosingle?id=1"><img src="images/f3.jpg" alt=""></a>
								</div>
								<div class="f-movie-name">
									<a>片名六</a>
									<p>全国</p>
								</div>
								<div class="f-buy-tickets">
									<a href="./gotosingle?id=1">查看详情</a>
								</div>
							</div>
						</li>
						<div class="clearfix"></div>
					</ul>
				</div>
			</div>
			
			<!-- 主体内容下层部分【右侧  排行 部分】 -->
			<div class="right-side-bar">
				<div class="top-movies-in-india">
					<h4>本周热映</h4>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>77%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>80%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>69%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>65%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>83%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>87%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>71%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>81%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>80%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li><i class="fa fa-star"></i></li>
						<li>89%</li>
						<li><a href="./gotosingle?id=4">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					
				</div>
				<div class="our-blog">
					<h5>演员推荐</h5>
					<ul class="mov_list">
						<li>NO.1</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.2</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.3</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.4</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.5</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.6</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.7</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.8</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.9</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.10</li>
						<li><a href="actors.jsp">莱昂纳多</a></li>
					</ul>
				</div>
				
				<div class="our-blog">
					<h5>佳片推荐</h5>
					<ul class="mov_list">
						<li>NO.1</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.2</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.3</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.4</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.5</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.6</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.7</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.8</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.9</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
					<ul class="mov_list">
						<li>NO.10</li>
						<li><a href="./gotosingle?id=5">侏罗纪世界（3D）（U / A）</a></li>
					</ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
		
		<!-- 主体内容最后文字 -->
		<div class="footer-top-strip">
			<p>
				<span>下次改变<i>(Friday, 19 Jun) </i>:
				</span><a href="movie-single.html">迪士尼的ABCD 2（3D）（U），</a>, <a
					href="movie-single.html"> 2 Premi Premache，</a> , <a
					href="movie-single.html">德赫克（Bhojpuri）</a> , <a
					href="movie-single.html">迪士尼的ABCD 2（2D）（U），</a>, <a
					href="movie-single.html">德赫克（Bhojpuri）</a>
			</p>
			<p>
				<span>预告 :</span><a href="movie-single.html"> 2 Premi Premache，</a>,
				<a href="movie-single.html">Acharam，Dekh柯（博杰普尔），</a>, <a
					href="movie-single.html">Entourage</a>, <a href="movie-single.html">Entourage中，Kuttram
					Kadithal</a>
			</p>
		</div>
		
	</div>

	<div class="clearfix"></div>
	
	<!--以下是  页面底部-->
	<div class="copy-rights text-center">
		<p>
			© 2018 My Show | Design by  <a
				href="#">七仙女</a>
		</p>
	</div>
	
	<script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>
	<!--以上是  页面底部-->
	
</body>
</html>