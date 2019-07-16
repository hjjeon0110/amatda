<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trainer/3_1_1_matchingProcessPage.css">
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
                  <label class="trainerName">${ matchingMember.name }</label>
                  <label class="trainerGender">(${ matchingMember.gender})</label>
               </td>
               <td></td>
            </tr>
            <tr>
               <td><label class="trainerKeyword">${ matchingMember.survey.hopeExercise }</label></td>
               <td><button class="goProfileDetail">매칭 진행중</button></td>
            </tr>
            <tr>
               <td><label class="simpleProfile">운동 시작가능일 : ${ matchingMember.survey.hopeStart}, 운동
								가능 시간 : ${matchingMember.survey.datExercise }, 키 : ${ matchingMember.survey.height }cm, 몸무게 : ${ matchingMember.survey.weight}kg, 목표감량치 : -${matchingMember.survey.hopeWeight}kg</label></td>
               <td class="trainerListTableTd1">
                  <input type="hidden" value="${ matchingMember.mno }">
                  <input type="hidden" value="${ matchingMember.name }">
                  <button class="matchingStartBtn">프로필 보기</button>
               </td>
            </tr>
         </table>
      </div>
      <br><br>
   </div>
   <br>
   <div class="matchingTitleDiv">
      <label class="matchingTitle1">${ matchingMember.name } 회원님과의</label> <label class="matchingTitle2">매칭 단계</label>
   </div>
   <%-- <c:if test="${ matchingMember.mprocess.matchingLevel == 1 }">
       <div class="step-state step1">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
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
   </c:if> --%>
   <%-- <c:if test="${ matchingMember.mprocess.matchingLevel == 1 }">
       <div class="step-state step2">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
           </ul>
       </div>
   </c:if> --%>
   <c:if test="${ matchingMember.mprocess.matchingLevel == 2 && matchingMember.mprocess.matchingStatus == '진행중' }">
       <div class="step-state step2-ing">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
           </ul>
       </div>
       <br>
      <div class="stepDiv">
         <jsp:useBean id="today" class="java.util.Date"/>
         <fmt:formatDate var="nowTime" value="${ today }" pattern="yyyyMMdd"/>
         <fmt:formatDate var="estDate" value="${ matchingMember.mprocess.processDate }" pattern="yyyyMMdd"/>
         
         <br><br>
         <label class="stepLabel">${ matchingMember.name } 회원님께서 아직 매칭 요청을 보내지 않았습니다.</label><br>
         <label class="stepLabel" style="color:#ff0066;">회원님께 보낸 견적서를 확인해보세요!</label>
         <br><br>
         <button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable">보낸 견적서 확인하기</button>
         <br><br><br>
      </div>
   </c:if>
   <c:if test="${ matchingMember.mprocess.matchingLevel == 3 && matchingMember.mprocess.matchingStatus == '진행중' && matchingMember.mprocess.matchingAccept== 'Y'  }">
       <div class="step-state step2-ing">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
           </ul>
       </div>
       <br>
      <div class="stepDiv">
         <br><br>
         <label class="stepLabel">${ matchingMember.name } 회원님께서 트레이너님께 매칭 요청을 보냈습니다.</label><br>
         <label class="stepLabel" style="color:#ff0066;">지금 바로 매칭 요청을 수락할 수 있습니다!</label>
         <br><br>
         <button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable2">매칭 요청 응답하기</button>
         <br><br><br>
      </div>
   </c:if>
   <c:if test="${ matchingMember.mprocess.matchingLevel == 3 && matchingMember.mprocess.matchingStatus == '매칭종료' && matchingMember.mprocess.matchingAccept== 'N' }">
       <div class="step-state step3">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
           </ul>
       </div>
       <br>
      <div class="stepDiv">
         <br><br>
         <label class="stepLabel">${ matchingMember.name } 회원님과의 매칭이 종료되었습니다.</label><br>
         <label class="stepLabel" style="color:#ff0066;">회원 찾기를 통해 다른 회원를 찾아보세요!</label>
         <br><br>
         <button class="stepBtn" id="step1" onclick="location.href='showUserFindPageView.tr?mno=${sessionScope.loginUser.mno}'">다른 회원 찾기</button>
         <br><br><br>
      </div>
   </c:if>
   <c:if test="${ matchingMember.mprocess.matchingLevel == 4 && matchingMember.mprocess.matchingStatus == '진행중' && matchingMember.mprocess.matchingAccept== 'Y' }">
       <div class="step-state step3-ing">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
           </ul>
       </div>
       <br>
      <div class="stepDiv">
         <br><br>
         <label class="stepLabel">${ matchingMember.name } 회원님께서 아직 입금 확인 요청을 보내지 않았습니다.</label><br>
         <label class="stepLabel" style="color:#ff0066;">입금 확인 요청이 오기까지  ${(estDate + 3 - nowTime)}일 남았습니다.</label>
         <br><br>
         <button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable3" disabled="true">입금 확인하기</button>
         <br><br><br>
      </div>
   </c:if>
   <c:if test="${ matchingMember.mprocess.matchingLevel == 5 && matchingMember.mprocess.matchingStatus == '진행중' && matchingMember.mprocess.matchingAccept== 'Y' }">
       <div class="step-state step3-ing">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
           </ul>
       </div>
       <br>
      <div class="stepDiv">
         <br><br>
         <label class="stepLabel">${ matchingMember.name } 회원님께서 입금을 완료하셨습니다!</label><br>
         <label class="stepLabel" style="color:#ff0066;">입금 확인이 완료되면 PT 서비스를 진행하실 수 있습니다.</label>
         <br><br>
         <button class="stepBtn" id="step1" data-toggle="modal" data-target="#exampleModalScrollable3">입금 확인하기</button>
         <br><br><br>
      </div>
   </c:if>
  <%--  <c:if test="${ matchingMember.mprocess.matchingLevel == 5 && matchingMember.mprocess.matchingStatus == '매칭종료' && matchingMember.mprocess.matchingAccept== 'N' }">
       <div class="step-state step4">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
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
   </c:if> --%>
   <c:if test="${ matchingMember.mprocess.matchingLevel == 5 && matchingMember.mprocess.matchingStatus == '매칭완료' && matchingMember.mprocess.matchingAccept== 'Y' }">
       <div class="step-state step5">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
           </ul>
       </div>
        <br>
      <div class="stepDiv">
         <br><br>
         <label class="stepLabel">PT를 시작하기 위한 모든 단계가 끝났습니다.</label><br>
         <label class="stepLabel" style="color:#ff0066;">지금 바로 ${ matchingMember.name } 회원님과 PT를 시작해보세요!</label>
         <br><br>
         <button class="stepBtn" id="step5">PT 관리 페이지로 이동하기</button>
         <br><br><br>
      </div>
   </c:if>
   <%-- <c:if test="${ matchingMember.mprocess.matchingLevel == 6 && matchingMember.mprocess.matchingStatus == '진행중' && matchingMember.mprocess.matchingAccept== 'Y' }">
       <div class="step-state step5">
           <ul>
               <li><p>매칭시작</p></li>
               <li><p>견적서 보내기<span></span></p></li>
               <li><p>매칭 요청 수락하기<span></span></p></li>
               <li><p>입금 확인하기<span></span></p></li>
               <li><p>PT 시작하기<span></span></p></li>
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
   </c:if> --%>
   
   
   <!-- footer ------------------------------------------------------------------------------------------------------------ -->
   <br><br><hr><br>
   <jsp:include page="../common/footer.jsp"></jsp:include>
   
   
   <!-- 보낸 견적서 확인하기 Modal ------------------------------------------------------------------------------------------------------------- -->
   <div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true" data-backdrop="static">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <label class="modalHeader"><i class="fa fa-check"></i> ${ matchingMember.name } 회원님께 보낸 견적서 </label>&nbsp;&nbsp;&nbsp;&nbsp;
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">제목</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class='form-control' type="text" value="${ matchingMember.mprocess.matchEstName }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">커리큘럼</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<textarea class="form-control" type="text" readonly style="height:150px !important">${ matchingMember.mprocess.matchEstContents}</textarea><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">개월수</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ matchingMember.mprocess.matchEstDay }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">가격</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ matchingMember.mprocess.matchEstPrice }" readonly><br>
               <label class="index">I</label>&nbsp;&nbsp;<label class="subTitleLabel">은행/계좌번호</label>
               &nbsp;&nbsp;&nbsp;&nbsp;<input class="form-control" type="text" value="${ matchingMember.mprocess.matchEstName }" readonly><br>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
            </div>
         </div>
      </div>
   </div>
   
   
   <!-- 매칭 요청 수락하기 Modal ------------------------------------------------------------------------------------------------------------- -->
   <div class="modal fade" id="exampleModalScrollable2" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle2" aria-hidden="true" data-backdrop="static">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <label class="modalHeader"><i class="fa fa-check"></i> ${ matchingMember.name } 회원님의 매칭 요청을 수락하시겠습니까?</label>&nbsp;&nbsp;&nbsp;&nbsp;
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <br>
               <label class="subTitleLabel">매칭을 수락한 후 입금 확인 요청이 도착하면 확인 후 바로 PT 서비스를 시작할 수 있습니다!</label>
               <br>
               <div class="custom-control custom-checkbox custom-control-inline">
                  <!-- <input type="checkbox" class="custom-control-input" id="defaultInline1" name="hopeBody" value="팔부위" checked>
                   <label class="custom-control-label" for="defaultInline1" style="font-size:14px;">해당 트레이너에게 입금을 완료했으며, PT 서비스를 시작하는데 동의하십니까?</label>
                  <br><br> -->
               </div>
            </div>
            <div class="modal-footer">
               <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button> -->
               <button type="button" class="btn btn-primary" id="refuseMatchingRequestBtn">거절하기</button>
               <button type="button" class="btn btn-primary" id="acceptMatchingRequestBtn">수락하기</button>
            </div>
         </div>
      </div>
   </div>
   
   
   <!-- 입금 확인하기 Modal ------------------------------------------------------------------------------------------------------------- -->
   <div class="modal fade" id="exampleModalScrollable3" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle3" aria-hidden="true" data-backdrop="static">
      <div class="modal-dialog modal-dialog-scrollable" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <label class="modalHeader"><i class="fa fa-check"></i> ${ matchingMember.name } 회원님의 입금 확인 요청을 수락하시겠습니까?</label>&nbsp;&nbsp;&nbsp;&nbsp;
               <button type="button" class="close" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">&times;</span>
               </button>
            </div>
            <div class="modal-body">
               <br>
               <label class="subTitleLabel">입금 확인 요청이 도착하면 확인 후 바로 PT 서비스를 시작할 수 있습니다!</label>
               <br>
               <div class="custom-control custom-checkbox custom-control-inline">
                  <!-- <input type="checkbox" class="custom-control-input" id="defaultInline1" name="hopeBody" value="팔부위" checked>
                   <label class="custom-control-label" for="defaultInline1" style="font-size:14px;">해당 트레이너에게 입금을 완료했으며, PT 서비스를 시작하는데 동의하십니까?</label>
                  <br><br> -->
               </div>
            </div>
            <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
               <button type="button" class="btn btn-primary" id="acceptDepositCheckRequestBtn">수락하기</button>
            </div>
         </div>
      </div>
   </div>
   
   <script>
   		
   		// 매칭 요청 거절하기 버튼 클릭 시
   		$("#refuseMatchingRequestBtn").click(function() {
   			var tno = ${ sessionScope.loginUser.mno };
   			var uno = ${ matchingMember.mno };
   			
   			location.href = "updateMprocess1.tr?uno=" + uno + "&tno=" + tno;
   		});
   		
   		// 매칭 요청 수락하기 버튼 클릭 시
   		$("#acceptMatchingRequestBtn").click(function() {
   			var tno = ${ sessionScope.loginUser.mno };
   			var uno = ${ matchingMember.mno };
   			
   			location.href = "updateMprocess2.tr?uno=" + uno + "&tno=" + tno;
   		});
   		
   		// 입금 확인 요청 수락하기 버튼 클릭 시
   		$("#acceptDepositCheckRequestBtn").click(function() {
   			var tno = ${ sessionScope.loginUser.mno };
   			var uno = ${ matchingMember.mno };
   			
   			location.href = "updateMprocess3.tr?uno=" + uno + "&tno=" + tno;
   		});
   		
   		// PT관리 페이지로 이동하기 버튼 클릭 시
   		$("#step5").click(function() {
   			var tno = ${ sessionScope.loginUser.mno };
   			
   			location.href = "showMatchingCompletePage.tr?tno=" + tno;
   		});
   		
   </script>
	
</body>
</html>