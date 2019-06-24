<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_3_myPage_myTrainer.css">
</head>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<jsp:include page="../user/2_myPageMenubar.jsp"/>
	
	<!-- 트레이너 리스트 영역 ---------------------------------------------------------------------------------------------------- -->
	<div class="searchTrainerListDiv">
		<br> <select class="trainerSelect">
			<option>- 선택 -</option>
			<option>신규가입순</option>
			<option>인기순</option>
		</select> <br>
		<br>
		<div class="trainerListDiv">
			<table class="trainerListTable">
				<tr>
					<td rowspan="3" class="trainerListTableTd1">
						<div class="profileImg">
							<img class="profileImage"
								src="${ contextPath }/resources/images/profileImg.PNG">
						</div>
					</td>
					<td class="trainerListTableTd2"><label class="trainerName">트레이너1</label>
						<label class="trainerGender">(남)</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="trainerKeyword">#키워드</label></td>
					<td><button class="daysRemaining">프로필 보기</button></td>
				</tr>
				<tr>
					<td><label class="simpleProfile">한 줄 프로필 공간입니다.</label></td>
					<td class="trainerListTableTd1">
						<button class="goProfileDetail" onclick="location.href='showProfileDetailPageView.us'">매칭 시작하기</button>
					</td>
				</tr>
			</table>
		</div>
		<br>
		<div class="trainerListDiv">
			<table class="trainerListTable">
				<tr>
					<td rowspan="3" class="trainerListTableTd1">
						<div class="profileImg">
							<img class="profileImage"
								src="${ contextPath }/resources/images/profileImg.PNG">
						</div>
					</td>
					<td class="trainerListTableTd2"><label class="trainerName">트레이너2</label>
						<label class="trainerGender">(남)</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="trainerKeyword">#키워드</label></td>
					<td><button class="daysRemaining">프로필 보기</button></td>
				</tr>
				<tr>
					<td><label class="simpleProfile">한 줄 프로필 공간입니다.</label></td>
					<td class="trainerListTableTd1"><button class="goProfileDetail">매칭 시작하기</button></td>
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