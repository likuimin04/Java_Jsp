<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/ajax04.jsp</title>
</head>
<body>
	<h1 class="aaa">폼 테스트</h1>
	<p class="bbb">form 에 submit 이벤트가 일어 났을때 폼전송을 막고 ajax 전송해 보기</p>
	<form action="add.jsp" method="get" id="myForm">
		<input type="text" name="name" placeholder="이름 입력..."/>
		<input type="text" name="addr" placeholder="주소 입력..."/>
		<button type="submit">전송</button>
		<button type="reset">취소</button>
	</form>
	<script>
		// id 가 myForm 인 곳에 submit 이벤트가 일어 났을때 실행되는 함수 등록
		document.querySelector("#myForm")
		.addEventListener("submit", function(event){
			//함수의 인자로 전달되는 event 객체의 .preventDefault() 함수를 호출해서 폼전송 막기
			event.preventDefault();
			console.log("sumbit 이벤트가 일어났지만 폼 전송을 막았습니다.");
			// 폼에 입력한 이름과 주소 읽어오기
			// "input[name=name]" 은 input 요소이면서 name 속성의 값이 name 인 요소 찾기
			let name=document.querySelector("input[name=name]").value;
			// "input[name=addr]" 은 input 요소이면서 name 속성의 값이 addr 인 요소 찾기
			let addr=document.querySelector("input[name=addr]").value;
			// form 의 action 속성의 value 읽어오기  action="send.jsp"
			let url=document.querySelector("#myForm").getAttribute("action");
			// fetch() 함수를 이용해서 ajax  전송하기
			fetch(url+"?name="+name+"&addr="+addr)
			.then(function(response){
				return response.text();
			})
			.then(function(data){
				console.log(data);
			});
		});
	</script>
</body>
</html>