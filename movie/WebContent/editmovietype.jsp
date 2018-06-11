<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加电影类型-后台管理系统</title>
</head>
<body>
	<form action = "/movie/addtype" method = "get">
			<input type = "text" style="display:none" name = "movie_id" value = "${movie.movie_id}">
			<textarea type="text" name = "typename" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'typename';}" required="">输入标签名</textarea>
			<input type = "submit" value="提交">
	</form>
</body>
</html>