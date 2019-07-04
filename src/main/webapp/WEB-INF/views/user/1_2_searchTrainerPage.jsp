<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
				<td class="searchConditionTableTd2">
					<input class='form-control' id="keywordInput" type="text">
				</td>
				<td class="searchConditionTableTd3">
					<button class="searchKeywordBtn"><i class="fa fa-search"></i></button>
				</td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">연령대</td>
				<td class="searchConditionTableTd2">
					<input type="radio" name="hogeAge" value="전체" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="hogeAge" value="20대">&nbsp;20대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="hogeAge" value="30대">&nbsp;30대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="hogeAge" value="40대">&nbsp;40대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="hogeAge" value="50대">&nbsp;50대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<td class="searchConditionTableTd3"></td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">성별</td>
				<td class="searchConditionTableTd2">
					<input type="radio" name="hogeGender" value="전체" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="hogeGender" value="남자">&nbsp;남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="radio" name="hogeGender" value="여자">&nbsp;여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<td class="searchConditionTableTd3"></td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">이름</td>
				<td class="searchConditionTableTd2">
					<input class='form-control' id="keywordInput" type="text">
				</td>
				<td class="searchConditionTableTd3"></td>
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
		
	<c:if test="${ empty recommendtrainerList }">

		<div class="searchTrainerListNullDiv">
			<br><br>
			<label class="searchTrainerListNullLabel">검색된 트레이너 리스트가 없습니다.</label><br>
			<label class="searchTrainerListNullLabel" style="color:#ff0066;">다른 키워드를 통해 마음에 드는 트레이너를 찾아보세요!</label>
			<br><br><br>
		</div>
	
	</c:if>
	<c:if test="${ !empty recommendtrainerList }">
	
		<div class="searchTrainerListDiv">
			<br> 
			<select class="trainerSelect">
				<option>신규가입순</option>
				<option>매칭횟수순</option>
				<option>평점높은순</option>
				<option>최근활동순</option>
			</select> 
			<br><br>
			
			<c:forEach var="i" begin="0" end="${fn:length(recommendtrainerList)-1}" varStatus="st">
		
				<div class="trainerListDiv">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg">
									<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
								</div>
							</td>
							<td class="trainerListTableTd2">
								<label class="trainerName">${ recommendtrainerList[i].name }</label>
								<label class="trainerGender">(${ recommendtrainerList[i].trainerInfo.tage}, ${ recommendtrainerList[i].gender})</label>
							</td>
							<td></td>
						</tr>
						<tr>
							<td><label class="trainerKeyword">${ recommendtrainerList[i].profile.keyword }</label></td>
							<td></td>
						</tr>
						<tr>
							<td><label class="simpleProfile">${ recommendtrainerList[i].profile.lineProfile}</label></td>
							<td class="trainerListTableTd1">
								<button class="goProfileDetail" onclick="location.href='showProfileDetailPageView.us'">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>
				<br>
			</c:forEach>
		</div>
	
	</c:if>


	<!-- footer -------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<script>
	
	</script>
</body>
</html>