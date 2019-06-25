<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<style>

.menubarLi2 {
	color:#ff0066;
}

#myPageMenu2 {
	background:#ff0066;
	color:white;
}

.subMenuBar {
	width: 100%;
	height: 100%;
	font-family: 'Noto Sans KR', sans-serif;
}

.subMenuBar1 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: #ff0066;
	color: white;
	margin-left: 2px;
	margin-right: -4px;
}

.subMenuBar2 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
}

.estimateDiv {
	width:100%;
	height:100%;
	padding-left:50px;
	padding-right:50px;
}

.subTitle {
	font-size: 18px;
	font-weight: bold;
	font-family: 'Noto Sans KR', sans-serif;
	color: black;
}

input {
	width:450px;
	height:28px;
	font-size:12px;
	font-family: 'Nanum Gothic', sans-serif;
}

.addKeyword {
	width:80px;
	height:60%;
	border-style:none;
	background:#ff0066;
	color:white;
	font-family: 'Noto Sans KR', sans-serif;
	font-size:14px;
}

.keywordDiv {
	width:100%;
	height:100%;
}

.badge {
	font-family: 'Noto Sans KR', sans-serif;
	background: #ffe6f3;
}

.curriculum {
	width:100%;
	height:200px;
	font-size:12px;
	font-family: 'Nanum Gothic', sans-serif;	
}

select {
	width:100px;
	height:28px;
	font-size:12px;
	font-family: 'Nanum Gothic', sans-serif;
}

.modification {
	width:150px;
	height:100%;
	border-style:none;
	background:#ff0066;
	color:white;
	font-family: 'Noto Sans KR', sans-serif;
	font-size:18px;
	float:right;
}

</style>
</head>
<body>


	<!-- 트레이너 마이페이지 메뉴바 include ---------------------------------------------------------------------------------------- -->
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
	
	
	<!-- 트레이너 마이페이지 서브메뉴바  --------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1" id="subMenuBar1">견적서1<input type="hidden" value="1"></div>
		<div class="subMenuBar2" id="subMenuBar2">견적서2<input type="hidden" value="2"></div>
	</div>
	
	
	
	<!-- 견적서 값이 없을때 나올  견적서 영역 ------------------------------------------------------- -->
	<c:if test="${empty estimate}">
	<form action="train">
	<div class="estimateDiv">
	
		<br><br><br>
		<label class="subTitle">제목</label>
		<br><br>
		<input type="text" name="estTitle" placeholder=" 제목을 입력해주세요">
		
		<br><br><br>
		<label class="subTitle">키워드</label>
		
		<br><br><br>
		<label class="subTitle" >커리큘럼</label>
		<br><br>
		<textarea class="curriculum" name="estContents" placeholder=" 커리큘럼을 입력해주세요"></textarea>
		
		<br><br><br>
		<label class="subTitle">개월수</label>
		<br><br>
		<select name="estDay">
			<option value="30">1개월</option>
			<option value="60">2개월</option>
			<option value="90">3개월</option>
			<option value="120">4개월</option>
			<option value="150">5개월</option>
			<option value="180">6개월</option>
			<option value="210">7개월</option>
			<option value="240">8개월</option>
			<option value="270">9개월</option>
			<option value="300">10개월</option>
			<option value="330">11개월</option>
			<option value="360">12개월</option>
		</select>
		
		<br><br><br>
		<label class="subTitle">가격</label>
		<br><br>
		<input type="text" placeholder=" 가격을 입력해주세요">
		
		<br><br><br>
		<button class="modification"> 견적서 수정하기 </button>
	</div>
	</form>
	</c:if>
	<!-- 견적서 값이 있을때 나올 견적서 영역 ------------------------------------------------------- -->
	<c:if test="${!empty estimate}">
	<div class="estimateDiv">
	
		<br><br><br>
		<label class="subTitle">제목</label>
		<br><br>
		<input type="text" name="estTitle" value="${ estimate.estName }" placeholder=" 제목을 입력해주세요">
		
		<br><br><br>
		<label class="subTitle" >커리큘럼</label>
		<br><br>
		<textarea class="curriculum" name="estContents" placeholder=" 커리큘럼을 입력해주세요">${ estimate.estContents }</textarea>
		
		<br><br><br>
		<label class="subTitle" >개월수</label>
		<br><br>
		<select name="estDay" id="estDay">
			<option value="30">1개월</option>
			<option value="60">2개월</option>
			<option value="90">3개월</option>
			<option value="120">4개월</option>
			<option value="150">5개월</option>
			<option value="180">6개월</option>
			<option value="210">7개월</option>
			<option value="240">8개월</option>
			<option value="270">9개월</option>
			<option value="300">10개월</option>
			<option value="330">11개월</option>
			<option value="360">12개월</option>
		</select>
		
		<br><br><br>
		<label class="subTitle">가격</label>
		<br><br>
		<input type="text" placeholder=" 가격을 입력해주세요" value="${ estimate.estPrice }">
		
		<br><br><br>
		<button class="modification"> 견적서 수정하기 </button>
	</div>
	</c:if>
	
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<script>
		$(function(){
			$("#estDay").val(${estimate.estDay}).prop("selected", true);
		})
		
	</script>
	
</body>
</html>