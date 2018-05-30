<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<form action="change_actor_name" method="get">
	<input type = "text" name = "actor_id"/>
	<input type = "text" name = "actor_name"/>
	<input type = "submit" value = "改名">
	</form>
	
	<form action="change_actor_summary" method="get">
	<input type = "text" name = "actor_id"/>
	<input type = "text" name = "actor_summary"/>
	<input type = "submit" value = "改简介">
	</form>
	
	<form action="change_movie_time" method="get">
	<input type = "text" name = "id"/>
	<input type = "text" name = "time"/>
	<input type = "submit" value = "改时长">
	</form>
	
	<form action="delete_actor" method="get">
	<input type = "text" name = "actor_id"/>
	<input type = "submit" value = "删除演员">
	</form>
	
	<form action="delete_user" method="get">
	<input type = "text" name = "id"/>
	<input type = "submit" value = "删除用户">
	</form>
	
	<form action="create_actor" method="get">
	<input type = "text" name = "actor_name"/>
	<input type = "text" name = "actor_summary"/>
	<input type = "text" name = "actor_pic"/>
	
	<input type = "submit" value = "加演员">
	</form>
	
</body>
</html>