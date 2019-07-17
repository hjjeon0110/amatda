<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴바</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_5_myPage_myWriting.css">
</head>
<style>
	tr.rowStyle:hover{background-color:pink}
	.subMenuBar {
	width: 100%;
	height: 100%;
	font-family: 'Noto Sans KR', sans-serif;
	border-top:0.5px solid lightgray;
}

.subMenuBar1 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: white;
	margin-left: 2px;
	margin-right: -4px;
	color:black;
}

.subMenuBar2 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background:#ff0066;
	color:white;
}

.subMenuBar1:hover{background-color:pink} {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: white;
	color: #ff0066;
	margin-left: 2px;
	margin-right: -4px;
	cursor:pointer;
}
.outer {
	width: 1200px;
	height: 500px;
	background-image: url(${ contextPath }/resources/images/background2.JPG);
	/* background-repeat: no-repeat; */
	background-position: top center;
	/* background-size: 100% 1500px; */
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px;
}


</style>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	<%-- <jsp:include page="../user/2_myPageMenubar.jsp"/> --%>
	<br />
	
	
	
	
	<div class="subMenuBar">
		<div class="subMenuBar1" onclick="location.href='list.di?mno=${sessionScope.loginUser.mno}'">다이어리</div>
		<div class="subMenuBar2" onclick="location.href='showGallery.di?mno=${sessionScope.loginUser.mno}'">갤러리</div>
	</div>

	<div class="outer"></div>




	<!-- <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> -->
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>

</html>