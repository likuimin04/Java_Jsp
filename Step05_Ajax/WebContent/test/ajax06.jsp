<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/ajax06.jsp</title>
</head>
<body>
	<h1>ajax POST 전송 예제</h1>
	<p> 특정 object 안에 있는 정보를 query 문자열로 변환하는  연습</p>
	<script>
		let obj1 = {num:1, name:"김구라", isMan:true};
		//반복문 돌면서 object 의 방의 이름을 하나씩 추출하기 
		for(let key in obj1){
			//방의 이름을 이용해서 값 추출하기 
			let value = obj1[key];
			//방의 이름 = 값 형식으로 출력해 보기 
			console.log( key +"="+value);
		}
		
		let animals=["cat","dog","elephant"];
		//result1  을 콘솔창에서 확인해 보세요.
		let result1=animals.join("&");
		
		let sample=["num=1","name=김구라","isMan=true"];
		//result2 를 콘솔창에서 확인해 보세요.
		let result2=sample.join("&");
		
		//인자로 전달하는 object 를 이용해서 query  문자열을 만들어서 리턴해주는 함수를 만들어 보세요.
		function toQueryString(obj){
			
		}
	</script>
</body>
</html>
