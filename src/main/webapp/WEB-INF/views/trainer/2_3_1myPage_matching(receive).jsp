<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/1_1_recommendTrainerPage.css">
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

.subMenuBar2 {
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

.subMenuBar1 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
}

.searchUserListDiv {
	width: 100%;
	height: 100%;
	background: whitesmoke;
}

.userSelect {
	width: 150px;
	font-family: 'Noto Sans KR', sans-serif;
	border: 1px solid darkgray;
	margin-left: 50px;
}

.userListDiv {
	width: 90%;
	border: 1px solid darkgray;
	margin-left: auto;
	margin-right: auto;
	padding: 10px;
	background: white;
}

.userListTable {
	width: 100%;
	margin-left: auto;
	margin-right: auto;
	background: white;
	font-family: 'Noto Sans KR', sans-serif;
}

.profileImg {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	border: 2px solid white;
	margin-left: auto;
	margin-right: auto;
}

.profileImage {
	width: 100%;
	height: 100%;
}

.userListTable td {
	padding: 5px;
	font-size: 14px;
}

.userListTableTd1 {
	width: 15%;
	align: center;
}

.userListTableTd2 {
	width: 70%;
}

.userName {
	font-weight: bold;
}

.userGender {
	color: darkgray;
}

.userKeyword {
	color: #ff0066;
}

.userSurvey {
	font-size: 13px;
}

