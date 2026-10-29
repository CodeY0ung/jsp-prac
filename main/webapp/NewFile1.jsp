<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	response.sendRedirect("result.jsp?nickname=대장");
	// response로 하면 encoding 문제가 발생해서 인코딩 처리 해줘야함.
	// request.forward는 인코딩 문제가 발생하지 않는다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>