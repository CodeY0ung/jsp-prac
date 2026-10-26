<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 가입 폼</h1>
	<form>
		id : <input type="text" id="id"> <button id="btn" type="button">중복 확인</button>
	</form>
	<br>
	<div id="demo"></div>
	
</body>
<script>
	const btn = document.querySelector("#btn");
	btn.addEventListener("click",function(){
	    loadDoc();
	})
	
	function loadDoc(){
	    const xhttp = new XMLHttpRequest();
	    // 이걸 쿼리 스트링으로 넘겨야함.
		const userId = document.querySelector("#id").value;
	    xhttp.open("GET","/SignUpFormServlet?id="+userId,false); // false는 동기방식. true 비동기방식이 기본값임.
	
	    xhttp.onload = function(){
	        document.getElementById("demo").innerHTML = xhttp.responseText; // 응답이 오면 responseText가 받는다.
	    };
	
	    xhttp.send();
	}
</script>
</html>