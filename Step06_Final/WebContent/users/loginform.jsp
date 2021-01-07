<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/users/loginform.jsp</title>
<jsp:include page="../include/resource.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../include/navbar.jsp">
	<jsp:param value="login.jsp" name="thisPage"/>
</jsp:include>
<div class="container">
	<nav>
		<ul class="breadcrumb">
			<li class="breadcrumb-item">
				<a href="${pageContext.request.contextPath }/">Home</a>
			</li>
			<li class="breadcrumb-item active">Login Form</li>
		</ul>
	</nav>
	<form action="login.jsp" method="post">
		<div class="mb-3">
			<label for="id" class="form-label">아이디</label> <input type="text"
				name="id" class="form-control" id="id" aria-describedby="id">
		</div>
		<div class="mb-3">
			<label for="pwd" class="form-label">비밀번호</label> <input
				type="password" name="pwd" class="form-control" id="pwd">
		</div>
		<button type="submit" class="btn btn-outline-primary"><a href="signup_form.jsp">회원가입</a></button>
		<button type="submit" class="btn btn-outline-success">로그인</button>
	</form>
</div>
</body>
</html>