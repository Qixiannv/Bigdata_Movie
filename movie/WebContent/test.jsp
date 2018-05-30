<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<form action="change_movie_name" method="get">
	<input type = "text" name = "id"/>
	<input type = "text" name = "name"/>
	<input type = "submit" value = "改名">
	</form>
	
	<form action="change_movie_summary" method="get">
	<input type = "text" name = "id"/>
	<input type = "text" name = "summary"/>
	<input type = "submit" value = "改简介">
	</form>
	
	<form action="change_movie_time" method="get">
	<input type = "text" name = "id"/>
	<input type = "text" name = "time"/>
	<input type = "submit" value = "改时长">
	</form>
	
	<form action="delete_movie" method="get">
	<input type = "text" name = "id"/>
	<input type = "submit" value = "删除电影">
	</form>
	
</body>
</html>