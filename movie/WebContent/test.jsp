<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<c:forEach items = "${actorlist}" var = "a">
		<h1>${a.actor_name}</h1>
	</c:forEach>
	<form action="show_actor" method="get">
	<input type="submit" value="tijiao">
		
	</form>
	
</body>
</html>