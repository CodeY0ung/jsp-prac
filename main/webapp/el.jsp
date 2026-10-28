<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el 사용 연습</h1>
	<hr>
	<p>${10 mod 3 }</p>
	<p>${10 % 3 }</p>
	<p>${10 == 10 }</p>
	<p>${10 eq 10 }</p>
	<p>${10 != 10 }</p>
	<p>${10 ne 10 }</p>
	<p>${10 > 10 }</p>
	<p>${10 gt 9 }</p>
	<p>${8 lt 9 }</p>
	<p>${8 lt 7 }</p>
	<p>${8 ge 7 }</p>
	<p>${8 ge 8 }</p>
	<p>${7 le 8 }</p>
	<p>${7 le 7 }</p>
	<hr>
	<p>파라미터 확인</p>
	<p>${not empty param.id }</p>
	<p>${param.id == null }</p>
	<p>${param.id == "" }</p>
	<%
		pageContext.setAttribute("score",50);
	%>
	<p>${score >= 60 ? "합격":"불합격" }</p>
	<hr>
	<a href="select">학생 목록 조회</a>
	<hr>
	<a href="eltest.jsp?">el 연습 페이지 파라미터</a>
	
	
</body>
</html>