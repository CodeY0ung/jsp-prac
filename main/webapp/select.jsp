<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="domain.Student"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@taglib prefix ="c" uri="jakarta.tags.core" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<%
	List<Student> sl = (List<Student>)request.getAttribute("sl");
	pageContext.setAttribute("sl", sl);
%>

	<h1>학생 목록</h1>
	<hr>
	<table border = "1">
	<tbody>
		<tr>
			<th>번호</th><th>이름</th><th>학과</th><th>성별</th><th>키</th><th>몸무게</th>
		</tr>
		<c:forEach var="s" items="${sl}">
		<tr>
			<td>${s.stu_no }</td>
			<td>${s.stu_name }</td>
			<td>${s.stu_dept }</td>
			<td>${s.gender }</td>
			<td>${s.stu_height }</td>
			<td>${s.stu_weight }</td>
		</tr>
		</c:forEach>
	</tbody>
	</table>
</body>
</html>