<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	boolean show = true;

	Cookie[] cookies = request.getCookies();
	if(cookies!=null){
		for(Cookie c : cookies){
			if(c.getName().equals("hidePopup")){
				show = false;
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookie 팝업 적용 페이지</h1>
	<%if(show){ %>
		<div>
			<form action="/hidePopup" method="post">
				<p>popup창</p>
				<button>10초 동안 보지않기</button>
			</form>
		</div>
	<%} %>
	<a href="cookie.jsp">cookie.jsp</a>
</body>
</html>