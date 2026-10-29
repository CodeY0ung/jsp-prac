<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- bean을 설정할때는 id로 설정, 사용할때는 name으로 사용 
	setter. id와 name 값이 같아야한다.  -->
	<jsp:useBean id="bean" class="domain.Member"/>
	<jsp:setProperty property="name" name="bean" value="철수"/>
	<jsp:setProperty property="age" name="bean" value="30"/>
	<jsp:setProperty property="gender" name="bean" value="남자"/>
	
	<!-- getter -->
	이름 : <jsp:getProperty property="name" name="bean"/>
	나이 : <jsp:getProperty property="age" name="bean"/>
	성별 : <jsp:getProperty property="gender" name="bean"/>
	
</body>
</html>