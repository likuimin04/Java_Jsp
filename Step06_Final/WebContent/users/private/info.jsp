<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. session scope 에서 로그인 된 아이디 불러오기
	String id=(String)session.getAttribute("id");
	//2. 로그인 된 아이디를 이용해서 DB 에서 가입 정보를 불러온다.
	UsersDto dto=UsersDao.getInstance().getData(id);
	//3. 가입 정보를 응답한다.

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/info.jsp</title>
</head>
<body>
<div class="container">
	<h1>가입 정보 입니다.</h1>
	<table>
		<tr>
			<th>아이디</th>
			<td><%=dto.getId() %></td>
		</tr>
		<tr>
			<th>이메일</th>
			<td><%=dto.getEmail() %></td>
		</tr>
		<tr>
			<th>가입일</th>
			<td><%=dto.getRegdate() %></td>
		</tr>
	</table>
	<a href="javascript:deleteConfirm()">탈퇴</a>
</div>
<script>
	function deleteConfirm(){
		let isDelete=confirm("<%=id %> 회원님 탈퇴 하시겠습니까?");
		if(isDelete){
			location.href="${pageContext.request.contextPath }/users/delete.jsp"
		}
	}
</script>
</body>
</html>