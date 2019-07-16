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
	margin-left: 2px;
	margin-right: -4px;
	background: white;
	color: black;
}
.subMenuBar1:hover{
	cursor:pointer;
	color:#ff0066;
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
}

.subMenuBar2:hover {
	color: white;
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
	border: 0.5px solid darkgray;
	margin-left: auto;
	margin-right: auto;
	padding: 10px;
	background: white;
	position:relative;
}

.userListDiv2 {
	width: 90%;
	border: 1px solid darkgray;
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
   border-left:0.5px solid gray !important;
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
   margin-top:2px;
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
			<label class="recommendtrainerListNullLabel">아직받은 요청이 없습니다. </label><br>
			<label class="recommendtrainerListNullLabel" style="color:#ff0066;">회원 찾기를 통해 직접 홍보할수 있습니다.!</label>
			<br><br><br>
		</div>
	
	</c:if>
	
	<c:if test="${ !empty list }">
	<!-- 정렬을 위한 셀렉트 옵션 영역 -->
	<div class="searchUserListDiv">
		<br> <select id="userListSort" class="userSelect">
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
						<td rowspan="3" class="userListTableTd1" >
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
								data-target="#estimateSendModal" onclick="openEstimate(this)">내 견적서 보기</button>
							<button class="btn btn-secondary" name="denyRequest" value="${ user.mno }">거절하기</button>
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
				<c:url var="blistBack" value="showMyPageReceivedMatching.tr">
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
					<c:url var="blistCheck" value="showMyPageReceivedMatching.tr">
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
				<c:url var="blistEnd" value="showMyPageReceivedMatching.tr">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					<c:param name="tno" value="${ sessionScope.loginUser.mno }"></c:param>
				</c:url>
				<a href="${ blistEnd }">&nbsp;[다음]</a>
			</c:if>
			
		</div>
		
		
		</div>

			<!-------------------------- 견적서 보내기 위한 modal창 생성 코드--------------------------->
			<div class="modal fade" id="estimateSendModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<label class="modalHeader"><i class="fa fa-check"></i>${ sessionScope.loginUser.name } 트레이너님의 견적서 정보</label>
						</div>
						<div class="modal-body">
							<div class="subMenuBar">
						      <div class="subMenuBar1" onclick="existEstimate()">기존견적서 불러오기</div>
						      <div class="subMenuBar2" onclick="writeEstimate()">견적서 새로 작성하기<input type="hidden" value="3"><input type="hidden" class="uno2" value=""></div>
						  	</div>
						  	<br />
						  	 <!-- onchange="estimateChange()" -->
						  	<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">견적서선택하기</label>
						  	<select class="form-control" name="estimateType" onchange="estimateChange(this.value)" style="height: 35px !important;">
						  		<option value="3">최근견적서</option>
						  		<option value="1">견적서1</option>
						  		<option value="2">견적서2</option>
						  	</select>
						  	<label class="estimateNew" id="estimateNew">견적서를 새로 작성해보세요!</label>
							<br />
					<div class="estimateDiv">
						<input type="hidden" name="tno" value="${ sessionScope.loginUser.mno }" /> 
						<input type="hidden" name="estNo" value=""/> 
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">제목</label>
						<br>
						<input class="form-control" type="text" id="estName" name="estName" placeholder="견적서 제목을 입력해주세요" value="" readonly />
						<br>
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">커리큘럼</label>
						<br>
						<textarea class="form-control" id="estContents" name="estContents" placeholder="커리큘럼을 입력해주세요" style="resize: none; height:150px !important;" readonly>${ estimate.estContents }</textarea>
						<br>
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">개월수</label>
				        <br>
					    <select class="form-control" name="estDay" id="estDay" style="height: 35px !important;" >
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
						<br>
						<label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">가격</label>
						<br>
						<input class="form-control" type="number" name="estPrice" id="estPrice" placeholder="가격을 입력해주세요" value="" readonly/>
						<br>
						
					</div>
				
	
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">닫기</button>
							<button type="button" class="btn btn-primary" name="matchingStart">내 견적서 보내기</button>
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
			var remainDay2 = $("button[name=remainCheck]").children().text();		
			var mno = $("input[name=userMno]").val();
			var remainDay = "#remainDay" + mno;

			
			if(remainDay2 <= 0){
				console.log(remainDay);
				$(remainDay).parent().parent().parent().parent().parent().parent().css({"background":"lightgray"});
				$(remainDay).parent().parent().parent().parent().parent().css({"background":"lightgray"});
				$("button[name=remainCheck]").text("기한초과");

			}
			
		})
		
		 $(".estimateNew").hide();
	//정렬 옵션변경시 그에 맞게 정렬값을 주도록 하는 스크립트
	$("#userListSort").change(selectChange);
	
	function selectChange(){
		var value = $("option:selected").val();
		location.href="userListSort.tr?sort=" + value;
		
	}
	
	//$("select[name=estimateType]").change(estimateChange);
	
	//견적서 변경시 마다 값 호출하기
	function estimateChange(value) {
		var estType = value;
		var mno = ${sessionScope.loginUser.mno};
		console.log("estType : " + estType);
		//console.log("estType2 : " + estType2);
		$.ajax({
			url:"ajaxshowMyPageEstimate.tr",
			data:{mno:mno, estType:estType},
			type:"get",
            dataType:"json",
            success:function(data){
            	if(data != null){
            	 $("input[name=estNo]").val(data.estNo);
            	 $("input[name=estName]").attr("readonly", true).val(data.estName);
                 $("textarea[name=estContents]").attr("readonly", true).val(data.estContents);
                 $("input[name=estPrice]").attr("readonly", true).val(data.estPrice);
                 $("select[name=estDay]").attr("disabled", true).val(data.estDay).prop("selected", true);
                 $("select[name=estimateType]").show();
                 $(".estimateNew").hide();
                 $("button[name=matchingStart]").show();
                 $("button[name=insertEstMatchStart]").hide();
            	}else{
            		
            	 alert("견적서가 없습니다! 새로작성해보세요!");
            	 $("input[name=estNo]").val("");
            	 $("input[name=estName]").attr("readonly", false).val("");
            	 $("textarea[name=estContents]").attr("readonly", false).val("");
                 $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
                 $("input[name=estPrice]").attr("readonly", false).val("");
                 $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
                 $(".subMenuBar1").css({"background":"white", "color":"black"}); 
                 $("select[name=estimateType]").hide();
                 $(".estimateNew").show();
                 $("button[name=matchingStart]").hide();
                 $("button[name=insertEstMatchStart]").show();
            	}
            }
		})
	}
	
	//견적서 보기 클릭시
	function openEstimate(value) {
		var uno = $(value).val();
		$("button[name=matchingStart]").attr("value", uno);
		$("button[name=insertEstMatchStart]").attr("value", uno);
		//$(".subMenuBar2").children().eq(1).attr("value", uno);

		var mno = ${sessionScope.loginUser.mno}
		var estType = "3";
		$.ajax({
			url:"ajaxshowMyPageEstimate.tr",
			data:{mno:mno, estType:estType},
			type:"get",
            dataType:"json",
            success:function(data){
            	if(data != null){
           		 $("input[name=estNo]").val(data.estNo);
               	 $("input[name=estName]").attr("readonly", true).val(data.estName);
                 $("textarea[name=estContents]").attr("readonly", true).val(data.estContents);
                 $("input[name=estPrice]").attr("readonly", true).val(data.estPrice);
                 $("select[name=estDay]").attr("disabled", true).val(data.estDay).prop("selected", true);
                 $("select[name=estimateType]").show();
                 $("select[name=estimateType]").val(3).prop("selected", true);
                 $(".subMenuBar1").css({"background":"#ff0066", "color":"white"});
                 $(".subMenuBar2").css({"background":"white", "color":"black"}); 
                 $(".estimateNew").hide();
                 $("button[name=matchingStart]").show();
                 $("button[name=insertEstMatchStart]").hide();
            	}else{
            		
            		///////////////////////////견적서 시험 //////////////////
            		var estType = "1";
            		$.ajax({
            			url:"ajaxshowMyPageEstimate.tr",
            			data:{mno:mno, estType:estType},
            			type:"get",
                        dataType:"json",
                        success:function(data){
                        	if(data != null){
                       		 $("input[name=estNo]").val(data.estNo);
                           	 $("input[name=estName]").attr("readonly", true).val(data.estName);
                             $("textarea[name=estContents]").attr("readonly", true).val(data.estContents);
                             $("input[name=estPrice]").attr("readonly", true).val(data.estPrice);
                             $("select[name=estDay]").attr("disabled", true).val(data.estDay).prop("selected", true);
                             $("select[name=estimateType]").show();
                             $("select[name=estimateType]").val(1).prop("selected", true);
                             $(".subMenuBar1").css({"background":"#ff0066", "color":"white"});
                             $(".subMenuBar2").css({"background":"white", "color":"black"}); 
                             $(".estimateNew").hide();
                             $("button[name=matchingStart]").show();
                             $("button[name=insertEstMatchStart]").hide();
                        	}else{
                        		
                        		var estType = "2";
                        		$.ajax({
                        			url:"ajaxshowMyPageEstimate.tr",
                        			data:{mno:mno, estType:estType},
                        			type:"get",
                                    dataType:"json",
                                    success:function(data){
                                    	if(data != null){
                                   		 $("input[name=estNo]").val(data.estNo);
                                       	 $("input[name=estName]").attr("readonly", true).val(data.estName);
                                         $("textarea[name=estContents]").attr("readonly", true).val(data.estContents);
                                         $("input[name=estPrice]").attr("readonly", true).val(data.estPrice);
                                         $("select[name=estDay]").attr("disabled", true).val(data.estDay).prop("selected", true);
                                         $("select[name=estimateType]").show();
                                         $("select[name=estimateType]").val(2).prop("selected", true);
                                         $(".subMenuBar1").css({"background":"#ff0066", "color":"white"});
                                         $(".subMenuBar2").css({"background":"white", "color":"black"}); 
                                         $(".estimateNew").hide();
                                         $("button[name=matchingStart]").show();
                                         $("button[name=insertEstMatchStart]").hide();
                                    	}else{
                                    		
                                    		
                                    	 $("input[name=estNo]").val("");
                                       	 $("input[name=estName]").attr("readonly", false).val("");
                                       	 $("textarea[name=estContents]").attr("readonly", false).val("");
                                         $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
                                         $("input[name=estPrice]").attr("readonly", false).val("");
                                         $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
                                         $(".subMenuBar1").css({"background":"white", "color":"black"}); 
                                         $("select[name=estimateType]").hide();
                                         $(".estimateNew").show();
                                         $("button[name=matchingStart]").hide();
                                         $("button[name=insertEstMatchStart]").show();
                                    	}
                                    }
                        		})
                        		
                        		
                        	 $("input[name=estNo]").val("");
                           	 $("input[name=estName]").attr("readonly", false).val("");
                           	 $("textarea[name=estContents]").attr("readonly", false).val("");
                             $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
                             $("input[name=estPrice]").attr("readonly", false).val("");
                             $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
                             $(".subMenuBar1").css({"background":"white", "color":"black"}); 
                             $("select[name=estimateType]").hide();
                             $(".estimateNew").show();
                             $("button[name=matchingStart]").hide();
                             $("button[name=insertEstMatchStart]").show();
                        	}
                        }
            		})
            		
            		///////////////////////////////시험끝
            	 $("input[name=estNo]").val("");
               	 $("input[name=estName]").attr("readonly", false).val("");
               	 $("textarea[name=estContents]").attr("readonly", false).val("");
                 $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
                 $("input[name=estPrice]").attr("readonly", false).val("");
                 $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
                 $(".subMenuBar1").css({"background":"white", "color":"black"}); 
                 $("select[name=estimateType]").hide();
                 $(".estimateNew").show();
                 $("button[name=matchingStart]").hide();
                 $("button[name=insertEstMatchStart]").show();
            	}
            }
		})
				
	}
		//견적서 새로 작성
		function writeEstimate(){
			var mno = ${ sessionScope.loginUser.mno };
			var uno = $("button[name=insertEstMatchStart]").val();
			console.log("넘어온 uno : " + uno);
			console.log("견적서 mno : " + mno);
			$("input[name=estNo]").val("");
            $("input[name=estName]").attr("readonly", false).val("");
            $("textarea[name=estContents]").attr("readonly", false).val("");
            $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
            $("input[name=estPrice]").attr("readonly", false).val("");
            $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
            $(".subMenuBar1").css({"background":"white", "color":"black"}); 
            $("select[name=estimateType]").hide();
            $(".estimateNew").show();
            $("button[name=matchingStart]").hide();
            $("button[name=insertEstMatchStart]").show();
		
		}
		//기존견적서 작성
		function existEstimate(){
			var mno = ${ sessionScope.loginUser.mno };
			var uno = $(".subMenuBar2").children().eq(1).val();
			console.log("넘어온 uno : " + uno);
			console.log("견적서 mno : " + mno);
			var estType = "3";
			$.ajax({
				url:"ajaxshowMyPageEstimate.tr",
				data:{mno:mno, estType:estType},
				type:"get",
	            dataType:"json",
	            success:function(data){
	            	if(data != null){
            		 $("input[name=estNo]").val(data.estNo);
	               	 $("input[name=estName]").attr("readonly", true).val(data.estName);
                     $("textarea[name=estContents]").attr("readonly", true).val(data.estContents);
                     $("input[name=estPrice]").attr("readonly", true).val(data.estPrice);
                     $("select[name=estDay]").attr("disabled", true).val(data.estDay).prop("selected", true);
	                 $(".subMenuBar1").css({"background":"#ff0066", "color":"white"});
	                 $(".subMenuBar2").css({"background":"white", "color":"black"}); 
	                 $("select[name=estimateType]").show();
	                 $(".estimateNew").hide();
	                 $("button[name=matchingStart]").show();
	                 $("button[name=insertEstMatchStart]").hide();
	            	}else{
	            		///////기존견적서를 1개라도 찾아보기 //////
	            		var estType = "1";
            		$.ajax({
            			url:"ajaxshowMyPageEstimate.tr",
            			data:{mno:mno, estType:estType},
            			type:"get",
                        dataType:"json",
                        success:function(data){
                        	if(data != null){
                       		 $("input[name=estNo]").val(data.estNo);
                           	 $("input[name=estName]").attr("readonly", true).val(data.estName);
                             $("textarea[name=estContents]").attr("readonly", true).val(data.estContents);
                             $("input[name=estPrice]").attr("readonly", true).val(data.estPrice);
                             $("select[name=estDay]").attr("disabled", true).val(data.estDay).prop("selected", true);
                             $("select[name=estimateType]").show();
                             $("select[name=estimateType]").val(1).prop("selected", true);
                             $(".subMenuBar1").css({"background":"#ff0066", "color":"white"});
                             $(".subMenuBar2").css({"background":"white", "color":"black"}); 
                             $(".estimateNew").hide();
                             $("button[name=matchingStart]").show();
                             $("button[name=insertEstMatchStart]").hide();
                        	}else{
                        		
                        		var estType = "2";
                        		$.ajax({
                        			url:"ajaxshowMyPageEstimate.tr",
                        			data:{mno:mno, estType:estType},
                        			type:"get",
                                    dataType:"json",
                                    success:function(data){
                                    	if(data != null){
                                   		 $("input[name=estNo]").val(data.estNo);
                                       	 $("input[name=estName]").attr("readonly", true).val(data.estName);
                                         $("textarea[name=estContents]").attr("readonly", true).val(data.estContents);
                                         $("input[name=estPrice]").attr("readonly", true).val(data.estPrice);
                                         $("select[name=estDay]").attr("disabled", true).val(data.estDay).prop("selected", true);
                                         $("select[name=estimateType]").show();
                                         $("select[name=estimateType]").val(2).prop("selected", true);
                                         $(".subMenuBar1").css({"background":"#ff0066", "color":"white"});
                                         $(".subMenuBar2").css({"background":"white", "color":"black"}); 
                                         $(".estimateNew").hide();
                                         $("button[name=matchingStart]").show();
                                         $("button[name=insertEstMatchStart]").hide();
                                    	}else{
                                    		
                                    		
                                    	 $("input[name=estNo]").val("");
                                       	 $("input[name=estName]").attr("readonly", false).val("");
                                       	 $("textarea[name=estContents]").attr("readonly", false).val("");
                                         $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
                                         $("input[name=estPrice]").attr("readonly", false).val("");
                                         $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
                                         $(".subMenuBar1").css({"background":"white", "color":"black"}); 
                                         $("select[name=estimateType]").hide();
                                         $(".estimateNew").show();
                                         $("button[name=matchingStart]").hide();
                                         $("button[name=insertEstMatchStart]").show();
                                    	}
                                    }
                        		})
                        		
                        		
                        	 $("input[name=estNo]").val("");
                           	 $("input[name=estName]").attr("readonly", false).val("");
                           	 $("textarea[name=estContents]").attr("readonly", false).val("");
                             $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
                             $("input[name=estPrice]").attr("readonly", false).val("");
                             $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
                             $(".subMenuBar1").css({"background":"white", "color":"black"}); 
                             $("select[name=estimateType]").hide();
                             $(".estimateNew").show();
                             $("button[name=matchingStart]").hide();
                             $("button[name=insertEstMatchStart]").show();
                        	}
                        }
            		})
	            		
	            		
	            		//////////기존견적서 찾기 끝//////
	            		
	            		
	            		
	            	 alert("견적서가 없습니다! 새로작성해보세요!");
	            	 $("input[name=estNo]").val("");
	               	 $("input[name=estName]").attr("readonly", false).val("");
	               	 $("textarea[name=estContents]").attr("readonly", false).val("");
	                 $("select[name=estDay]").attr("disabled", false).val(30).prop("selected", true);
	                 $("input[name=estPrice]").attr("readonly", false).val("");
	                 $(".subMenuBar2").css({"background":"#ff0066", "color":"white"});
	                 $(".subMenuBar1").css({"background":"white", "color":"black"}); 
	                 $("select[name=estimateType]").hide();
	                 $(".estimateNew").show();
	                 $("button[name=matchingStart]").hide();
	                 $("button[name=insertEstMatchStart]").show();
	                 
	            	}
	            }
			})
			
		}
	
	
	//내견적서 보내기 버튼 클릭시 (견적서있을경우)
	$("button[name=matchingStart]").click(function(){
		var uno = $("button[name=matchingStart]").val();
		var tno = ${sessionScope.loginUser.mno};
		var estNo = $("input[name=estNo]").val();
		var userName = $("button[name=userInfoShow]").parent().parent().parent().children().children("td").eq(1).children().eq(0).text();
		var estName = $("input[name=estName]").val();
		var estContents = $("textarea[name=estContents]").val();
		var estPrice = $("input[name=estPrice]").val();
		var estDay = $("select[name=estDay]").val();
        var memberShip = $("#remainNum2").text();
		
        //
		 if(confirm(userName +"회원 님에게 매칭을 신청하시겠습니까 ?\n(멤버쉽 횟수가 1회 차감됩니다.)\n" + 
				 "현재 이용가능한 멤버쉽 횟수 : " + memberShip + "회 남았습니다.") == true){
			 
			 if(memberShip > 0){
				 
				 $.ajax({
					url : "receivedReqAccept.tr",
					data : {uno:uno, tno:tno, estName:estName, estContents:estContents, estPrice:estPrice, estDay:estDay},
					type : "post",
					success:function(data){
												
						if(data == "FAIL"){						
							alert("견적서 보내기 쉴패!.")
							location.reload();

						}else{
							alert(userName + "님에게 견적서를 보냈습니다.\n 견적서는 3일이내 답변을 받아보실수 있습니다.")
							location.reload();
							
						}
						
					}
					
				 })
				 
			 }else{
				 alert("멤버쉽이 부족합니다. 충전후 이용해보세요!");
				 location.href="showMyPageMembership.tr";
				 
			 }
			 
				/* location.href="insertMatchStart.tr?uno=" + uno + "&tno=" + tno + 
						"&estNo=" + estNo + "&estName=" + estName + "&estContents=" + estContents + "&estPrice=" + estPrice +
						"&estDay=" + estDay; */
		    }
		    else{
		        return ;
		    }
	})
	
	//견적서가 없을경우 입력후 매칭 시작하는 메소드
	$("button[name=insertEstMatchStart]").click(function(){
		var uno = $("button[name=matchingStart]").val();
		var tno = ${sessionScope.loginUser.mno};
		var userName = $("button[name=userInfoShow]").parent().parent().parent().children().children("td").eq(1).children().eq(0).text();
		var estName = $("input[name=estName]").val();
       	var estContents = $("textarea[name=estContents]").val();
        var estDay = $("select[name=estDay]").val();
        var estPrice = $("input[name=estPrice]").val();
        var memberShip = $("#remainNum2").text();
        alert(uno)
        
	 	if(confirm(userName +"회원 님에게 매칭을 신청하시겠습니까 ?\n(멤버쉽 횟수가 1회 차감됩니다.)\n" 
	 			+ "현재 이용가능한 멤버쉽 횟수 : " + memberShip + "회 남았습니다.") == true){
	 		
	 		 if(estName == "" || estName == null){
	             alert("견적서 이름은 필수 입력사항입니다.");
	             $($("input[name=estName]").focus());
	             return false;   
	          }
	          if(estContents == "" || estContents == null){
	          	alert("견적서 내용은 필수 입력사항입니다.");
	              $($("textarea[name=estContents]").focus());
	              return false;  
	          }
	          if(estPrice == "" || estPrice == null){
	          	alert("견적서 가격은 필수 입력사항입니다.");
	              $($("input[name=estPrice]").focus());
	              return false;  
	          }
	          if(memberShip > 0){
					 
					 $.ajax({
						url : "insertMatchStart.tr",
						data : {uno:uno, tno:tno, estName:estName, estContents:estContents, estPrice:estPrice, estDay:estDay},
						type : "post",
						success:function(data){
													
							if(data == "false"){						
								alert("해당 회원에게는 이미 견적서를 보냈거나 요청을 받은 회원입니다!! 요청내역을 확인해보세요.")
								location.reload();

							}else{
								alert(userName + "님에게 견적서를 보냈습니다.\n 견적서는 3일이내 답변을 받아보실수 있습니다.")
								location.reload();
								
							}
							
						}
						
					 })
					 
				 }else{
					 alert("멤버쉽이 부족합니다. 충전후 이용해보세요!");
					 location.href="showMyPageMembership.tr";
					 
				 }		       
	    }
	    else{
	        return ;
	    }
		
	})
	$("button[name=denyRequest]").click(function(){
		var uno = $(this).val();
		alert("거절할 사람의 id : " + uno);
		var tno = ${sessionScope.loginUser.mno}
		if(confirm ("요청을 거절하시겠습니까?") == true){
		
		$.ajax({
			url : "denyRequest.tr",
			data : {tno:tno, uno:uno},
			type : "get",
			success:function(data){
				
				
				
				if(data == "SUCCESS"){
					alert("회원님의 요청을 거절했습니다.")
					location.reload();
				}else{
					alert("실패했음. 원인을 찾자.")
					location.reload();
				}
				
			}
			
		})
		
		}else{
			return ;
		}
		
	})
		
		
	</script>
	
</body>
</html>