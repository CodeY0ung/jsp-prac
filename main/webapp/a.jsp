<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String s = "hello";
	pageContext.setAttribute("s",s);
	
	
	// String param = request.getParameter("x");
	request.setAttribute("x","hi");
	// b.jsp로 넘기면서 request영역을 a.jsp의 request 영역으로 복사해서 넘기겠다.
	// url에는 a.jsp라고 뜨는데 내용은 b.jsp가 뜸. 서버가 뭘 반환하던지 client의 요청은 달라지지않는다.
	request.getRequestDispatcher("b.jsp").forward(request,response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>a.jsp</h1>
	<hr>
	<p>${s }</p>
	<a href="b.jsp">b.jsp</a>
</body>
</html>