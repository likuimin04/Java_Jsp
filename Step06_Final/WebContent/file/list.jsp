<%@page import="test.file.dto.FileDto"%>
<%@page import="test.file.dao.FileDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<FileDto> list=FileDao.getInstance().getList();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/file/list.jsp</title>
</head>
<body>
<div class="container">
	<a href="private/upload_form.jsp">업로드 하러가기</a>
	<h1>자료실 목록 입니다.</h1>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>작성자</th>
				<th>제목(설명)</th>
				<th>파일명</th>
				<th>크기</th>
				<th>등록일</th>
			</tr>
		</thead>
		<tbody>
		<%for(FileDto tmp : list){%>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getWriter() %></td>
				<td><%=tmp.getTitle() %></td>
				<td><a href="download.jsp?num=<%=tmp.getNum()%>"><%=tmp.getOrgFileName() %></a></td>
				<td><%=tmp.getFileSize() %></td>
				<td><%=tmp.getRegdate() %></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</div>
</body>
</html>