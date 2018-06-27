<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>电影搜索</title>
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
<script type="text/javascript">
	//查看用户名是否被注册   ajax
	function checkName(str) {
		var xmlhttp;
		if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
			xmlhttp = new XMLHttpRequest();
		} else {// code for IE6, IE5
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				var i = xmlhttp.responseText;
				if (i == "1") {//用户名没有被注册

					document.getElementById("emailMessage").innerHTML = "<span style='color:green'>邮箱可以使用!</span>";

				} else {

					document.getElementById("emailMessage").innerHTML = "<span style='color:red'>邮箱已经注册!</span>";
				}
			}
		}

		xmlhttp.open("GET", "registCheck?email=" + str, true);
		xmlhttp.send();
	}
	//邮箱格式验证
	function validatemail() {
		var mailElement = document.getElementById("mail");
		var msgElement = document.getElementById("mailMessage");
		if (mailElement.value == "") {

			msgElement.innerHTML = "<span style='color:red'>邮箱不能为空!</span>";
			return false;
		}
		if (/^\w+@\w+\.\w+$/.test(mailElement.value)) {

			msgElement.innerHTML = "<span style='color:green'>邮箱格式正确!</span>";
			return true;
		} else {

			msgElement.innerHTML = "<span style='color:red'>邮箱输入格式错误!</span>";
			return false;
		}
	}
	function validatphone() {
		var mailElement = document.getElementById("phone");
		var msgElement = document.getElementById("phoneMessage");
		if (mailElement.value == "") {

			msgElement.innerHTML = "<span style='color:red'>手机号不能为空!</span>";
			return false;
		}
		if (/^1[3|4|5|8][0-9]\d{4,8}$/.test(mailElement.value)) {

			msgElement.innerHTML = "<span style='color:green'>手机号格式正确!</span>";
			return true;
		} else {

			msgElement.innerHTML = "<span style='color:red'>手机号输入格式错误!</span>";
			return false;
		}
	}
	

	//第一次输入密码时验证,非空，长度
	function validatePassword() {
		var msgElement = document.getElementById("passMessage");
		var passElement = document.getElementById("pass");
		if (passElement.value == "") {
			msgElement.innerHTML = "<span style='color:red'>密码不能为空!</span>";
			return false;
		}
		if (/^\w{6,20}$/.test(passElement.value)) {
			msgElement.innerHTML = "<span style='color:green'>密码格式正确!</span>";
			return true;
		} else {
			msgElement.innerHTML = "<span style='color:red'>密码长度应该在6-20之间!</span>";
			return false;
		}
	}

	
	function validate() {
        return validateName()&&validatePassword()&&validateRePassword()&&validatemail();
    }
