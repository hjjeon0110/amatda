<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<style>
.myPageMenuBarArea {
	width: 100%;
	height: 100%;
	background: #F9F9F9;
	padding-top: 50px;
	padding-bottom: 50px;
}

.myPageMenuBar {
	display: inline-block;
	width: 100%;
	text-align: center;
}

.myPageMenu {
	text-align: center;
	display: inline-block;
	width: 150px;
	height: 150px;
	border: 1px solid gray;
	background: white;
	font-family: 'Noto Sans KR', sans-serif;
}

.myPageMenu:hover {
	cursor: pointer;
}

.myPageMenuLabel {
	font-size: 14px;
	color: black;
}
</style>
</head>
<body>
	
	<div class="myPageMenuBarArea">
		<div class="myPageMenuBar">
			<div class="myPageMenu" id="myPageMenu1" onclick="location.href='showMyPagePrivacy.us'">
				<br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu1">개인정보 관리</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu2" onclick="location.href='showMyPageDietSurvey.us'">
				<br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu2">다이어트 정보 관리</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu3" onclick="location.href='showMyPageMyTrainer.us'">
				<br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu3">MY 트레이너</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu4" onclick="location.href='showMyPageRequestsReceived.us'">
				<br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu4">받은 요청 내역</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu5" onclick="location.href='showMyPageMyWriting.us'">
				<br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu5">내 글 관리</label>
				
			</div>
		</div>
	</div>
	
	
</body>
</html>