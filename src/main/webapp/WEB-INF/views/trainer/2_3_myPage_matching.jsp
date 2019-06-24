<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

#myPageMenu3 {
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

.searchUserListDiv {
	width:100%;
	height:100%;
	background:whitesmoke;
}
.userSelect {
	width:150px;
	font-family: 'Noto Sans KR', sans-serif;
	border:1px solid lightgray;
	margin-left:50px;
}
.userList {
	width:90%; 
	border:1px solid lightgray;
	margin-left:auto; 
	margin-right:auto;
	padding:10px;
	background:white;
}

.userListTable {
	width:100%; 
	margin-left:auto; 
	margin-right:auto;
	background:white;
	font-family: 'Noto Sans KR', sans-serif;
}

.profileImg {
	width:100px;
	height:100px;
	border-radius: 50%;
	border: 2px solid white;
	margin-left:auto; 
	margin-right:auto;
}

.profileImage {
	width:100%;
	height:100%;
}

.userListTable td {
	padding:5px;
	font-size:14px;
}

.trainerListTableTd1 {
	width:15%; 
	align:center;
}

.trainerListTableTd2 {
	width:70%; 
}

.userName {
	font-weight:bold;
}

.userGender {
	color:lightgray;
}

.userKeyword {
	color:#ff0066;
}

.userSurvey {
	font-size:13px;
}

.goProfileDetail {
	border-style:none; 
	background:#ff0066; 
	color:white; 
	margin-left:auto; 
	margin-right:auto;
	width:100px;
}
</style>
</head>
<body>

	<!-- 트레이너 마이페이지 메뉴바 include ---------------------------------------------------------------------------------------- -->
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
	
	
	<!-- 트레이너 마이페이지 서브메뉴바  --------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1">보낸 요청 내역</div>
		<div class="subMenuBar2">받은 요청 내역</div>
	</div>
	
	
	
	<!-- 회원 리스트 영역 -------------------------------------------------------------------------------------------------------- -->
	<div class="searchUserListDiv">
		<br> <select class="userSelect">
			<option>- 선택 -</option>
			<option>신규가입순</option>
		</select> <br>
		<br>
		<div class="userList">
			<table class="userListTable">
				<tr>
					<td rowspan="3" class="userListTableTd1">
						<div class="profileImg">
							<img class="profileImage"
								src="${ contextPath }/resources/images/profileImg.PNG">
						</div>
					</td>
					<td class="trainerListTableTd2"><label class="userName">회원1</label>
						<label class="userGender">(남)</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userKeyword">#키워드</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userSurvey">운동 시작가능일 : 19/06/13, 운동
							가능 시간 : 18:00 - 22:00, 키 : 180cm, 몸무게 : 100kg, 목표감량치 : 20kg</label></td>
					<td class="trainerListTableTd1"><button type="button"
							class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModalScrollable">회원 정보 보기</button></td>
				</tr>
			</table>
		</div>
		<br>
		<div class="userList">
			<table class="userListTable">
				<tr>
					<td rowspan="3" class="userListTableTd1">
						<div class="profileImg">
							<img class="profileImage"
								src="${ contextPath }/resources/images/profileImg.PNG">
						</div>
					</td>
					<td class="trainerListTableTd2"><label class="userName">회원1</label>
						<label class="userGender">(남)</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userKeyword">#키워드</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userSurvey">운동 시작가능일 : 19/06/13, 운동
							가능 시간 : 18:00 - 22:00, 키 : 180cm, 몸무게 : 100kg, 목표감량치 : 20kg</label></td>
					<td class="trainerListTableTd1"><button
							class="goProfileDetail">회원 정보 보기</button></td>
				</tr>
			</table>
		</div>

		<br>
		<br>
	</div>
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>