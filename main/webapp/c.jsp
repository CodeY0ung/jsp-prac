<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("y", "page-y");
	request.setAttribute("y", "request-y");
	session.setAttribute("y", "session-y");
	application.setAttribute("y","application-y");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>${pageScope.y }</p>
<p>${requestScope.y }</p>
<p>${sessionScope.y}</p>
<p>${applicationScope.y }</p>

<a href="d.jsp">d.jsp</a>
</body>
</html>