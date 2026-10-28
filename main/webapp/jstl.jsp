<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="jakarta.tags.core" %>
<%@ taglib prefix = "fmt" uri="jakarta.tags.fmt" %>
<%@ page import="java.util.Date" %>
<%
	pageContext.setAttribute("userName","James");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>jstl 연습</h1>
	<hr>
	<!-- username1이라는 애가 없으면 guest 값이 나온다. 
	c:out은 4대저장소에 저장된 값을 출력하는 태그다.-->
	<p><c:out value="${username1 }" default="geust" /></p>
	<c:set var="hobby" value="coding" scope="page"/>
	${pageScope.hobby }<br>
	<c:out value="${hobby }" />
	<c:set var="age" value="21"></c:set>
	<c:if test="${age >= 20 }">
		<p>성인입니다.</p>
	</c:if>
	<c:choose>
		<c:when test="${age ge 20 }">
			<p>성인입니다.</p>
		</c:when>
		<c:when test="${age lt 20 }">
			<p>미성년입니다.</p>
		</c:when>
	</c:choose>
	
	<hr>
	<c:set var="score" value="85" />
	<c:choose>
		<c:when test="${score ge 90 }">
			<p>수</p>
		</c:when>
		<c:when test="${score ge 80 }">
			<p>우</p>
		</c:when>
		<c:when test="${score ge 70 }">
			<p>미</p>
		</c:when>
		<c:when test="${score ge 60 }">
			<p>양</p>
		</c:when>
		<c:otherwise>
			<p>가</p>
		</c:otherwise>
	</c:choose>
	
	<c:forEach var="i" begin="1" end="5" step="1">
		<p>[${i }] hi~</p>
	</c:forEach>
	<%
		String[] sArry = {"aaa", "bbb", "ccc"};
		pageContext.setAttribute("sArry",sArry);
	%>
	<!-- status.index가 인덱스겠지? 맞다. -->
	<c:forEach var="s" items="${sArry }" varStatus="status">
		<p>${status.index } ${s }</p>
	</c:forEach>
	<hr>
	<!-- status.index는 1부터 시작하는 카운트겠지? 맞다. -->
	<c:forEach var="s" items="${sArry }" varStatus="status">
		<p>${status.count } ${s }</p>
	</c:forEach>
	<!-- 포맷팅 -->
	<fmt:formatNumber value="50000" type="currency" currencySymbol=""/>
	<fmt:formatNumber value="1234567.89" pattern="#,###.##"/>
	<fmt:formatNumber value="0.75" type="percent"/>
	<%
		pageContext.setAttribute("today", new Date());
	%>
	<fmt:formatDate value="${today }"/><br>
	<fmt:formatDate value="${today }" pattern="yyyy-MM-dd"/><br>
	<fmt:formatDate value="${today }" pattern="yyyy-MM-dd HH:mm:ss"/><br>
	<fmt:formatDate value="${today }" pattern="yyyy년 MM월 dd일 HH시 mm분 ss초"/><br>
	
</body>
</html>