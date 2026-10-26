<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String page1 = "page 영역 데이터";
	String request1 = "request 영역 데이터";
	String session1 = "session 영역 데이터";
	String application1 = "application 영역 데이터";
	
	// servlet이 가지고 있는 4대 저장소. el 표기법은 이 4가지 저장소에 값을 넣어야 가능함. 지역변수로 선언한건 못 읽는다.
	// 페이지 내에서 우선순위는 pageContext,request,session,application 순서임.
	pageContext.setAttribute("x", page1); // result2라는 이름에 result2 값을 넣는다.
	request.setAttribute("x",request1); 
	session.setAttribute("x",session1); // 현재 browser를 사용중인 사용자
	application.setAttribute("x", application1); // 이 웹 프로그램을 이용하는 모든 대상
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>4대 저장소 데이터 보기 : ${x}</div>
	
	<a href="p4.jsp">p4 페이지로 이동</a>
</body>
</html>