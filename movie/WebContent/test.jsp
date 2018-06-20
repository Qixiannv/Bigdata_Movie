<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<form action = 'insertrate' method = 'get'>
		<input type = 'text' name = "movie_id"/>
		<input type = 'text' name = "user_id"/>
		<input type = 'text' name = "rate"/>
		<input type = "submit">
	</form>
	
	
</body>
</html>