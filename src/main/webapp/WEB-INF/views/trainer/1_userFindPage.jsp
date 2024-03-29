<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아맞다-회원찾기페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trainer/1_userFindPage.css">
<style>
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
	.estimateDiv {
   width:100%;
   height:100%;
   padding-left:18px;
   padding-right:18px;
	}
	
	.subTitle {
	   font-size: 18px;
	   font-weight: bold;
	   font-family: 'Noto Sans KR', sans-serif;
	   color: black;
	}
	
	input {
	   width:350px;
	   height:28px;
	   font-size:12px;
	   font-family: 'Nanum Gothic', sans-serif;
	}
	
	.addKeyword {
	   width:80px;
	   height:60%;
	   border-style:none;
	   background:#ff0066;
	   color:white;
	   font-family: 'Noto Sans KR', sans-serif;
	   font-size:14px;
	}
	
	.keywordDiv {
	   width:100%;
	   height:100%;
	}
	
	.badge {
	   font-family: 'Noto Sans KR', sans-serif;
	   background: #ffe6f3;
	}
	
	.curriculum {
	   width:100%;
	   height:200px;
	   font-size:12px;
	   font-family: 'Nanum Gothic', sans-serif;   
	}
	
	select {
	   width:100px;
	   height:28px;
	   font-size:12px;
	   font-family: 'Nanum Gothic', sans-serif;
	}
	
	.modification {
	   width:150px;
	   height:100%;
	   border-style:none;
	   background:#ff0066;
	   color:white;
	   font-family: 'Noto Sans KR', sans-serif;
	   font-size:18px;
	   float:right;
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

 
	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	
	<!-- 키워드 검색 영역 ------------------------------------------------------------------------------------------------------ -->
	<div class="searchKeywordDiv">
		<label class="searchKeywordLabel">키워드</label>&nbsp;&nbsp;&nbsp;
		<input name="searchKeywordInput" class="searchKeywordInput" type="text">&nbsp;&nbsp;&nbsp;
		<button class="searchKeywordBtn" onclick="searchKeywordAll()"><i class="fa fa-search"></i></button>
		<br><br>
		<div class="keywordDiv">
			<span class="badge badge-pill badge-danger" id="keyword1" onclick="keywordAdd1()">#키워드1</span>&nbsp;
			<span class="badge badge-pill badge-danger" id="keyword2" onclick="keywordAdd2()">#키워드2</span>&nbsp;
			<span class="badge badge-pill badge-danger" id="keyword3" onclick="keywordAdd3()">#키워드3</span>&nbsp;
			<span class="badge badge-pill badge-danger" id="keyword4" onclick="keywordAdd4()">#키워드4</span>&nbsp;
			<span class="badge badge-pill badge-danger" id="keyword5" onclick="keywordAdd5()">#키워드5</span>			
		</div>
	</div>


	<!-- 회원 리스트 영역 ---------------------------------------------------------------------------------------------------- -->
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
			<c:set var="imgName" value="${user.attachment.modiName}${user.attachment.extension}" />
			<div class="userListDiv">
				<table class="userListTable">
					<tr>
						<input type="hidden" value="${ user.mno }" />
						<td rowspan="3" class="userListTableTd1">
							<div class="profileImg" style="border-radius: 50%;">
								<img class="profileImage" style="border-radius: 50%;"
									src="${ contextPath }/resources/uploadFiles/${ imgName}">
							</div>
						</td>
						<td class="userListTableTd2"><label class="userName" id="userName1" for="userName">${ user.name }</label>
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
							<label class="modalHeader"><i class="fa fa-check"></i> ${ user.name }의 다이어트 정보</label>&nbsp;&nbsp;&nbsp;&nbsp;
							<label class="surveyInfo">나이 : ${ user.survey.uAge } / 키 : ${ user.survey.height }cm / 몸무게 : ${ user.survey.weight}kg / 목표감량치 : -${ user.survey.hopeWeight}kg</label>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
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
								data-target="#estimateSendModal" onclick="openEstimate(this)">내 견적서 열기</button>
						</div>
					</div>
				</div>
			</div>
			
		</c:forEach>
		<!-- end of 회원목록 forEach문 -->
		
			<!-------------------------- 견적서 보내기 위한 modal창 생성 코드--------------------------->
			<div class="modal fade" id="estimateSendModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<label class="modalHeader"><i class="fa fa-check"></i> ${ sessionScope.loginUser.name } 트레이너 님의 견적서 정보</label>&nbsp;&nbsp;&nbsp;&nbsp;
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
		
		
		
		
		
		<br>
		
		<!-- 페이징 처리를 위한 코드, div지정후 페이징 처리 ----------------------------------->
		<div id="pagingArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				<button class="pagingBtn2">이전</button>
			</c:if>
			<c:if test="${ pi.currentPage > 1}">
				<c:url var="blistBack" value="showUserFindPageView.tr">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
				</c:url>
				<a href="${ blistBack }"><button class="pagingBtn2">이전</button></a>
			</c:if>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<button class="pagingBtnThis">${ p }</button>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="showUserFindPageView.tr">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }"><button class="pagingBtn">${ p }</button></a>
				</c:if>
			
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				<button class="pagingBtn2">다음</button>
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="showUserFindPageView.tr">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				<a href="${ blistEnd }"><button class="pagingBtn2">다음</button></a>
			</c:if>
			
		</div>

		<br>
		<br>
	</div>


	

	<!-- footer -------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<script>
	
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
	
	//새로만들기 클릭시
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
                 $(".subMenuBar1").css({"background":"#ff0066", "color":"white"});
                 $(".subMenuBar2").css({"background":"white", "color":"black"}); 
                 $(".estimateNew").hide();
                 $("button[name=matchingStart]").show();
                 $("button[name=insertEstMatchStart]").hide();
            	}else{
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
            		
            		/////견적서값 모두 검색///////
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
	            		///////////기존 견적서 1개라도있으면 찾기///////
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
            		///////////견적서 찾기 끝/////
	            		
	            		
	            		
	            		
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
	
	
	//매칭신청하기 버튼 클릭시 (견적서있을경우)
	$("button[name=matchingStart]").click(function(){
		var uno = $("button[name=matchingStart]").val();
		var tno = ${sessionScope.loginUser.mno};
		var estNo = $("input[name=estNo]").val();
		var userName2 = $("#userName1").text();
		alert(userName2);
		var userName = $("button[name=userInfoShow]").parent().parent().parent().children().children("td").eq(1).children().eq(0).text();
		var estName = $("input[name=estName]").val();
		var estContents = $("textarea[name=estContents]").val();
		var estPrice = $("input[name=estPrice]").val();
		var estDay = $("select[name=estDay]").val();
        var memberShip = $("#remainNum2").text();
        
        console.log("값이 비교가 되는가?" + (memberShip > 0));
		
        //
		 if(confirm(userName +"회원 님에게 매칭을 신청하시겠습니까 ?\n(멤버쉽 횟수가 1회 차감됩니다.)\n" + 
				 "현재 이용가능한 멤버쉽 횟수 : " + memberShip + "회 남았습니다.") == true){
			 
			 if(memberShip > 0){
				 
				 $.ajax({
					url : "insertMatchStart.tr",
					data : {uno:uno, tno:tno, estName:estName, estContents:estContents, estPrice:estPrice, estDay:estDay},
					type : "post",
					success:function(data){
												
						if(data == "false"){						
							alert("해당 회원에게는 이미 견적서를 보냈습니다.!")
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
						url : "insertEstMatchStart.tr",
						data : {uno:uno, tno:tno, estName:estName, estContents:estContents, estPrice:estPrice, estDay:estDay},
						type : "post",
						success:function(data){
													
							if(data == "false"){						
								alert("해당 회원에게는 이미 견적서를 보냈습니다.!")
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
	
	//keyword를 검색창에 태워보자
	
	var str = "";
	
     function keywordAdd1(){
   		var text = $("#keyword1").text();
   		console.log(text);
   		str+=text;
   		$("input[name=searchKeywordInput]").attr("value", str);
	}
	 function keywordAdd2(){
	   		var text = $("#keyword2").text();
	   		console.log(text);
	   		str+=text;
	   		$("input[name=searchKeywordInput]").attr("value", str);
		}
	 function keywordAdd3(){
	   		var text = $("#keyword3").text();
	   		console.log(text);
	   		str+=text;
	   		$("input[name=searchKeywordInput]").attr("value", str);
		}
	 function keywordAdd4(){
	   		var text = $("#keyword4").text();
	   		console.log(text);
	   		str+=text;
	   		$("input[name=searchKeywordInput]").attr("value", str);
		}
	 function keywordAdd5(){
	   		var text = $("#keyword5").text();
	   		console.log(text);
	   		str+=text;
	   		$("input[name=searchKeywordInput]").attr("value", str);
		}
	 function searchKeywordAll(){
		 var searchKeyword = $("input[name=searchKeywordInput]").val();
		 alert("검색값: " + searchKeyword);
		 if(searchKeyword == null || searchKeyword == ""){
			 alert("검색값을 입력해주세요!")
		 }
	 }
    		  
    	  
    	  
    	  
    	  
    	  
         /* $('button[name=insertEstMatchStart]').bind('submit', function(){          
            
            
            
         }) */
         
      
	
	
	

	
	
	
	
	</script>	

</body>
</html>