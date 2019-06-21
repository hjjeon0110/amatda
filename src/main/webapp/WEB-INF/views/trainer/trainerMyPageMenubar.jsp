<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">

<style>
	.myPageMenuBarArea {
		width:100%;
		height:100%;
		background:whitesmoke;
		padding-top:50px;
		padding-bottom:50px;
	}
	.myPageMenuBar {
		display: inline-block;
		width: 100%;
		text-align: center;
	}
	.myPageMenu {
		text-align: center;
		display: inline-block;
		width: 180px;
		height: 180px;
		border: 1px solid gray;
		background: white;
		font-family: 'Noto Sans KR', sans-serif;
	}
	.myPageMenu:hover {
		cursor:pointer;
	}
	.myPageMenuLabel {
		font-size:18px;
		color:gray;
	}
	.subMenuBar {
		width:100%;
		height:100%;
		font-family: 'Noto Sans KR', sans-serif;
	}
	.subMenuBar1 {
		width:49.8%;
		height:100px;
		display:inline-block;
		border-bottom:3px solid #ff0066;
		text-align:center;
		font-size:20px;
		padding-top:30px;
		background:#ff0066;
		color:white;
		margin-left:2px;
		margin-right:-4px;
	}
	.subMenuBar2 {
		width:49.8%;
		height:100px;
		display:inline-block;
		border-bottom:3px solid #ff0066;
		text-align:center;
		font-size:20px;
		padding-top:30px;
	}

</style>
</head>
<body>
	
	<div class="myPageMenuBarArea">
		<div class="myPageMenuBar">
			<div class="myPageMenu" id="myPageMenu1" onclick="location.href='goMyPageProfile.tr'">
				<br><br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu1">프로필 관리</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu2" onclick="location.href='goMyPageEstimate.tr'">
				<br><br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu2">견적서 관리</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu3" onclick="location.href='goMyPageMatching.tr'">
				<br><br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu3">매칭 관리</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu4" onclick="location.href='goMyPageMembership.tr'">
				<br><br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu4">멤버십 관리</label>
				
			</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<div class="myPageMenu" id="myPageMenu5" onclick="location.href='goMyPageMyWriting.tr'">
				<br><br><br><br>
				<label class="myPageMenuLabel" id="myPageMenu5">내 글 관리</label>
				
			</div>
		</div>
	</div>
	
	
	<div class="subMenuBar">
		<div class="subMenuBar1">서브메뉴1</div>
		<div class="subMenuBar2">서브메뉴2</div>
	</div>
	
	
</body>
</html>