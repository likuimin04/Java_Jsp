<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/gallery/private/ajax_form.jsp</title>
</head>
<body>
<div class="container">
	<form action="insert.jsp" method="post" id="insertForm">
		<input type="hidden" name="imagePath" id="imagePath"/>
		<div>
			<label for="caption">설명</label>
			<input type="text" name="caption" id="caption"/>
		</div>
	</form>
	<form action="ajax_upload.jsp" method="post" id="ajaxForm" enctype="multipart/form-data">
		<div>
			<label for="image">이미지</label>
			<input type="file" name="image" id="image" 
				accept=".jpg, .jpeg, .png, .JPG, .JPEG"/>
		</div>
		<button type="submit">테스트(이미지만 업로드)</button>
	</form>
	<button id="submitBtn">등록</button>
	<div class="img-wrapper">
	
	</div>
</div>
<script src="${pageContext.request.contextPath }/js/jquery-3.5.1.js"></script>
<!-- jquery form 플러그인 javascript 로딩 -->
<script src="${pageContext.request.contextPath }/js/jquery.form.min.js"></script>
<script>
	//form 플러그인을 이용해서 form 이 ajax 전송(페이지 전환없이) 되도록 한다.
	$("#ajaxForm").ajaxForm(function(data){
		console.log(data);
	});
</script>
</body>
</html>





