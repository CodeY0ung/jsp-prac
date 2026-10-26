<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%!
	boolean loginCheck(String id, String pw){
		if(id.equals("admin") && pw.equals("1234")){
			return true;
		}
		else{
			return false;
		}
	}
	
%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	boolean resultTf = loginCheck(id, pw);
	String resultMessage;
	if(resultTf){
		resultMessage = "로그인 성공! " +id+"님 환영합니다.";
	}else{
		resultMessage = "로그인 실패.. 정보를 다시 확인하세요.";
	}	
%>
<body>
	<h1>
		<%= resultMessage %>
	</h1>
</body>
</html>