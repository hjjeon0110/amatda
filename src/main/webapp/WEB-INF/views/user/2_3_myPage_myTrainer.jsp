<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
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
	<c:if test="${ empty myTrainerList }">
	
		<div class="recommendtrainerListNullDiv">
			<br><br>
			<label class="recommendtrainerListNullLabel">조회된 마이트레이너 리스트가 없습니다. </label><br>
			<label class="recommendtrainerListNullLabel" style="color:#ff0066;">트레이너 찾기를 통해 마음에 드는 트레이너를 찾아보세요!</label>
			<br><br><br>
		</div>
	
	</c:if>
	<c:if test="${ !empty myTrainerList }">
	
		<div class="searchTrainerListDiv">
			<br> 
			<select class="trainerSelect">
				<option>- 선택 -</option>
				<option>신규가입순</option>
				<option>인기순</option>
			</select> 
			<br><br>
			
			<jsp:useBean id="today" class="java.util.Date"/>
			<fmt:formatDate var="nowTime" value="${ today }" pattern="yyyyMMdd"/>
			
			<c:forEach var="i" begin="0" end="${fn:length(myTrainerList)-1}" varStatus="st">
				<fmt:formatDate var="estDate" value="${ myTrainerList[i].mprocess.processDate }" pattern="yyyyMMdd"/>
				
				<c:if test="${(estDate + 3 - nowTime) > 0 && myTrainerList[i].mprocess.matchingAccept != 'N' && myTrainerList[i].mprocess.matchingStatus != '매칭완료' }">
				<div class="trainerListDiv">
					<input type="hidden" class="tname">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg">
									<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
								</div>
							</td>
							<td class="trainerListTableTd2">
								<label class="trainerName">${ myTrainerList[i].name }</label>
								<label class="trainerGender">(${ myTrainerList[i].trainerInfo.tage}, ${ myTrainerList[i].gender})</label>
							</td>
							<td>
								<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
									<button class="goProfileDetail">남은일수 ${ (estDate + 3 - nowTime)}일</button>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><label class="trainerKeyword">${ myTrainerList[i].profile.keyword }</label></td>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel == 0 }">
							<td><button class="goProfileDetail">매칭 시작하기</button></td>
							</c:if>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
							<td><button class="goProfileDetail">매칭 진행중</button></td>
							</c:if>
							
						</tr>
						<tr>
							<td><label class="simpleProfile">${ myTrainerList[i].profile.lineProfile}</label></td>
							<td class="trainerListTableTd1">
								<input type="hidden" value="${ myTrainerList[i].mno }">
								<input type="hidden" value="${ myTrainerList[i].name }">
								<button class="matchingStartBtn">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>
				</c:if>
				
				<c:if test="${(estDate + 3 - nowTime) > 0 && myTrainerList[i].mprocess.matchingAccept != 'N' && myTrainerList[i].mprocess.matchingStatus == '매칭완료' }">
				<div class="trainerListDiv">
					<input type="hidden" class="tname">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg">
									<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
								</div>
							</td>
							<td class="trainerListTableTd2">
								<label class="trainerName">${ myTrainerList[i].name }</label>
								<label class="trainerGender">(${ myTrainerList[i].trainerInfo.tage}, ${ myTrainerList[i].gender})</label>
							</td>
							<td>
								<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
									<button class="goProfileDetail">리뷰 작성하기</button>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><label class="trainerKeyword">${ myTrainerList[i].profile.keyword }</label></td>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel == 0 }">
							<td><button class="goProfileDetail">매칭 완료</button></td>
							</c:if>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
							<td><button class="goProfileDetail">매칭 완료</button></td>
							</c:if>
							
						</tr>
						<tr>
							<td><label class="simpleProfile">${ myTrainerList[i].profile.lineProfile}</label></td>
							<td class="trainerListTableTd1">
								<input type="hidden" value="${ myTrainerList[i].mno }">
								<input type="hidden" value="${ myTrainerList[i].name }">
								<button class="matchingStartBtn">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>
				</c:if>
				
				<c:if test="${(estDate + 3 - nowTime) <= 0 && myTrainerList[i].mprocess.matchingAccept != 'N'}">
				
					<div class="trainerListDiv">
					<input type="hidden" class="tname">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg">
									<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
								</div>
							</td>
							<td class="trainerListTableTd2">
								<label class="trainerName">${ myTrainerList[i].name }</label>
								<label class="trainerGender">(${ myTrainerList[i].trainerInfo.tage}, ${ myTrainerList[i].gender})</label>
							</td>
							<td>
								<fmt:formatDate var="estDate" value="${ myTrainerList[i].mprocess.processDate }" pattern="yyyyMMdd"/>
								<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
									<button class="goProfileDetail">기한초과</button>
								</c:if>
							</td>
						</tr>
						<tr>
							<td><label class="trainerKeyword">${ myTrainerList[i].profile.keyword }</label></td>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel == 0 }">
							<td><button class="goProfileDetail">매칭 시작하기</button></td>
							</c:if>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
							<td><button class="goProfileDetail">매칭 종료</button></td>
							</c:if>
							
						</tr>
						<tr>
							<td><label class="simpleProfile">${ myTrainerList[i].profile.lineProfile}</label></td>
							<td class="trainerListTableTd1">
								<input type="hidden" value="${ myTrainerList[i].mno }">
								<input type="hidden" value="${ myTrainerList[i].name }">
								<button class="matchingStartBtn">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>
				<div class="trainerListDiv2">
				<br>
				<label class="trainerListDiv2Label">응답 기한이 초과된 트레이너입니다.</label>
				</div>
				</c:if>
				<c:if test="${ myTrainerList[i].mprocess.matchingAccept == 'N' }">
				
					<div class="trainerListDiv">
					<input type="hidden" class="tname">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg">
									<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
								</div>
							</td>
							<td class="trainerListTableTd2">
								<label class="trainerName">${ myTrainerList[i].name }</label>
								<label class="trainerGender">(${ myTrainerList[i].trainerInfo.tage}, ${ myTrainerList[i].gender})</label>
							</td>
							<td>
								<fmt:formatDate var="estDate" value="${ myTrainerList[i].mprocess.processDate }" pattern="yyyyMMdd"/>
								<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
								</c:if>
							</td>
						</tr>
						<tr>
							<td><label class="trainerKeyword">${ myTrainerList[i].profile.keyword }</label></td>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel == 0 }">
							<td><button class="goProfileDetail">매칭 시작하기</button></td>
							</c:if>
							<c:if test="${ myTrainerList[i].mprocess.matchingLevel != 0 }">
							<td><button class="goProfileDetail">매칭 종료</button></td>
							</c:if>
							
						</tr>
						<tr>
							<td><label class="simpleProfile">${ myTrainerList[i].profile.lineProfile}</label></td>
							<td class="trainerListTableTd1">
								<input type="hidden" value="${ myTrainerList[i].mno }">
								<input type="hidden" value="${ myTrainerList[i].name }">
								<button class="matchingStartBtn">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>
				<div class="trainerListDiv2">
				<br>
				<label class="trainerListDiv2Label">매칭이 종료된 트레이너입니다.</label>
				</div>
				</c:if>
				<br>
			</c:forEach>
		</div>
		
	
	</c:if>

	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	

	<script>
		
		// 프로필 보기
		$(".matchingStartBtn").click(function() {
			
			var mno = ${ sessionScope.loginUser.mno };
			var tno = $(this).parent().children().eq(0).val();
			var tname = $(this).parent().children().eq(1).val();
			console.log("mno : " + mno);
			console.log("tno : " + tno);
			console.log("tname : " + tname);
			
			location.href='showProfileDetailPageView.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;

		});
		
		// 매칭 시작하기
		$(".goProfileDetail").click(function() {
			
			var mno = ${ sessionScope.loginUser.mno };
			var tno = $(this).parent().parent().parent().children().eq(2).children().eq(1).children().eq(0).val();
			var tname = $(this).parent().parent().parent().children().eq(2).children().eq(1).children().eq(1).val();
			console.log("mno : " + mno);
			console.log("tno : " + tno);
			console.log("tname : " + tname);
			
			location.href='goMatchingProcess.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;
			
		});
		
	</script>
	
</body>
</html>