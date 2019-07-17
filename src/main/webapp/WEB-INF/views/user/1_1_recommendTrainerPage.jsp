<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아맞다-맞춤트레이너추천페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/1_1_recommendTrainerPage.css">
</head>
<body>


	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	
	<!-- 서브메뉴 영역 -------------------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1">맞춤 트레이너 추천</div>
		<div class="subMenuBar2" onclick="location.href='showSearchTrainerPageView.us'">셀프 트레이너 검색</div>
	</div>
	
	
	<!-- 키워드 검색 영역 ------------------------------------------------------------------------------------------------------ -->
	<div class="searchKeywordDiv">
		<label class="searchKeywordLabel">${ sessionScope.loginUser.name }님만을 위해 추천한 맞춤 트레이너들을 확인해보세요!</label>
		<br><br>
		<div class="keywordDiv">
			<span class="badge badge-pill badge-danger"> #${ survey.hopeAge } </span>&nbsp;&nbsp;
			<span class="badge badge-pill badge-danger"> #${ survey.hopeGender } </span>&nbsp;&nbsp;
			<span class="badge badge-pill badge-danger"> #${ survey.hopePeriod } </span>&nbsp;&nbsp;
			<c:set var="hopeExcercise" value="${ survey.hopeExercise }" />
			<c:set var="keywordArr" value="${fn:split(hopeExcercise, ',')}"/>
			<c:forEach items="${keywordArr}" varStatus="keywordArrsST">
				<span class="badge badge-pill badge-danger"> #${keywordArr[keywordArrsST.index]}</span>&nbsp;&nbsp;
			</c:forEach>
		</div>
	</div>


	<!-- 트레이너 리스트 영역 ---------------------------------------------------------------------------------------------------- -->
	
	<c:if test="${ empty recommendtrainerList }">
	
		<div class="recommendtrainerListNullDiv">
			<br><br>
			<label class="recommendtrainerListNullLabel">조회된 맞춤 트레이너 추천 리스트가 없습니다.</label><br>
			<label class="recommendtrainerListNullLabel" style="color:#ff0066;">셀프 트레이너 검색을 통해 마음에 드는 트레이너를 찾아보세요!</label>
			<br><br><br>
		</div>
	
	</c:if>
	<c:if test="${ !empty recommendtrainerList }">
	
		<div class="searchTrainerListDiv">
			<br> 
			<select class="trainerSelect">
				<option>- 선택 -</option>
				<option>신규가입순</option>
				<option>인기순</option>
			</select> 
			<br><br>
			
			<c:forEach var="i" begin="0" end="${fn:length(recommendtrainerList)-1}" varStatus="st">
		
				<div class="trainerListDiv">
					<input type="hidden" class="tname">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg" style="border-radius: 50%;">
									<img class="profileImage" style="border-radius: 50%;" src="${ contextPath }/resources/uploadFiles/${recommendtrainerList[i].attachment.modiName}${recommendtrainerList[i].attachment.extension}">
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
								<input type="hidden" value="${ recommendtrainerList[i].mno }">
								<input type="hidden" value="${ recommendtrainerList[i].name }">
								<button class="goProfileDetail">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>
				<br>
			</c:forEach>
		</div>
	
	</c:if>
	
	
	
	<%-- 
	<div class="searchTrainerListDiv">
		<br> 
		<select class="trainerSelect">
			<option>- 선택 -</option>
			<option>신규가입순</option>
			<option>인기순</option>
		</select> 
		<br><br>
		<div class="trainerListDiv">
			<table class="trainerListTable">
				<tr>
					<td rowspan="3" class="trainerListTableTd1">
						<div class="profileImg">
							<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
						</div>
					</td>
					<td class="trainerListTableTd2">
						<label class="trainerName">트레이너1</label>
						<label class="trainerGender">(남)</label>
					</td>
					<td></td>
				</tr>
				<tr>
					<td><label class="trainerKeyword">#키워드</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="simpleProfile">한 줄 프로필 공간입니다.</label></td>
					<td class="trainerListTableTd1">
						<button class="goProfileDetail" onclick="location.href='showProfileDetailPageView.us'">프로필 보기</button>
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
 --%>

	<!-- footer -------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<script>
		$(".goProfileDetail").click(function() {
			
			var mno = ${ sessionScope.loginUser.mno };
			var tno = $(this).parent().children().eq(0).val();
			var tname = $(this).parent().children().eq(1).val();
			console.log(tno);
			console.log(tname);
			
			location.href='showProfileDetailPageView.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;
		});
		
	</script>
</body>
</html>