</script>
<body>
	<!-- header-section-starts -->
	<div class="header-top-strip">
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
                	     <a href = "remove_user">注销</a>      
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
															<input type="text" class="form-control" id="email" name="email" placeholder="email"  onblur="check_mail(document.getElementsByName('email')[0].value)"/>
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
														<label for="email" class="col-sm-2 control-label">Email</label>
															<div class="col-sm-10" >
																<input type="text" id="mail" value="E-Mail" name="email"
																					onfocus="this.value = '';"
																					onblur="if (this.value == '') {this.value = 'E-Mail';}validatemail()">
															</div>
														<div >
											            	<span id="mailMessage"></span>
														</div>
													</div>
													<div class="form-group">
														<label for="mobile" class="col-sm-2 control-label">
															Mobile</label>
														<div class="col-sm-10">
															<input type="text" id="phone" value="Phone" name="phone"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Phone';}validatphone()">
														</div>
														<div >
											<span id="phoneMessage"></span>
										</div>
													</div>
													<div class="form-group">
														<label for="password" class="col-sm-2 control-label">
															Password</label>
														<div class="col-sm-10">
															<input type="password" id="password"  name="password"
																value="6-20个字符" 
							onfocus="this.value = '';this.type='password'"
							onblur="if (this.value == '') {this.value = '6-20个字符';this.type='text'}validatePassword();"> 
														</div>
														<div>
											<span id="passMessage"></span>
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
					<div >
						<form action = "search_movie"  >
						    <div class="search2">
							  <i class="fa fa-search"></i> 
							  <input type="text"
								   value="你可以查询电影、演员等"
								   name = "name"
								   onfocus="this.value = '';"
								   onblur="if (this.value == '') {this.value = '你可以查询电影、演员等';}" 
						     />
						     </div>
						     <input style="
						     		height:35px;
						     		background-image:url(../images/icon1.png);
						     		position: relative;
						     		left: 345px;
						     		top:-35px;"
						            type="submit" 
    								value="搜索"/>
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
						
							<li class="dropdown w3_megamenu-fw"><a href="showAll.do" >主页</a></li>
							
							<li class="dropdown w3_megamenu-fw">
							<a href="showAll.do" >电影</a>
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


	<div class="person">
		<h3>搜索：<span style="color: #20B2AA">名字</span></h3>
		</br>
		<div>
			<a href="#get-actors">
				<button class="btn btn-primary" data-toggle="modal" ">  		           
                	<li class="dropdown w3_megamenu-fw">包含关键字的演员</li>	
                </button>
			</a>
			<a href="#get-movies">	
        		<button class="btn btn-primary" data-toggle="modal" ">  		           
                	<li class="dropdown w3_megamenu-fw">包含关键字的电影</li>	
                </button>
        	</a>
        </div>
		<div class="person-grids">
			<br/>
			<div class="col-md-6 person-grids-left" style="width: 65%">
			<div>
			<a name="get-actors">演员</a>
			<c:forEach items = "${actorresult}" var = "a">
				<div class="person-grid">
					<div class="person-img">
						<a href="/movie/gotoactor?actor_id=${a.actor_id }"><img src="${a.actor_pic}"style="width: 100px;height: 120px" ></a>
					</div>
					<div class="person-details">
						<a href="/movie/gotoactor?actor_id=${a.actor_id }">${a.actor_name}</a>
						<p style="overflow:hidden;text-overflow:ellipsis;
								display:-webkit-box;
								-webkit-box-orient:vertical;
								-webkit-line-clamp:5	;">${a.actor_summary}</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</c:forEach>
		    </div>
			<div>
			<a name="get-movies">电影</a>
			<c:forEach items = "${searchresult}" var = "a">
			
				<div class="person-grid">
					<div class="person-img">
						<a href="/movie/gotosingle?id=${a.movie_id }"><img src="${a.movie_pic}"style="width: 100px;height: 120px" ></a>
					</div>
					
					<div class="person-details">
						<a href="/movie/gotosingle?id=${a.movie_id }">${a.movie_name}</a>
						<p style="overflow:hidden;text-overflow:ellipsis;
								display:-webkit-box;
								-webkit-box-orient:vertical;
								-webkit-line-clamp:5 	;">${a.movie_summary}</p>
					</div>
					<div class="clearfix"></div>
				</div>			
			</c:forEach>
		    </div>
			</div>
			<div class="col-md-6 person-grids-right"style="width:35%; padding-left: 50px; padding-top: 50px;">
				<div style="">
				<div style="color: #006400">添加网站没有的电影/电视剧· · · · · ·</div>
					<div class="link"><a href="">&gt; 添加电影/电视剧 名字</a></div>
					<div class="link"><a href="">&gt; 添加影人 名字</a></div></div>
				<div class="sc-iwsKbI ckqOZf">
					<div style="color: #006400">相关搜索· · · · · ·</div>
					<div class="link"><a href="">&gt; 搜索"名字"的 电影</a></div><div class="link"><a href="">&gt; 搜索"名字"的 影评</a></div><div class="link"><a href="">&gt; 搜索"名字"的 演员</a></div></div>
				<br/>
				<div><a href="">&gt; 对搜索不满意？给我们反馈</a></div>
				
			</div>
			<div class="clearfix"></div>
		</div>

	</div>
	<div class="clearfix"></div>
		
		<div class="footer-top-strip">
		<div style="align-content: center; padding-left: 500px; ">

		  <a>&lt;前页</a>
		  <a>1</a>
		  <a href="">2</a>
		  <a href="">3</a>
		  <a href="">4</a>
		  <a href="">5</a>
		  <a href="">6</a>
		  <a href="">7</a>
		  <a href="">8</a>
		  <a href="">后页&gt;</a></div>
		</div>
	</div>

			<div class="copy-rights text-center">
				<p>
			© 2018 My Show | Design by  <a
				href="#">七仙女</a>
		</p>
			</div>
	</div>
 <script src="js/responsive-tabs.js"></script>
    <script type="text/javascript">
      $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      ( function( $ ) {
          // Test for making sure event are maintained
          $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
          } );
          fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
      } )( jQuery );

    </script>
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
				<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>