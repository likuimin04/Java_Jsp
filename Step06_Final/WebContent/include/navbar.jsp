<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  
	jsp 페이지 안에서의 주석 입니다. 
	여기 작성한 내용은 jsp 페이지가 해석하지 않습니다.
	클라이언트 웹브라우저에 출력되지 않습니다.
--%>
<%--
	특정 jsp 페이지에 포함 시킬 내용을 jsp 페이지에 작성할수 있습니다.
 --%>
 <%
 	// "thisPage"라는 파리미터 명으로 전달 된 문자열 읽어오기
 	String thisPage=request.getParameter("thisPage");
 	// NullPointerException 방지 (500 버스 안타기)
 	if(thisPage==null){
 		thisPage="";
 	}
 %>
 <nav class="navbar navbar-light bg-light navbar-expand-sm">
	<div class="container">
	  	<a class="navbar-brand" href="${pageContext.request.contextPath }/">
	  		<img src="${pageContext.request.contextPath }/images/acorn.png"/> 
	  		<strong> Acorn</strong>
	  	</a>
		<button class="navbar-toggler" data-toggle="collapse" data-target="#topNav">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="topNav">
			<ul class="navbar-nav">
				<li class="nav-item <%=thisPage.equals("signup")? "active":"" %>">
					<a class="nav-link" href="${pageContext.request.contextPath }/users/signup_form.jsp">Sign Up</a>
				</li>
				<li class="nav-item <%=thisPage.equals("login")? "active":"" %>">
					<a class="nav-link" href="${pageContext.request.contextPath }/users/loginform.jsp">Login</a>
				</li>
				<li class="nav-item <%=thisPage.equals("cafe")? "active":"" %>">
					<a class="nav-link" href="${pageContext.request.contextPath }/cafe/list.jsp">Cafe List</a>
				</li>
			</ul>	
		</div>
	</div>
</nav>
