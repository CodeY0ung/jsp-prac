<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션값 얻어오기</h1>
	<%
		session.setAttribute("id","abc");
		session.setAttribute("pw","1234");
		session.setAttribute("name","James");
		
		String id = (String)session.getAttribute("id");
		String pw = (String)session.getAttribute("pw");
		out.println(id+"<br>");
		out.println(pw+"<br>");
		
		// 향상된 for문과 같은거임
		Enumeration<String> names = session.getAttributeNames();
		while(names.hasMoreElements()){
			String name = names.nextElement();
			String value = session.getAttribute(name).toString();
			out.print(name + " : " + value + "<br>");
		}
	%>
	
	<a href="session_info.jsp">세션 정보 보기</a>
</body>
</html>