<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="member" class="domain.Member" scope="page"/>
	<!-- * 한 번으로 request.getParameter 3번 써야할 일을 대체한다.bean은 사실 쓸모가 이거 하나밖에없다. -->
	<jsp:setProperty property="*" name="member"/>
	
	이름 : <jsp:getProperty property="name" name="member"/><br>
	나이 : <jsp:getProperty property="age" name="member"/><br>
	성별 : <jsp:getProperty property="gender" name="member"/><br>
	<hr>
	<!-- scope가 지정이 되어있으니까 el을 써봤음. 객체처럼 .name으로 접근 가능. -->
	이름(page) : ${member.name }<br>
</body>

</html>