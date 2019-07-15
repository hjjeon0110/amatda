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
   <c:if test="${ selectOneMyTrainer.matchingLevel == 1 && selectOneMyTrainer.matchingStatus == '진행중' }">
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
   <c:if test="${ selectOneMyTrainer.matchingLevel == 2 && selectOneMyTrainer.matchingStatus == '매칭종료' && selectOneMyTrainer.matchingAccept== 'N' }">
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
   <c:if test="${ selectOneMyTrainer.matchingLevel == 2 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.matchingAccept== 'Y' }">
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
   <c:if test="${ selectOneMyTrainer.matchingLevel == 3 && selectOneMyTrainer.matchingStatus == '매칭종료' && selectOneMyTrainer.matchingAccept== 'N' }">
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
   <c:if test="${ selectOneMyTrainer.matchingLevel == 3 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.matchingAccept== 'Y' }">
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
   <c:if test="${ selectOneMyTrainer.matchingLevel == 4 && selectOneMyTrainer.matchingStatus == '진행중' && selectOneMyTrainer.matchingAccept== 'Y' }">
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
   
   
   <!-- footer ------------------------------------------------------------------------------------------------------------ -->
   <br><br><hr><br>
   <jsp:include page="../common/footer.jsp"></jsp:include>
	
</body>
</html>