<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Content Page</h1>
	<hr>
	<%
		int count = 0;
		Cookie[] cookies = request.getCookies();
		for(Cookie c : cookies){
			if(c.getName().equals("count")){
				count = Integer.parseInt(c.getValue());
			}
		}
		count++;
		
		// 기존에 있는 쿠키와 같은 name,path,domain의 쿠키를 생성하면 기존 쿠키의 value를 갱신한다. 
		Cookie cookie = new Cookie("count", String.valueOf(count));
		cookie.setMaxAge(60);
		// 현재 http 요청에대한 응답에 cookie를 실어서 날림. 새로고침, 다른페이지에서 content.jsp로 접근시 cookie가 갱신됨.
		response.addCookie(cookie);
	%>
	<p>방문 횟수 : <%= count %></p>
	<a href="cookie.jsp">cookie.jsp</a>
</body>
</html>