<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/3_1_matchingProcessPage.css">
<link rel="stylesheet" href="${contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
</head>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<%-- <jsp:include page="../user/2_myPageMenubar.jsp"/> --%>
	
	<div style="height:100%;background:#f9f9f9;">
		<br><br>
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
						<label class="trainerName">${ matchingTrainer.name }</label>
						<label class="trainerGender">(${ matchingTrainer.trainerInfo.tage}, ${ matchingTrainer.gender})</label>
					</td>
					<td></td>
				</tr>
				<tr>
					<td><label class="trainerKeyword">${ matchingTrainer.profile.keyword }</label></td>
					<td><button class="goProfileDetail">매칭 진행중</button></td>
				</tr>
				<tr>
					<td><label class="simpleProfile">${ matchingTrainer.profile.lineProfile}</label></td>
					<td class="trainerListTableTd1">
						<input type="hidden" value="${ matchingTrainer.mno }">
						<input type="hidden" value="${ matchingTrainer.name }">
						<button class="matchingStartBtn">프로필 보기</button>
					</td>
				</tr>
			</table>
		</div>
		<br><br>
	</div>
	<br>
	<div class="matchingTitleDiv">
		<label class="matchingTitle1">${ matchingTrainer.name } 트레이너님과의</label> <label class="matchingTitle2">매칭 단계</label>
	</div>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 0 && selectOneMyTrainer.transferStatus == 'RECEIVE' }">
	    <div class="step-state step1">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel" style="color:#ff0066;">지금 선택하신 아맞다 트레이너에게 내 다이어트 정보를 보내고 견적서를 요청해 보세요!</label><br>
			<label class="stepLabel">견적서에는 서비스 기간과 비용, 자세한 PT 내용이 담겨있습니다.</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable">다이어트 정보 보내기</button>
			<br><br><br>
		</div>
	</c:if>
	<%-- <c:if test="${ selectOneMyTrainer.matchingLevel == 1 }">
	    <div class="step-state step2">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if> --%>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 1 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.transferStatus == 'RECEIVE' }">
	    <div class="step-state step2-ing">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<jsp:useBean id="today" class="java.util.Date"/>
			<fmt:formatDate var="nowTime" value="${ today }" pattern="yyyyMMdd"/>
			<fmt:formatDate var="estDate" value="${ selectOneMyTrainer.processDate }" pattern="yyyyMMdd"/>
			
			<br><br>
			<label class="stepLabel">트레이너가 회원님께서 보낸 요청서를 확인하고 있습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">견적서가 도착하기까지 ${(estDate + 3 - nowTime)}일 남았습니다!</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable" disabled="true">견적서 확인하기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 2 && selectOneMyTrainer.matchingStatus == '매칭종료' && selectOneMyTrainer.matchingAccept== 'N' && selectOneMyTrainer.transferStatus == 'RECEIVE'}">
	    <div class="step-state step3">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">트레이너가 회원님께 견적서를 보내지 않았습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">트레이너 찾기를 통해 다른 트레이너를 찾아보세요!</label>
			<br><br>
			<button class="stepBtn" id="step1" onclick="location.href='showRecommendTrainerPageView.us?mno=${sessionScope.loginUser.mno}'">다른 트레이너 찾기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 2 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.matchingAccept== 'Y' && selectOneMyTrainer.transferStatus == 'RECEIVE' }">
	    <div class="step-state step3-ing">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">트레이너가 회원님께서 보낸 견적서가 도착했습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">지금 바로 견적서를 확인하시고 매칭을 요청하세요! (${(estDate + 3 - nowTime)}일 내에 매칭 요청을 보내야 합니다.)</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable2">견적서 확인하기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 3 && selectOneMyTrainer.matchingStatus == '매칭종료' && selectOneMyTrainer.matchingAccept== 'N' && selectOneMyTrainer.transferStatus == 'RECEIVE' }">
	    <div class="step-state step4">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">트레이너가 회원님의 매칭 요청을 수락하지 않았습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">트레이너 찾기를 통해 다른 트레이너를 찾아보세요!</label>
			<br><br>
			<button class="stepBtn" id="step1" onclick="location.href='showRecommendTrainerPageView.us?mno=${sessionScope.loginUser.mno}'">다른 트레이너 찾기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 3 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.matchingAccept== 'Y' && selectOneMyTrainer.transferStatus == 'RECEIVE' }">
	    <div class="step-state step4-ing">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
        <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">아직 트레이너가 매칭 요청을 수락하지 않았습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">매칭 요청에 대한 답변이 오기까지 ${(estDate + 3 - nowTime)}일 남았습니다!</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable2">견적서 확인하기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 4 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.matchingAccept== 'Y' && selectOneMyTrainer.transferStatus == 'RECEIVE' }">
	    <div class="step-state step5">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">트레이너가 회원님의 매칭 요청을 수락했습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">견적서에서 확인한 계좌번호로 입금을 완료한 후 트레이너에게 입금 확인을 요청하세요! (입금 가능 날짜가 ${(estDate + 3 - nowTime)}일 남았습니다.)</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable3">입금 확인 요청하기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 4 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.matchingAccept == 'Y' && selectOneMyTrainer.transferStatus == 'SEND' }">
	    <div class="step-state step4-ing">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 수락하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">매칭 요청 수락을 완료했습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">견적서에서 확인한 계좌번호로 입금을 완료한 후 트레이너에게 입금 확인을 요청하세요! (입금 가능 날짜가 ${(estDate + 3 - nowTime)}일 남았습니다.)</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable3">입금 확인 요청하기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 5 && selectOneMyTrainer.matchingAccept== 'Y' && selectOneMyTrainer.transferStatus == 'RECEIVE'}">
	    <div class="step-state step5">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">PT 서비스를 받기 위한 모든 단계가 끝났습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">트레이너가 입금 확인을 완료하면 바로 PT 서비스가 시작됩니다!</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable3">PT 페이지 이동하기</button>
			<br><br><br>
		</div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 5 && selectOneMyTrainer.matchingAccept== 'Y' && selectOneMyTrainer.transferStatus == 'SEND'}">
	    <div class="step-state step5">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 수락하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	    <br>
		<div class="stepDiv">
			<br><br>
			<label class="stepLabel">PT 서비스를 받기 위한 모든 단계가 끝났습니다.</label><br>
			<label class="stepLabel" style="color:#ff0066;">트레이너가 입금 확인을 완료하면 바로 PT 서비스가 시작됩니다!</label>
			<br><br>
			<button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable3">PT 페이지 이동하기</button>
			<br><br><br>
		</div>
	</c:if>
	
	
	<!-- footer ------------------------------------------------------------------------------------------------------------ -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	
	<!-- 내 정보 보내기 Modal ------------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<label class="modalHeader"><i class="fa fa-check"></i> 나의 다이어트 정보</label>&nbsp;&nbsp;&nbsp;&nbsp;
					<label class="surveyInfo">나이 : ${ survey.uAge } / 키 : ${ survey.height }cm / 몸무게 : ${ survey.weight}kg / 목표감량치 : -${ survey.hopeWeight}kg</label>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">PT를 받는 목적이 무엇인가요?</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class='form-control' type="text" value="${ survey.dietReason }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">이전 다이어트 실패의 이유</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.dietFail}" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호 트레이너 성별</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.hopeGender }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">가장빼고 싶은 신체부위</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.hopeBody }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호하는 다이어트방법</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.hopeMethod }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호하는 트레이너 연령</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.hopeAge }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">운동시작 희망일자</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.hopeStart }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">하루식사량</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.datFood }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호운동유형</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.hopeExercise }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">하루운동가능량</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.datExercise }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">장애 및 질병 여부</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.disease }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">일일운동시간</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ survey.dayTime }" readonly><br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="sendMyInfoBtn">내 정보 보내기</button>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 견적서 확인하기 Modal ------------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable2" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle2" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<label class="modalHeader"><i class="fa fa-check"></i>${ matchingTrainer.name }의 견적서 </label>&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">제목</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class='form-control' type="text" value="${ selectOneMyTrainer.matchEstName }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">커리큘럼</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<textarea class="form-control" type="text" readonly style="height:150px !important">${ selectOneMyTrainer.matchEstContents}</textarea><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">개월수</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ selectOneMyTrainer.matchEstDay }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">가격</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ selectOneMyTrainer.matchEstPrice }" readonly><br>
					<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">은행/계좌번호</label>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ selectOneMyTrainer.matchEstName }" readonly><br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="sendMatchingRequest">매칭 요청하기</button>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 입금 확인 요청하기 Modal ------------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable3" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle3" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<label class="modalHeader"><i class="fa fa-check"></i> ${ matchingTrainer.name } 트레이너님과 매칭이 완료되었습니다! </label>&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<br>
					<label class="subTitleLabel">트레이너가 입금 확인 후 PT페이지를 열면 아맞다와 함께 맞춤 다이어트를 시작해보세요!</label>
					<br>
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="defaultInline1" name="hopeBody" value="팔부위" checked>
					 	<label class="custom-control-label" for="defaultInline1" style="font-size:14px;">해당 트레이너에게 입금을 완료했으며, PT 서비스를 시작하는데 동의하십니까?</label>
						<br><br>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="sendDepositCheckRequest">입금 확인 요청하기</button>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<script>
	
		// 프로필 보기 버튼 클릭 시
		$(".matchingStartBtn").click(function() {
			
			var mno = ${ sessionScope.loginUser.mno };
			var tno = $(this).parent().children().eq(0).val();
			var tname = $(this).parent().children().eq(1).val();
			console.log("mno : " + mno);
			console.log("tno : " + tno);
			console.log("tname : " + tname);
			
			location.href='showProfileDetailPageView.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;
	
		});
		
		// 1. 다이어트 정보 보내기 버튼 클릭 시
		$("#step1").click(function() {
			var mno = ${ sessionScope.loginUser.mno };
			
			$.ajax({
				url:"selectOneSurvey.us",
				data:{mno:mno},
				success:function(data){
					alert("서베이 가져옴");
				}
			});
			
		});
		
		// 2. 내 정보 보내기 버튼 클릭 시 (모달)
		$("#sendMyInfoBtn").click(function() {
			var mno = ${ sessionScope.loginUser.mno };
			var tno = ${ matchingTrainer.mno };
			var tname = "${ matchingTrainer.name }";
			
			location.href='updateMprocess1.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;
		});
		
		// 3. 매칭 요청하기 버튼 클릭 시
		$("#sendMatchingRequest").click(function() {
			var mno = ${ sessionScope.loginUser.mno };
			var tno = ${ matchingTrainer.mno };
			var tname = "${ matchingTrainer.name }";
			
			location.href='updateMprocess3.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;
			
		});
		
		// 4. 입금 확인 요청하기 버튼 클릭 시
		$("#sendDepositCheckRequest").click(function() {
			var mno = ${ sessionScope.loginUser.mno };
			var tno = ${ matchingTrainer.mno };
			var tname = "${ matchingTrainer.name }";
			
			location.href='updateMprocess4.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;
		});

		
	</script>

</body>
</html>