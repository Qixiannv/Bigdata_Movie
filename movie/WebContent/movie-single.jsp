<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<%@ page import="com.front.user.entity.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电影详情页</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/menu.css" />
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
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
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
			    	  <c:if test="${! empty  user.user_id }" >
						 <button class="btn btn-primary" data-toggle="modal" >  		           
                			 <a href="movie-personal.jsp">
                			 ${user.username }   
                			 </a>  
                		 </button>        
                		</c:if>              		
               	    	<c:if test="${empty  user.user_id }" >	
               	    	 <button class="btn btn-primary" data-toggle="modal" onclick="displayDate()">  
               	    	    <a>			           
                			<td>未登录</td> 
                			</a>  
                		 </button>           
                		</c:if>
                
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
					<script>
				function displayDate()
				{
					$('#myModal').modal('show');
				}	
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
						
							<li class="dropdown w3_megamenu-fw"><a href="indexshow">主页</a></li>
							
							
							<li class="active">
							<a href="movielist" >电影</a>
							</li>
							
							<li class="dropdown w3_megamenu-fw">
							<a href="charts/">影评</a>
							</li>
						
							<li class="dropdown w3_megamenu-fw">
							<a href="show_actor"> 演员</a>
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
    
     <!--主体内容-->

	<div class="m-single-article">
		<div class="article-left">
			<h3>${movie.getMovie_name() } <span> <i class="fa fa-heart"></i> 99%</span></h3>
			<p><a class="m-green" href="#">标签位置</a></p>
			<div class="clearfix"></div>
			<div class="article-time-strip">
				<div class="article-time-strip-left">
					<p>电影时长<span><i class="fa fa-clock-o"></i>2 小时 30 分钟 </span>  &nbsp;&nbsp; 上映时间 <span><i class="fa fa-calendar"></i> 2015-8-25</span></p>
				</div>
				<div class="clearfix"></div>
				<div class="article-img">
					<img href="${movie.getMovie_pic() } }">
				</div>
				<div class="review-info">
								<h6 class="span88">${movie.getMovie_name() }</h6>
								<p class="dirctr" ><a href="">主演： </a>没有演员字段</p>								
								<p class="ratingview">专家评价:</p>
								<div class="rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div>
								<p class="ratingview">
								&nbsp;3.5/5  
								</p>
								<div class="clearfix"></div>
								<p class="ratingview c-rating">观众评价:</p>
								<div class="rating c-rating">
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
									<span>☆</span>
								</div> 	
								<p class="ratingview c-rating">								
								&nbsp; 3.3/5</p>
								<div class="clearfix"></div>
								<div class="yrw">
									<div class="dropdown-button">           			
										<select class="dropdown" tabindex="9" data-settings="{&quot;wrapperClass&quot;:&quot;flat&quot;}">
										<option value="0">你的评分</option>	
										<option value="1">1.（差）</option>
										<option value="2">1.5(平均较差)</option>
										<option value="3">2.（平均）</option>
										<option value="4">2.5(中档)</option>
										<option value="5">3.（可看）</option>
										<option value="6">3.5(好)</option>
										<option value="7">4.5(非常好)</option>
										<option value="8">5.（很出色）</option>
									  </select>
									</div>
									<div class="rtm text-center">
										<a href="#">再看一遍</a>
									</div>
									<div class="clearfix"></div>
								</div>
								<p class="info" ><strong>主演</strong>: &nbsp;&nbsp;&nbsp;&nbsp;没有字段</p>
								<p class="info"><strong>类型</strong>: &nbsp;&nbsp;&nbsp;&nbsp;</p>
								<p class="info"><strong>简介</strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${movie.getMovie_summary() }</p>
								<p class="info"><strong>时长</strong>:&nbsp;&nbsp;&nbsp; &nbsp; ${movie.time}分钟</p>
							</div>
			</div>
		</div>
		<div class="article-right">
			<div class="grid_3 grid_5">
				   <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
			<ul id="myTab" class="nav nav-tabs" role="tablist">
			  <li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">周二上映</a></li>
			  <li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">周三上映</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
			  <div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">				  
                 <p class="m-s-t">地点: 万达国际影城</p>
				 <a class="show-time" href="movie-select-show.html">下午06:30</a>
				 <div class="clearfix"></div>
				  <a class="more-show-time" href="movie-select-show.html">更多上映时间</a>
			  </div>
			  <div role="tabpanel" class="tab-pane fade" id="profile" aria-labelledby="profile-tab">
				 <p class="m-s-t">地点: 金棕榈国际影城</p>
				 <a class="show-time" href="movie-select-show.html">12:45 PM</a><a class="show-time" href="movie-select-show.html">下午06:30</a>
				 <div class="clearfix"></div>
				 <a class="more-show-time" href="movie-select-show.html">更多上映时间</a>
			  </div>
			</div>
		   </div>
		  </div>
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="reviews-tabs">
      <!-- Main component for a primary marketing message or call to action -->
      <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
        <li class="test-class active"><a class="deco-none misc-class" href=""> 概要</a></li>
        <li class="test-class active"><a class="deco-none misc-class" href="./gotosingle?id=${movie.movie_id}">评论</a></li>
      </ul>

      <div class="tab-content responsive hidden-xs hidden-sm">
        <div class="tab-pane active" id="how-to">
		 <p><strong> 导演 :</strong> <a href="#">林超贤</a></p>
          <p> <strong>出品公司:</strong> <a href="#">博纳影业</a> ,<a href="#">中国人民解放军海政电视艺术中心</a> ,<a href="#">星梦工场</a>, <a href="#">英皇影业</a>
		  <p>${movie.getMovie_summary() } <br>
		  <a href="mail-to:mail@example.com">https://baike.baidu.com/item/</a></p>
          
     
        </div>
        
        
      </div>		
	</div>
	<div class="footer-top-strip">
		<p><span>上映城市 : </span><a href="movies.html">北京</a>, <a href="movies.html">石家庄</a>, <a href="movies.html">广州</a>, <a href="movies.html">上海</a>, <a href="movies.html">深圳</a>, <a href="movies.html">成都</a>, <a href="#">西安</a>, <a href="movies.html">哈尔滨</a></p>
		<p><span>附近影院: </span><a href="movie-single.html"> 万达国际影城 </a>
			<p><span>影视动态 <i>周五</i>: </span><a href="movie-single.html">无变动</a></p>
		</div>
		</div>
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