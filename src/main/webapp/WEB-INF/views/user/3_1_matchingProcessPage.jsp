<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<label class="matchingTitle1">${ matchingTrainer.name }님과의</label> <label class="matchingTitle2">매칭 단계</label>
	</div>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 0 }">
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
	<c:if test="${ selectOneMyTrainer.matchingLevel == 1 }">
	    <div class="step-state step2">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 1 }">
	    <div class="step-state step2-ing">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 2 }">
	    <div class="step-state step3">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 2 }">
	    <div class="step-state step3-ing">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 3 }">
	    <div class="step-state step4">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 3 }">
	    <div class="step-state step4-ing">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if>
	<c:if test="${ selectOneMyTrainer.matchingLevel == 4 }">
	    <div class="step-state step5">
	        <ul>
	            <li><p>매칭시작</p></li>
	            <li><p>내 정보 보내기<span></span></p></li>
	            <li><p>견적서 확인하기<span></span></p></li>
	            <li><p>매칭 요청하기<span></span></p></li>
	            <li><p>입금하기<span></span></p></li>
	        </ul>
	    </div>
	</c:if>
	
	
	<!-- footer ------------------------------------------------------------------------------------------------------------ -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	
	<!-- Modal ------------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<label class="modalHeader"><i class="fa fa-check"></i> 나의 다이어트 정보 </label>&nbsp;&nbsp;&nbsp;&nbsp;
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
		
	</script>

</body>
</html>