.showUserServeyDetail {
	border-style: none;
	background: #ff0066;
	color: white;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
}
</style>
</head>
<body>

	<!-- 트레이너 마이페이지 메뉴바 include ---------------------------------------------------------------------------------------- -->
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
	
	
	<!-- 트레이너 마이페이지 서브메뉴바  --------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1" onclick="location.href='showMyPageMatching.tr?tno=${sessionScope.loginUser.mno}'">보낸 요청 내역</div>
		<div class="subMenuBar2" onclick="location.href='showMyPageReceivedMatching.tr?tno=${sessionScope.loginUser.mno}'">받은 요청 내역</div>
	</div>
	
	<!-- 정렬을 위한 셀렉트 옵션 영역 -->
	<div class="searchUserListDiv">
		<br> <select id="userListSort" class="userSelect">
			<option >- 선택해주세요 -</option>
			<option value="join" >신규가입순</option>
			<option value="start">운동시작일순</option>
			<option value="excerPeriod">운동개월수순</option>
		</select> <br>
		<br>
		
	<!-- 반복문으로 회원들의 목록을 조회하는 영역  -->	
		<c:forEach var="user" items="${ list }" varStatus="status">
			<div class="userListDiv">
				<table class="userListTable">
					<tr>
						<input type="hidden" value="${ user.mno }" />
						<td rowspan="3" class="userListTableTd1">
							<div class="profileImg">
								<img class="profileImage"
									src="${ contextPath }/resources/images/profileImg.PNG">
							</div>
						</td>
						<td class="userListTableTd2"><label class="userName" for="userName">${ user.name }</label>
							<label class="userGender">(${user.gender })</label></td>
						<td></td>
					</tr>
					<tr>
						<td><label class="userKeyword">#${ user.survey.hopeExercise }</label></td>
						<td></td>
					</tr>
					<tr>
						<td><label class="userSurvey">운동 시작가능일 : ${ user.survey.hopeStart}, 운동
								가능 시간 : ${user.survey.datExercise }, 키 : ${ user.survey.height }cm, 몸무게 : ${ user.survey.weight}kg, 목표감량치 : -${user.survey.hopeWeight}kg</label></td>
						<td class="userListTableTd1"><button type="button" name="userInfoShow"
								class="btn btn-primary" data-toggle="modal"
								data-target="#exampleModalScrollable${ user.mno }">회원 정보 보기</button></td>
					</tr>
				</table>
			</div>
			<br>
			<!-- Modal ---------------------------------------------------------------------------------------------------------- -->
			<div class="modal fade" id="exampleModalScrollable${ user.mno }" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<label class="modalHeader">${user.name }님의 다이어트 정보 </label>&nbsp;&nbsp;&nbsp;
							<label> 나이 : ${ user.survey.uAge } 키 : ${user.survey.height }cm, 몸무게 : ${ user.survey.weight}kg, 목표감량치 : -${user.survey.hopeWeight}kg</label>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<label class="index">I</label>&nbsp;&nbsp;<label>PT를 받는 목적이 무엇인가요?</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.dietReason } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>이전 다이어트 실패의 이유</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.dietFail} readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>선호 트레이너 성별</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.hopeGender } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>가장빼고 싶은 신체부위</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.hopeBody } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>선호하는 다이어트방법</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.hopeMethod } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>선호하는 트레이너 연령</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.hopeAge } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>운동시작 희망일자</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.hopeStart } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>하루식사량</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.datFood } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>선호운동유형</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.hopeExercise } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>하루운동가능량</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.datExercise } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>장애 및 질병 여부</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.disease } readonly><br><br>
							<label class="index">I</label>&nbsp;&nbsp;<label>일일운동시간</label><br>
							&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value=${ user.survey.dayTime } readonly><br><br>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" name="estimateOpen"
								class="btn btn-primary" data-toggle="modal" value="${ user.mno }" 
								data-target="#estimateSendModal" onclick="openEstimate(this)">내 견적서 열기</button>
						</div>
					</div>
				</div>
			</div>
			
		</c:forEach>
		<!-- 페이징 처리를 위한 코드, div지정후 페이징 처리 ----------------------------------->
		<div id="pagingArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1}">
				<c:url var="blistBack" value="showMyPageMatching.tr">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					<c:param name="tno" value="${ sessionScope.loginUser.mno }"></c:param>
				</c:url>
				<a href="${ blistBack }">[이전]</a> &nbsp;
			</c:if>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="orange" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="showMyPageMatching.tr">
						<c:param name="currentPage" value="${ p }"/>
						<c:param name="tno" value="${ sessionScope.loginUser.mno }"></c:param>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				&nbsp; [다음]
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="showMyPageMatching.tr">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					<c:param name="tno" value="${ sessionScope.loginUser.mno }"></c:param>
				</c:url>
				<a href="${ blistEnd }">&nbsp;[다음]</a>
			</c:if>
			
		</div>
		
		
		</div>
		<!-- end of 회원목록 forEach문 -->
		
			<!-------------------------- 견적서 보내기 위한 modal창 생성 코드--------------------------->
			<div class="modal fade" id="estimateSendModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<label class="subTitle">${ sessionScope.loginUser.name } 트레이너 님의 견적서 정보</label>
						</div>
						<div class="modal-body">
							<div class="subMenuBar">
						      <div class="subMenuBar1" onclick="existEstimate()">기존견적서 불러오기</div>
						      <div class="subMenuBar2" onclick="writeEstimate()">견적서 새로 작성하기<input type="hidden" value="3"><input type="hidden" class="uno2" value=""></div>
						  	</div>
						  	<br />&nbsp;&nbsp;&nbsp;&nbsp;
						  	 <!-- onchange="estimateChange()" -->
						  	<select name="estimateType" onchange="estimateChange(this.value)">
						  		<option value="3">최근견적서</option>
						  		<option value="1">견적서1</option>
						  		<option value="2">견적서2</option>
						  	</select>
						  	<label class="estimateNew" id="estimateNew">견적서를 새로 작성해보세요!</label>
							<br />
					<div class="estimateDiv">
						<input type="hidden" name="tno" value="${ sessionScope.loginUser.mno }" /> 
						<input type="hidden" name="estNo" value=""/> 
						<br>
						<label class="subTitle">제목</label> 
						<br>
						<input type="text" id="estName" name="estName" placeholder="견적서 제목을 입력해주세요" value="" readonly />
						<br><br>
						<label class="subTitle">커리큘럼</label> 
						<br>
						<textarea class="curriculum" id="estContents" name="estContents" placeholder="커리큘럼을 입력해주세요" style="resize: none;" readonly>${ estimate.estContents }</textarea>
						<br><br>
						<label class="subTitle" >개월수</label>
				        <br>
					    <select name="estDay" id="estDay" >
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
						<br><br>
						<label class="subTitle">가격</label>
						<br>
						<input type="number" name="estPrice" id="estPrice" placeholder="가격을 입력해주세요" value="" readonly/>
						<br>
						
					</div>
				
	
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" name="matchingStart">매칭 신청하기</button>
							<button type="button" class="btn btn-primary" name="insertEstMatchStart">매칭 신청하기</button>
						</div>
						</div>
					</div>
				</div>
			</div>
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script>
	
		$(function(){
			var list = ${ list }
			console.log(list);
		})
		
	</script>
	
</body>
</html>