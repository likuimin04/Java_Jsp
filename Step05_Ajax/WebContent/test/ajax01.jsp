<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/ajax.jsp</title>
</head>
<body>
	<h1>ajax 테스트 페이지</h1>
	<p>페이지 전환 없이 javascript 로 웹서버에 요청을 하는 방법이 있습니다.</p>
	<button id="getBtn">요청하기</button>
	<script>
		document.querySelector("#getBtn")
			.addEventListener("click", function(){
				//fetch() 함수를 이용해서 get_data.jsp 페이지에 GET 방식 요청을 한다.
				fetch("get_data.jsp")
				.then(function(response){
					//단순 문자열인경우.text() 를 호출해서 리턴 해주면
					//아래 then() 안에 있는 함수의 인자로 해당 문자열이 전달 된다.
					return response.text();
				})
				.then(function(data){
					//전달된 문자열(서버가 응답한) 을 여기서 사용하면 된다.
					console.log(data);
				});
			});
	</script>
</body>
</html>