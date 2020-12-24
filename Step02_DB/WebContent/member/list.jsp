<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//한페이지에 몇개씪 표시 할 것인지
	int pageRowCount=5;
	//보여줄 페이지의 번호를 일단 1이라고 초기값 지정
	int pageNum=1;
	//페이지 번호가 파라미터로 전달되는지 읽어와 본다.
	String strPageNum=request.getParameter("pageNum");
	//만일 페이지 번호가 파라미터로 넘어 온다면
	if(strPageNum != null){
		//숫자로 바꿔서 보여줄 페이지 번호로 지정한다.
		pageNum=Integer.parseInt(strPageNum);
	}
	
	//보여줄 페이지의 시작 ROWNUM
	int startRowNum=1+(pageNum-1)*pageRowCount;
	//보여줄 페이지의 끝 ROWNUM
	int endRowNum=pageNum*pageRowCount;
	
	//startRowNum 과 endRowNum 을 MemberDto 객체에 담고
	MemberDto dto=new MemberDto();
	dto.setStartRowNum(startRowNum);
	dto.setEndRowNum(endRowNum);
	
	//MemberDao 객체를 이용해서 회원 목록을 얻어온다.
	List<MemberDto> list=MemberDao.getInstance().getList(dto);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
</head>
<body>
<%-- 포함시킬 jsp 페이지의 위치를 반드시 상대 경로로 page 의 value 로 명시 해야한다. --%>
<%-- 
		navbar.jsp 페이지에 요청 파라미터를 전달 할 수 있다.
		"thisPage"라는 파라미터 명으로 "member"라는 문자열을 전달
		따라서 navbar.jsp 페이지 에서는 아래와 같이 파라미터를 추출 할수 있다.
		request.getParameter("thisPage") 
	--%>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="member" name="thisPage"/>
</jsp:include>
<div class="container">
	<a href="insertform.jsp">회원 추가 하러가기</a>
	<h1>회원 목록입니다.</h1>
	<table class="table">
		<thead class="table-dark">	
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>수정</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
			<%for(MemberDto tmp:list){ %>
				<tr>
					<td><%=tmp.getNum() %></td>
					<td><%=tmp.getName() %></td>
					<td><%=tmp.getAddr() %></td>
					<td><a href="updateform.jsp?num=<%=tmp.getNum() %>">수정</a></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum() %>">삭제</a></td>
				</tr>
			<%} %>
		</tbody>
	</table>
</div>
</body>
</html>

