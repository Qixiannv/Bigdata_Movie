<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
															<input type="text" id="mail" value="E-Mail" name="mail"
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
	
</body>
</html>