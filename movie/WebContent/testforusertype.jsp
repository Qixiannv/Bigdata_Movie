<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="addUserType" method="get">
	<select name = "tid">
    	<c:forEach items="${types }" var="t">
        <option value="${t.getType_id() }" name="">${t.getType_name() }</option>
        </c:forEach>
    </select>
    <input type="submit"/>
    </form>

</body>
</html>