<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아맞다-셀프트레이너검색페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/1_2_searchTrainerPage.css">
</head>
<body>


	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	
	<!-- 서브메뉴 영역 -------------------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1" onclick="location.href='showRecommendTrainerPageView.us?mno=${sessionScope.loginUser.mno}'">맞춤 트레이너 추천</div>
		<div class="subMenuBar2">셀프 트레이너 검색</div>
	</div>
	
	
	<!-- 키워드 검색 영역 ------------------------------------------------------------------------------------------------------ -->
	<div class="searchConditionDiv">
		<br><br>
		<table class="searchConditionTable">
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">서비스 키워드</td>
				<td class="searchConditionTableTd2"><input class='form-control' id="keywordInput" type="text"><button class="searchKeywordBtn"><i class="fa fa-search"></i></button></td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">연령대</td>
				<td class="searchConditionTableTd2"></td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">성별</td>
				<td class="searchConditionTableTd2"></td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">이름</td>
				<td class="searchConditionTableTd2"></td>
			</tr>
		</table>
		<br><br>
		<!-- <label class="searchKeywordLabel">키워드</label>&nbsp;&nbsp;&nbsp;
		<input class="searchKeywordInput" type="text">&nbsp;&nbsp;&nbsp;
		<button class="searchKeywordBtn"><i class="fa fa-search"></i></button>
		<br><br>
		<div class="keywordDiv">
			<span class="badge badge-pill badge-danger"> #키워드1 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드2 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드3 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드4 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드5 </span>
		</div> -->
	</div>


	<!-- 트레이너 리스트 영역 ---------------------------------------------------------------------------------------------------- -->
	<div class="searchTrainerListDiv">
		<br> <select class="trainerSelect">
			<option>신규가입순</option>
			<option>매칭횟수순</option>
			<option>평점높은순</option>
			<option>최근활동순</option>
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
					<td></td>
				</tr>
				<tr>
					<td><label class="simpleProfile">한 줄 프로필 공간입니다.</label></td>
					<td class="trainerListTableTd1"><button class="goProfileDetail">프로필 보기</button></td>
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
					<td></td>
				</tr>
				<tr>
					<td><label class="simpleProfile">한 줄 프로필 공간입니다.</label></td>
					<td class="trainerListTableTd1"><button class="goProfileDetail">프로필 보기</button></td>
				</tr>
			</table>
		</div>

		<br>
		<br>
	</div>


	<!-- footer -------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>