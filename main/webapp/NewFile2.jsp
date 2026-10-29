<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<h1>액션 태그</h1>
<hr>
<p>
이 파일은 red.jsp 입니다.<br>
브라우저에 배경색이 빨간색으로 나타날까요?<br>
노란색으로 나타날까요?
</p>
<hr>
<p>forward 액션 태그가 실행되면 이 페이지의 내용은 출력되지 않습니다.</p>
<jsp:forward page="yellow02.jsp">
	<jsp:param name="url" value="red02.jsp"/>
	<jsp:param name="news" value="happy new year"/>
</jsp:forward>
</body>
</html>