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
	width: 100%;
	height: 100%;
	background: whitesmoke;
}

.userSelect {
	width: 150px;
	font-family: 'Noto Sans KR', sans-serif;
	border: 0.5px solid darkgray;
	margin-left: 50px;
}

.userListDiv {
	width: 90%;
	border: 0.5px solid darkgray;
	margin-left: auto;
	margin-right: auto;
	padding: 10px;
	background: white;
	position:relative;
}

.userListDiv2 {
	width: 90%;
	border: 0.5px solid darkgray;
	margin-left: auto;
	margin-right: auto;
	padding: 10px;
	background: rgba(0, 0, 0, 0.3);
	position:relative;
	top:-132px; 
	left:0px;
	height:132px;
	margin-bottom:-132px;	
	text-align:center;
}

.userListDiv2Label{
	font-family: 'Noto Sans KR', sans-serif;
	color:white;
	height:132px;
	line-height:300%;
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


.remainDay {
	border-style:none; 
	background:#ffe6f3; 
	color:#ff0066;
	margin-left:auto; 
	margin-right:auto;
	width:100px;
}

.remainDay:hover {
	border-style:none; 
	background:white; 
	color:#ff0066; 
	margin-left:auto; 
	margin-right:auto;
	width:100px;
	border:1px solid #ff0066; 
	cursor:pointer;
}


.modal {
   font-family: 'Noto Sans KR', sans-serif;
}

.modal-header {   
   background:#ffe6f3 !important;
   border-left:0.2px solid gray !important;
}

.modalHeader {
   color: #ff0066;
   font-weight: bold;
   font-family: 'Noto Sans KR', sans-serif;
   
}
.surveyInfo{
   font-weight: bold;
   font-family: 'Noto Sans KR', sans-serif;
   font-size:14px;
   margin-top:3px;
}

.modalMenubar {
   width:100%;
   font-family: 'Montserrat', sans-serif;
}

.modalMenubar thead {
   text-align:center;
   font-weight:bold;
}

.modalMenubar td {
   width:20%;
   padding-top:15px;
   padding-bottom:15px;
   font-family: 'Noto Sans KR', sans-serif;
   font-size:14px;
}

.modalBody {
   padding:20px;
}

.modalMenu {
   color: #ff0066;
   font-size:16px;
   font-weight:bold;
   font-family: 'Noto Sans KR', sans-serif;
}

.form-control {
   font-family: 'Noto Sans KR', sans-serif;
   font-size: 14px !important;
   height:30px !important;
   background:white !important;
}

.index{
   color: #ff0066;
   font-weight:bold;
}

.subTitleLabel {
   font-weight:bold;
   font-size: 14px;
   font-family: 'Noto Sans KR', sans-serif;
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
	
	<c:if test="${ empty list }">
	
		<div class="recommendtrainerListNullDiv">
			<br><br>
			<label class="recommendtrainerListNullLabel">아직받은 보낸 요청이 없습니다. </label><br>
			<label class="recommendtrainerListNullLabel" style="color:#ff0066;">회원 찾기를 통해 직접요청을 보낼수 있습니다.!</label>
			<br><br><br>
		</div>
	
	</c:if>
	<c:if test="${ !empty list }">
	<!-- 정렬을 위한 셀렉트 옵션 영역 -->
	<div class="searchUserListDiv">
		<br> 
		<select id="userListSort" class="userSelect">
			<option >- 선택해주세요 -</option>
			<option value="join" >신규가입순</option>
			<option value="start">운동시작일순</option>
			<option value="excerPeriod">운동개월수순</option>
		</select> <br>
		<br>
		<jsp:useBean id="today" class="java.util.Date"/>
		<fmt:formatDate var="nowTime" value="${ today }" pattern="yyyyMMdd"/>
		
	<!-- 반복문으로 회원들의 목록을 조회하는 영역  -->	
		<c:forEach var="user" items="${ list }" varStatus="status">
			<c:set var="imgName" value="${user.attachment.modiName}${user.attachment.extension}" />
			<%-- <fmt:parseDate var="eDate" value="${ user.mprocess.processDate }" pattern="yyyyMMdd"/> --%>
			<fmt:formatDate var="estDate" value="${ user.mprocess.processDate }" pattern="yyyyMMdd"/>
			
			<!-- 남은 일수 유져 --------------------------------------------------------------------------------------------- -->
			<c:if test="${(estDate + 3 - nowTime) > 0}">
			<div class="userListDiv">
				<table class="userListTable">
					<tr>
						<input type="hidden" name="userMno" value="${ user.mno }" />
						<td rowspan="3" class="userListTableTd1">
							<div class="profileImg" style="border-radius: 50%;">
								<img class="profileImage" style="border-radius: 50%;"
									src="${ contextPath }/resources/uploadFiles/${ imgName}">
							</div>
						</td>
						<td class="userListTableTd2"><label class="userName" for="userName">${ user.name }</label>
							<label class="userGender">(${user.gender })</label></td>
						<td></td>
					</tr>
					<tr>
						<td><label class="userKeyword">#${ user.survey.hopeExercise }</label></td>
						<td><button class="remainDay" name="remainCheck${ user.mno }">남은일수 : <label>${ (estDate + 3 - nowTime)}</label>일</button></td>						
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
			</c:if>
			
			<!-- 기한 초과 유져 --------------------------------------------------------------------------------------------- -->
			<c:if test="${(estDate + 3 - nowTime) <= 0}">
			<div class="userListDiv">
				<table class="userListTable">
					<tr>
						<input type="hidden" name="userMno" value="${ user.mno }" />
						<td rowspan="3" class="userListTableTd1">
							<div class="profileImg">
								<img class="profileImage"
									src="${ contextPath }/resources/uploadFiles/${ imgName}">
							</div>
						</td>
						<td class="userListTableTd2"><label class="userName" for="userName">${ user.name }</label>
							<label class="userGender">(${user.gender })</label></td>
						<td></td>
					</tr>
					<tr>
						<td><label class="userKeyword">#${ user.survey.hopeExercise }</label></td>
						<td><button class="remainDay" name="remainCheck${ user.mno }">기한초과</button></td>						
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
			<div class="userListDiv2">
			<br>
			<label class="userListDiv2Label">응답 기한이 초과된 회원입니다.</label>
			</div>
			</c:if>
			
			<br>
			<!-- Modal ---------------------------------------------------------------------------------------------------------- -->
			<div class="modal fade" id="exampleModalScrollable${user.mno}" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<label class="modalHeader"><i class="fa fa-check"></i> ${user.name }님의 다이어트 정보 </label>&nbsp;&nbsp;&nbsp;&nbsp;
							<label class="surveyInfo"> 나이 : ${ user.survey.uAge } / 키 : ${user.survey.height }cm / 몸무게 : ${ user.survey.weight}kg / 목표감량치 : -${user.survey.hopeWeight}kg</label>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
               <br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">PT를 받는 목적이 무엇인가요?</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class='form-control' type="text" value="${ user.survey.dietReason }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">이전 다이어트 실패의 이유</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.dietFail}" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호 트레이너 성별</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.hopeGender }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">가장빼고 싶은 신체부위</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.hopeBody }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호하는 다이어트방법</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.hopeMethod }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호하는 트레이너 연령</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.hopeAge }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">운동시작 희망일자</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.hopeStart }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">하루식사량</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.datFood }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">선호운동유형</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.hopeExercise }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">하루운동가능량</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.datExercise }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">장애 및 질병 여부</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.disease }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">일일운동시간</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ user.survey.dayTime }" readonly><br>
            </div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" name="estimateOpen"
								class="btn btn-primary" data-toggle="modal" value="${ user.mno }" 
								data-target="#estimateSendModal">내가 보낸 견적서 보기</button>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>
		
		</c:if>
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
	
		<!-------------------------- 견적서 확인을 위한 modal창 생성 코드--------------------------->
			<div class="modal fade" id="estimateSendModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<label class="modalHeader"><i class="fa fa-check"></i>회원님에게 보낸 견적서 내용입니다.</label>&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<div class="modal-body">

					<div class="estimateDiv">
						<input class="form-control" type="hidden" name="tno" value="${ sessionScope.loginUser.mno }" />
						<input class="form-control" type="hidden" id="estUno" value="" />  
						<br>
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">제목</label> 
						<br>
						<input class="form-control" type="text" id="estName" name="estName" placeholder="견적서 제목을 입력해주세요" value="" readonly />
						<br>
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">커리큘럼</label> 
						<br>
						<textarea class="form-control" id="estContents" name="estContents" placeholder="커리큘럼을 입력해주세요" style="height:150px !important;resize: none;" readonly></textarea>
						<br>
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">운동일수</label>
				        <br>
				    	<input class="form-control" type="text" id="estDay" value=""/>
						<br>
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">가격</label>
						<br>
						<input class="form-control" type="number" name="estPrice" id="estPrice" placeholder="가격을 입력해주세요" value="" readonly/>
						<br>
						
					</div>
				
	
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" name="matchingCancel">매칭 철회하기</button>
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
			var remainDay2 = $("button[name=remainCheck]").children().text();
			
			var mno = $("input[name=userMno]").val();
			console.log("mno : " + mno)
			var remainDay = "#remainDay" + mno;
			console.log("remainDay2 : " + remainDay2);
			
			if(remainDay2 <= 0){
				console.log(remainDay);
				$(remainDay).parent().parent().parent().parent().parent().parent().css({"background":"lightgray"});
				$(remainDay).parent().parent().parent().parent().parent().css({"background":"lightgray"});
				$("button[name=remainCheck]").text("기한초과");
				
				
			}
			console.log(remainDay);
		})
		$("button[name=estimateOpen]").click(function(){
			
			var uno = $(this).val();
			var tno = ${sessionScope.loginUser.mno};
			console.log("uno : " + uno);
			console.log("tno : " + tno);
			$.ajax({
				url:"matchEstimateOpen.tr",
				type:"get",
				data:{uno:uno, tno:tno},
				success:function(data){
					var matchEstName = data.matchEstName;
					var matchEstContents = data.matchEstContents;
					var matchEstPrice = data.matchEstPrice;
					var matchEstDay = data.matchEstDay;
					
					console.log(data);
					console.log(uno);
					
 					$("#estName").attr("value", matchEstName);
 					$("#estContents").text(matchEstContents);
 					$("#estPrice").attr("value", matchEstPrice);
 					$("#estDay").attr("value", matchEstDay);
 					$("#estUno").attr("value", uno)
				}
				
			})
			
		});
		
		$("button[name=matchingCancel]").click(function(){
			var uno = $("#estUno").val();
			var tno = ${sessionScope.loginUser.mno};
			
			console.log("uno : " + uno + "tno : " + tno);
			
			if(confirm("견적서를 취소하시겠습니까?\n (멤버쉽횟수는 반환되지 않습니다.)") == true){
				
				$.ajax({
					url:"matchEstCancel.tr",
					data : {tno:tno, uno:uno},
					type : "get",
					success:function(data){
						if(data == "SUCCESS"){
							alert("회원에게 보낸 견적서를 취소했습니다 .");
							location.reload();
						}else{
							alert("여긴안되는데,,, 견적서를 취소했습니다 .")

						}
						
					}
				
				})
				
			}
			
			
			
		});
		
		
		

		
	</script>
	
</body>
</html>