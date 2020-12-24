<%@page import="test.member.dao.MemberDao"%>
<%@page import="test.member.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 수정할 회원의 번호를 읽어온다.
	int num=Integer.parseInt(request.getParameter("num"));
	//2. DB 에서 해당 회원의 정보를 얻어온다.
	MemberDto dto=MemberDao.getInstance().getData(num);
	//3. 수정 form 에 기본 값으로 넣어주면서 응답한다. 
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/updateform.jsp</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../include/navbar.jsp"></jsp:include>
	<div class="container">
		<nav>
        <ul class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath }/">Home</a>
            </li>
            <li class="breadcrumb-item">
                <a href="${pageContext.request.contextPath }/member/list.jsp">회원목록</a>
            </li>
            <li class="breadcrumb-item active">회원 정보 수정</li>
        </ul>
    </nav>
    <h2>회원 정보 수정</h2>
    <form action="update.jsp" method="post">
    	<!-- 회원정보를 수정 반영할때 번호도 필요하기 때문에 폼 제출될때 같이 제출되도록 한다. -->
		<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
    	<div class="input-group mb-3">
  			<span class="input-group-text" id="inputGroup-sizing-default">번호</span>
  			<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
  			value="<%=dto.getNum() %>" disabled/>
		</div>
		<div class="input-group mb-3">
			<span class="input-group-text" id="inputGroup-sizing-default">이름</span>
  			<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
  			name="name" value="<%=dto.getName() %>"/>
    	</div>
    	<div class="input-group mb-3">
    		<span class="input-group-text" id="inputGroup-sizing-default">주소</span>
  			<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
  			name="addr" value="<%=dto.getAddr() %>"/>
    	</div>
		<button class="btn btn-success" type="submit">수정확인</button>
		<button class="btn btn-danger" type="reset">취소</button>
	</form>
	</div>
</body>
</html>



