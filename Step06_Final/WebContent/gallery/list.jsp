<%@page import="test.gallery.dto.GalleryDto"%>
<%@page import="test.gallery.dao.GalleryDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//Gallery 목록 얻어오기
	List<GalleryDto> list=GalleryDao.getInstance().getList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/gallery/list.jsp</title>
</head>
<body>
<div class="container">
	<a href="private/upload_form.jsp">사진 업로드 하러 가기</a>
	<h1>겔러리 목록 입니다.</h1>
	<%for(GalleryDto tmp:list){ %>
	<div>
		<h2><%=tmp.getCaption() %></h2>
		<img src="${pageContext.request.contextPath }<%=tmp.getImagePath() %>" />
		<p> 작성자 : <strong><%=tmp.getWriter() %></strong></p>
	</div>
	<%} %>
</div>
</body>
</html>





