<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cookie 설정</h1>
	<%
		Cookie cookie = new Cookie("myCookie", "맛있따.");
		cookie.setMaxAge(60*60); // 1시간
		response.addCookie(cookie);
	%>
	<hr>
	<h1>쿠키 설정 직후 쿠키값 확인하기</h1>
	<%
		Cookie[] cookies = request.getCookies();
		if(cookies != null){
			for(Cookie c : cookies){
				String cookieName = c.getName();
				String cookieValue = c.getValue();
				out.print(String.format("%s : %s<br>", cookieName, cookieValue));
			}
		}
	%>
	<a href="cookie.jsp">cookie.jsp</a>
</body>
</html>