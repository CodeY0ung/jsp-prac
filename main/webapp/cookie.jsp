<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cookie 연습</h1>
	<hr>
	<h3> 현재 쿠키들</h3>
	<%
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies){
			out.println(c.getName()+" : "+ c.getValue()+"<br>");
		}
	%>
	<a href="cookieConfig.jsp">cookie config</a><br>
	<a href="content.jsp">Go content page~</a><br>
	<a href="cookieLogin.jsp">cookie login</a><br>
	<a href="/logout">cookie logout</a><br>
	<a href="/cookiePopup.jsp">cookie popup</a>
</body>
</html>