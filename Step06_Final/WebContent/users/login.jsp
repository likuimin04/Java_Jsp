<%@page import="test.users.dao.UsersDao"%>
<%@page import="test.users.dto.UsersDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼 전송되는 아이디 와 비밀번호를 읽어온다.
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	UsersDto dto=new UsersDto();
	dto.setId(id);
	dto.setPwd(pwd);
	//2. DB에 실제로 존재하는 (유효한) 정보인지 확인 한다.
	boolean isValid=UsersDao.getInstance().isValid(dto);
	//3. 유효한 정보이면 로그인 처리를 하고 응답 그렇치 않으면 아이디 혹은 비밀번호가 틀렸다고 응답
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/login.jsp</title>
</head>
<body>
<div class="container">
	<h1>알림</h1>
	<%if(isValid){ 
		//로그인 했다는 의미에서 session scope 에 "id" 라는 키값으로 로그인 된 아이디를 담는다.	
		session.setAttribute("id", id);%>
		<p>
			<strong><%=id %></strong>님 로그인 되었습니다.
			<a href="${pageContext.request.contextPath }/index.jsp">확인</a>
		</p>
	<%}else{ %>
		<p>
			아이디 혹은 비밀번호가 잘못되었습니다.
			<a href="loginform.jsp">다시 시도</a>
		</p>
	<%} %>
</div>
</body>
</html>