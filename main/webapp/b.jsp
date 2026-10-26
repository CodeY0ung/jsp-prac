<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// String param = request.getParameter("x");
	// pageContext.setAttribute("x", param);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>b.jsp</h1>
	<!-- parameter로 request 영역에 들어간 애들은 param.으로 접근해야함. -->
	<p>${param.x }</p>
	<!-- setAttribute로 request에 영역에 저장한 data -->
	<p>${x }</p>
	<!--  -->
</body>
</html>