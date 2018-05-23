
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>电影评论页</title>
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
						 <a href="movie-personal.jsp">
						 <button class="btn btn-primary" data-toggle="modal" >  		            
                			<td style="font-weight:900;font-size: 100%;color:white;"> ${user.username }  <td> 	 
                		 </button>  
                	     </a>      
                		</c:if>              		
               	    	<c:if test="${empty  user.user_id }" >	
               	    	 <button class="btn btn-primary" data-toggle="modal" onclick="displayDate()">  		           
                			<td  style="font-weight:900;font-size: 100%;color:white;">未登录</td> 	
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
	    
		<div class="container">
		  <div class="main-content">
			<div class="header">
				<div class="logo">
					<a href="index.html"><h1>My Show</h1></a>
				</div>
				
				<!--以下是 搜索功能？ -->
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
				<!--以上是 搜索功能 -->
				
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
						
							
							<li class="dropdown w3_megamenu-fw"><a href="indexshow">主页</a></li>
							
							<li class="dropdown w3_megamenu-fw">
							<a href="movielist" >电影</a>
							</li>
							
							<li class="dropdown w3_megamenu-fw">
							<a href="charts/">排行榜</a>
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
    
   <!--面包屑标签  -->
	<ol class="breadcrumb">
			  <li><a href="indexshow">首页</a></li>
			  <li class="active">影评详情</li>
	</ol>
	
	<!--内容（数据库读取） -->
	<div class="blog-section">
		<div class="col-md-8 blog-posts">
			<h3 class="post">${movie.movie_name}</h3>
				<div class="last-article">
					<p class="artext">${movie.movie_summary}</p>
					<h3>${movie.movie_name}</h3>
					<img alt="" src="${movie.movie_pic}">
					<p class="artext">${movie.movie_summary}</p>
					<ul class="categories">
						<li><a href="#">Markets</a></li>
						<li><a href="#">Business</a></li>
						<li><a href="#">Sport</a></li>
						<li><a href="#">Special reports</a></li>
						<li><a href="#">Culture</a></li>
					</ul>
					<div class="clearfix"></div>
					
					<!-- 分享和打分功能  -->
					<!--  
					<ul class="share">
						<li>share:</li>
						<li>							
							<div id="fb-root"></div>
							<script>(function(d, s, id) {
							  var js, fjs = d.getElementsByTagName(s)[0];
							  if (d.getElementById(id)) return;
							  js = d.createElement(s); js.id = id;
							  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
							  fjs.parentNode.insertBefore(js, fjs);
							}(document, 'script', 'facebook-jssdk'));</script>
	   						
	   						<div class="fb-like" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-action="like" data-show-faces="true" data-share="false"></div></li>
						<li><a href="https://twitter.com/w3layouts" class="twitter-share-button" data-dnt="true">Tweet</a>
						<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script></li>
					</ul>
					-->
					<div class="comments">
						<h5>评论</h5>
						
						<c:forEach items="${movie.movieCommentSet}" var = "p">
							<div class="comment">
							<div class="client">
								<img src="${p.user.avatar}" alt="">
							</div>
							<div class="client-message">
								<p><a href="#">${p.user.username}</a><i class="fa fa-calendar"></i>${p.comment_time}</p>
								<h6>${p.comment_text}</h6>
							</div>
							<div class="clearfix"></div>
						</div>
							
						</c:forEach>
						
						
						<form action = "/movie/leave_comment" method = "get">
							<input type = "text" style="display:none" name = "user_id" value = "${user.user_id}">
							<input type = "text" style="display:none" name = "movie_id" value = "${movie.movie_id}">
							<textarea type="text" name = "comment_text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your comment...';}" required="">输入你想要提交的内容。。。</textarea>
							<input type = "submit" value="提交">
						</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div>
		<div class="col-md-4 blog-categories" style="float:right">
			<h3 class="post">主演名单</h3>
			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="actors.jsp">莱昂纳多</a></p>
			<img src="images/li3.jpg"width="70"height="100"></div>
		</div>
		<div class="col-md-4 blog-categories" style="float:right">
			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="actors.jsp">莱昂纳多</a></p>
			<img src="images/li3.jpg"width="70"height="100"></div>
		</div>
		<div class="col-md-4 blog-categories" style="float:right">
			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="actors.jsp">莱昂纳多</a></p>
			<img src="images/li3.jpg"width="70"height="100"></div>
		</div>
		<div class="col-md-4 blog-categories" style="float:right">
			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="actors.jsp">莱昂纳多</a></p>
			<img src="images/li3.jpg"width="70"height="100"></div>
		</div>
		
		</div>
		<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
	</div>
	
	
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
 
</body>
</html>