<%@page import="domain.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc.jsp</title>
</head>
<style>
	table, td{
	border: 1px solid black;
	border-collapse: collapse;
	}
</style>
<body>
<%
	String url = "jdbc:oracle:thin:@localhost:1521:testdb";
	String user = "lwy";
	String password = "1234";
	Class.forName("oracle.jdbc.OracleDriver");

	Connection conn = DriverManager.getConnection(url, user, password);
	
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT * FROM student");
%>
	<table>
<%
	while(rs.next()){
%>
		<tr>
			<td><%= rs.getInt("stu_no") %></td>
			<td><%= rs.getString("stu_name") %></td>
			<td><%= rs.getString("stu_dept") %></td>
			<td><%= rs.getString("stu_gender") %></td>
		</tr>
<%
	}
%>	
	</table>
</body>
</html>