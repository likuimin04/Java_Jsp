<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/private/play.jsp</title>
</head>
<body>
<%
	// 로그인된 아이디 읽어오기
	String id=(String)session.getAttribute("id");
	if(id==null){//만일 로그인을 하지 않았으면
		// 로그인 폼으로 강제 리다일렉트 시킨다.
		String cPath=request.getContextPath();
		response.sendRedirect(cPath+"/test/loginform.jsp");
	}
%>
	<p> <strong><%=id %></strong>님 신나게 놀아 보아요!</p>
	<a href="../index.jsp">인덱스로 가기</a>
</body>
</html>