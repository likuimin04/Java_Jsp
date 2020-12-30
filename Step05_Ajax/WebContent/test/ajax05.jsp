<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/ajax05.jsp</title>
</head>
<body>
	<h1>ajax POST 전송 예제</h1>
	<input type="text" id="inputName" placeholder="이름입력..."/>
	<input type="text" id="inputAddr" placeholder="주소입력..."/>
	<button id="sendBtn">전송</button>
	<script>
		document.querySelector("#sendBtn")
		.addEventListener("click", function(){
			//입력한 문자열 읽어오기
			let name=document.querySelector("#inputName").value;
			let addr=document.querySelector("#inputAddr").value;
			// fetch() 함수를 이용해서 ajax POST 전송하기
			fetch("add.jsp", {
				method:"POST",
				headers:{},
				body:"전송할 query string"
			})
			.then(function(response){})
			.then(function(data){});
		});
	</script>
</body>
</html>