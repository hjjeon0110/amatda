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

#modification2 {
	width: 80px;
	height: 80%;
	border: 1px solid #ff0066;
	background: white;
	color: #ff0066;
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	cursor:auto;
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
		<label class="subTitle">내결제 내역(최근 요청일 순)</label>
		<br /><br />
		<table class="reviewTable">
			<thead>
				<tr>
					<th>No.</th>
					<th>멤버쉽이름</th>
					<th>결제금액</th>
					<th>획득횟수</th>
					<th>요청일</th>
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
			    	<c:if test="${Payment.process == '환불요청'}">
				    	<td style="color:#ff0066">${Payment.process }</td>
			    	</c:if>
			    	<c:if test="${Payment.process == '결제완료'}">
				    	<td>${Payment.process }</td>
			    	</c:if>
			    	<c:if test="${Payment.process == '환불완료'}">
				    	<td>${Payment.process }</td>
			    	</c:if>
			    	<!-- <td><button class="modification" name="refundBtn">환불요청</button></td>	 -->
			    	<c:if test="${Payment.process == '결제완료'}">
			    	<td><button type="button" class="btn btn-primary modification" id="goProfileDetail" name="refundBtn" data-toggle="modal"
							data-target="#exampleModalScrollable">환불요청</button></td>   		    		
			    	</c:if>
			    	<c:if test="${Payment.process == '환불요청'}">
			    		<td><button type="button" class="btn btn-primary" id="modification2">요청대기</button></td> 
			    	</c:if>
			    	<c:if test="${Payment.process == '환불완료'}">
				    	<td><button type="button" class="btn btn-primary" id="modification2">환불완료</button></td> 
			    	</c:if>
			    </tr>
				
			</c:forEach>
				
		</table>
		
		
		<!-- 페이징 처리를 위한 코드, div지정후 페이징 처리 ----------------------------------->
		<div id="pagingArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1}">
				<c:url var="blistBack" value="paymentList.tr">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					<c:param name="tno" value="${ sessionScope.loginUser.mno }"/>
				</c:url>
				<a href="${ blistBack }">[이전]</a> &nbsp;
			</c:if>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="orange" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="paymentList.tr">
						<c:param name="currentPage" value="${ p }"/>
						<c:param name="tno" value="${ sessionScope.loginUser.mno }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				&nbsp; [다음]
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="paymentList.tr">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					<c:param name="tno" value="${ sessionScope.loginUser.mno }"/>
				</c:url>
				<a href="${ blistEnd }">&nbsp;[다음]</a>
			</c:if>
			
		</div>
		
	</div>
	
	<!-- footer ----------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<!-- Modal --------------------------------------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true" data-backdrop="static">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">		
				<label class="subTitle">			
					알려드립니다! <br>
					환불요청 신청시 회원님이 소유하신 멤버쉽 횟수가 즉시 차감 되오니 유의바랍니다!!<br>
					단 사유의 부적절로인한 환불 실패, 취소시 다시 횟수를 돌려받으실수 있습니다.
				</label>
				</div>
				<div class="modal-body">
					<div class="modalBody">
						<textarea id="refundReason" cols="90" rows="10" placeholder="환불사유를 입력해주세요. 세부적으로 입력해주세요" 
						 style="resize: none;"></textarea>
						<br />
					</div>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="location.reload()">닫기</button>
					<button type="button" class="btn btn-primary" id="modifyProfileBtn" value="modifyProfileBtn">요청하기</button>
				</div>
			</div>
		</div>
	</div>

	<script>

		$(document).ready(function() {
			$('a.thumb').click(function(event) {
				event.preventDefault();
				var content = $('.modal-body');
				content.empty();
				var title = $(this).attr("title");
				$('.modal-title').html(title);
				content.html($(this).html());
				$(".modal-profile").modal({
					show : true
				});
			});
		});
	
		$(function(){
			
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
			$(".reviewTable").find("td").mouseenter(function(){
				$(this).parent().css("background", "#ffe6f3");
			}).mouseout(function(){
				$(this).parent().css("background", "white");
			})
				
			
			//환불요청하기 버튼 클릭시 사용되는 함수
			
			$("button[name=refundBtn]").click(function(){
				var refundId = $(this).parent().parent().children().children().eq(0).val();
				var refundCount = $(this).parent().parent().children().eq(3).text();
				console.log(refundCount)
				$("#modifyProfileBtn").click(function() {
					var tno = ${ sessionScope.loginUser.mno};
					var refundReason = $("#refundReason").val();
					console.log(refundId);
					 if(refundReason == "" || refundReason == null){
			               alert("환불사유를 반드시 입력해주세요");
			               $($("#refundReason").focus());
			               return false;   
		            }
					$.ajax({
						url:"refundRequest.tr",
						data:{refundId:refundId, refundReason:refundReason, tno:tno, refundCount:refundCount},
						type:"get",
						success:function(){
							alert("환불요청완료!");
							location.reload();
						},
						error:function(){
							alert("환불실패?");
						}
					})
					
				})
			})
			
			
		})
	
	</script>
</body>
</html>