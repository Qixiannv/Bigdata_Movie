<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>演员页</title>
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
			    <a href="index-loading.jsp">
			    	<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">   
						<c:if test="${! empty  user.user_id }" >				           
                			 ${user.username }               
                		</c:if>
                		<c:if test="${empty  user.user_id }" >				           
                			<td>未登录</td>              
                		</c:if>
                	</button>
                </a>
                
                <!-- 以下删除 -->
				
				<!-- 以上删除 -->	
				<script>
					$('#myModal').modal('show');
				</script>
			</div>
		
			<div class="clearfix"></div>
		</div>
	</div>
	
	<!-- 以上是header,以下是主体部分 -->
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
						    <li class="dropdown w3_megamenu-fw">
							<a href="index.jsp" >主页</a>
							</li>
							<li class="dropdown w3_megamenu-fw">
							<a href="actors.jsp"> 电影</a>
							
						
							<li class="dropdown w3_megamenu-fw">
							<a href="blog.jsp"> 影评</a>
							</li>
							
							<li class="active"><a href="#">演员</a></li>
							
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
    
<!-- 面包屑标签-->

	<ol class="breadcrumb">
			  <li><a href="index.html">首页</a></li>
			  <li class="active">演员介绍</li>
	</ol>

	<div class="blog-section">
		<div class="col-md-8 blog-posts">
			<h3 class="post">${actor.actor_name}</h3>
				<div class="last-article">
					<p class="artext">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${actor.actor_summary}</p>
					<h3></h3>
					<img src="${actor.actor_pic}" style="width:300px;height:458px;">>
					<p class="artext"></p>
					<ul class="categories">
						<li><a href="#"></a></li>
						<li><a href="#"></a></li>
						<li><a href="#"></a></li>
						<li><a href="#"></a></li>
						<li><a href="#"></a></li>
					</ul>
					<div class="clearfix"></div>
					<ul class="share">
						<li></li>
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
						<li><a href="https://twitter.com/w3layouts" class="twitter-share-button" data-dnt="true"></a>
						<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script></li>
					</ul>
					<div class="comments">
						<h5>评论</h5>
						<c:forEach items = "${actor.actorCommentSet}" var = "a">
							<div class="comment">
							<div class="client">
								<img src="${a.user.avatar}" alt="">
							</div>
							<div class="client-message">
								<p><a href="#">${a.user.username}</a><i class="fa fa-calendar"></i>${a.comment_time}</p>
								<h6>${a.comment_text}</h6>
							</div>
							<div class="clearfix"></div>
						</div>
						</c:forEach>
						
						<div class="comment">
							<div class="client">
								<img src="images/c1.jpg" alt="">
							</div>
							<div class="client-message">
								<p><a href="#">john doe</a><i class="fa fa-calendar"></i>2 hours ago</p>
								<h6>莱昂纳多保持着前进的动力，他做到了角色在情感和心理上的真实化表演，无论它是如何的丑陋，幼稚或是令人费解。</h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="comment">
							<div class="client">
								<img src="images/c2.jpg" alt="">
							</div>
							<div class="client-message">
								<p><a href="#">Allon poe</a><i class="fa fa-calendar"></i>6 hours ago</p>
								<h6>莱昂纳多作为一个演员，颜值真的无可挑剔，且电影的豆瓣评分均分超过7.5分，这对一个演员而言已经很了不起了。</h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<form action = "/movie/actor_comment" method = "get">
							<input type = "text" style="display:none" name = "actor_id" value = "1">
							<input type = "text" style="display:none" name = "user_id" value = "1">
							<textarea type="text" name = "comment_text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your comment...';}" required="">Your comment...</textarea>
							<input type = "submit" value="submit">
						</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<div class="col-md-4 blog-categories">
			<h3 class="post">参演电影</h3>
			
			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="./gotosingle?id=6">不一样的天空</a></p>
			<img src="images/lee1.jpg"width="70"height="100"></div>

			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="./gotosingle?id=6">罗密欧与朱丽叶</a></p>
			<img src="images/lee2.jpg"width="70"height="100"></div>			
			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="./gotosingle?id=6">不一样的天空</a></p>
			<img src="images/lee1.jpg"width="70"height="100"></div>

			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="./gotosingle?id=6">罗密欧与朱丽叶</a></p>
			<img src="images/lee2.jpg"width="70"height="100"></div>			
			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="./gotosingle?id=6">不一样的天空</a></p>
			<img src="images/lee1.jpg"width="70"height="100"></div>

			<div style="border-style: solid none;border-color: #f5f5dc;border-width: 1px ;padding:10px 20px;">
			<p><a href="./gotosingle?id=6">罗密欧与朱丽叶</a></p>
			<img src="images/lee2.jpg"width="70"height="100"></div>
		</div>
				<div class="clearfix"></div>
	</div>
	<div class="clearfix"></div>
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