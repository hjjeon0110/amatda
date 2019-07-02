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
		border-bottom: 2px solid #ff0066;
		margin-left: 2px;
		margin-right: -4px;
	}
	
	.subMenuBar2 {
		width: 49.8%;
		height: 72px;
		display: inline-block;	
		background: #ff0066;
		color: white;
		text-align: center;
		font-size: 16px;
		padding-top: 22px;
	}
	
	.menubarLi4 {
	color: #ff0066;
}

#myPageMenu4 {
	background: #ff0066;
	color: white;
}
	.reviewDiv, .qaDiv {
	width: 100%;
	height: 100%;
	padding-left: 50px;
	padding-right: 50px;
}

.subTitle {
	font-size: 18px;
	font-weight: bold;
	font-family: 'Noto Sans KR', sans-serif;
	color: black;
}

.reviewTable, .qaTable {
	width: 100%;
	height: 100%;
	font-size: 14px;
	font-family: 'Noto Sans KR', sans-serif;
	text-align: center;
	border-top: 2px solid darkgray;
	border-bottom: 2px solid darkgray;
}

.reviewTable thead, .qaTable thead {
	background: whitesmoke;
	font-weight: bold;
}

.reviewTable tr, .qaTable tr {
	height: 40px;
	border-bottom: 1px solid gray;
}

.modification {
	width: 80px;
	height: 80%;
	border-style: none;
	background: #ff0066;
	color: white;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
}

.modification:hover {
	width: 80px;
	height: 80%;
	border: 1px solid #ff0066;
	background: white;
	color: #ff0066;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	cursor: pointer;
}

</style>
</head>
<body>

	<!-- 트레이너 마이페이지 메뉴바 include ---------------------------------------------------------------------------------------- -->
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
	
	<!-- 트레이너 마이페이지 서브메뉴바  --------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1" id="memberShipPay">멤버십 신청하기</div>
		<div class="subMenuBar2" id="paymentList">결제내역</div>
	</div>
	
	<!-- 결제 내역 영역 ------------------------------------------------------------------------------------------------- -->
	<div class="reviewDiv">
		<br /><br /><br />
		<label class="subTitle">내결제 내역</label>
		<br /><br />
		<table class="reviewTable">
			<thead>
				<tr>
					<th>No.</th>
					<th>멤버쉽이름</th>
					<th>결제금액</th>
					<th>획득횟수</th>
					<th>결제일</th>
					<th>결제상태</th>
					<th>환불요청</th>
				</tr>
			</thead>
			
			<c:forEach var="Payment" items="${ payList }" varStatus="status">
			    <tr>
			    	<td scope="row"> ${status.count }
			    		<input type="hidden" id="payNo" value="${Payment.payNo }">
			    	</td>
			    	<td>${Payment.membershipType}</td>			    	
			    	<td>${Payment.membershipPrice }</td>
			    	<td>${Payment.membershipCount }</td>
			    	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${Payment.payDate}"/></td>
			    	<td>${Payment.process }</td>
			    	<td><button class="modification" id="refundRequest">환불요청</button></td>			    	
			    </tr>
			</c:forEach>
				
		</table>
		
		
		<!-- 페이징 처리를 위한 코드, div지정후 페이징 처리 ----------------------------------->
		<div id="pagingArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1}">
				<c:url var="blistBack" value="/selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
				</c:url>
				<a href="${ blistBack }">[이전]</a> &nbsp;
			</c:if>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="orange" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="selectList.bo">
						<c:param name="currentPage" value="${ p }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				&nbsp; [다음]
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="selectList.bo">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
				</c:url>
				<a href="${ blistEnd }">&nbsp;[다음]</a>
			</c:if>
			
		</div>
		
	</div>
	
	<!-- footer ----------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<script>
		$(function(){
			var tno = ${ sessionScope.loginUser.mno};
			$("#memberShipPay").mouseenter(function(){
				$(this).css("cursor", "pointer");
			}).click(function(){
				location.href="showMyPageMembership.tr";
			})
			$("#paymentList").mouseenter(function(){
				$(this).css("cursor", "pointer");
			}).click(function(){
				location.href="paymentList.tr?tno=" + tno;
			})
			$("#refundRequest").click(function(){
				var refundId = $(this).parent().parent().children().children().eq(0).val();
				console.log(refundId);
			})
			$(".reviewTable").find("td").mouseenter(function(){
				$(this).parent().css("background", "#ffe6f3");
			}).mouseout(function(){
				$(this).parent().css("background", "white");
			})
		})
	
	</script>
</body>
</html>