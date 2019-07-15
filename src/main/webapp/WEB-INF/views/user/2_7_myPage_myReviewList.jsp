<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_5_myPage_myWriting.css">
</head>
<style>
	tr.rowStyle:hover{background-color:pink}
	.subMenuBar {
	width: 100%;
	height: 100%;
	font-family: 'Noto Sans KR', sans-serif;
	border-top:0.5px solid lightgray;
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
	margin-left: 2px;
	margin-right: -4px;
	color:white;
}

.subMenuBar2 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background:white;
	color:black;
}

.subMenuBar2:hover {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: white;
	color: #ff0066;
	margin-left: 2px;
	margin-right: -4px;
	cursor:pointer;
}
</style>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<jsp:include page="../user/2_myPageMenubar.jsp"/>
	
	
	<div class="subMenuBar">
		<div class="subMenuBar1" onclick="location.href='gotoMyReviewList.us?mno=${sessionScope.loginUser.mno}'">REVIEW 내역</div>
		<div class="subMenuBar2" onclick="location.href='showMyPageMyWriting.us?mno=${sessionScope.loginUser.mno}'">Q&A 내역</div>
	</div>
	
	
	<!-- 리뷰 영역 ----------------------------------------------------------------------------------------------------------- -->
	 <div class="reviewDiv">
		<br><br><br>
		<label class="subTitle">REVIEW 내역</label>
		<br><br>
		<table class="reviewTable">
			<thead>
				<tr>
					<th>No.</th>
					
					<th>제목</th>
					<th>내용</th>
					<th>작성일</th>
					
				</tr>
			</thead>
			<c:forEach var = "reviewList" items="${reviewList}" varStatus="status">
				<tr class="rowStyle">
					<td scope="row"> ${status.count }
						<input type="hidden" id="bNo" value="${reviewList.bNo }">
					</td>
					
					<td>${reviewList.bTitle }</td>
					<td>${reviewList.bContent }</td>
					
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${reviewList.bWriteDate }"/></td> <!-- fmt사용을 위한 taglib위에 추가해야함! -->
					
				</tr>
			</c:forEach>
				
		</table>
		<!-- 페이징 -->
		<div id="pagingArea" align="center">
			<c:if test="${ pi.currentPage <= 1 }">
				[이전] &nbsp;
			</c:if>
			<c:if test="${ pi.currentPage > 1}">
				<c:url var="blistBack" value="gotoMyReviewList.us">
					<c:param name="currentPage" value="${ pi.currentPage - 1 }"/>
					<c:param name="mno" value="${ sessionScope.loginUser.mno }"/>
				</c:url>
				<a href="${ blistBack }">[이전]</a> &nbsp;
			</c:if>
			<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
				<c:if test="${ p eq pi.currentPage }">
					<font color="orange" size="4"><b>[${ p }]</b></font>
				</c:if>
				<c:if test="${ p ne pi.currentPage }">
					<c:url var="blistCheck" value="gotoMyReviewList.us">
						<c:param name="currentPage" value="${ p }"/>
						<c:param name="mno" value="${ sessionScope.loginUser.mno }"/>
					</c:url>
					<a href="${ blistCheck }">${ p }</a>
				</c:if>
			
			</c:forEach>
			
			<c:if test="${pi.currentPage >= pi.maxPage }">
				&nbsp; [다음]
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
				<c:url var="blistEnd" value="showMyPageMyWriting.us">
					<c:param name="currentPage" value="${ pi.currentPage + 1 }"/>
					<c:param name="mno" value="${ sessionScope.loginUser.mno }"/>
				</c:url>
				<a href="${ blistEnd }">&nbsp;[다음]</a>
			</c:if>
			
		</div>	
		
	</div>
	
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
<script>
	$(function(){
		$(".reviewTable td").click(function(){
			var bno =$(this).parent().eq(0).children().children().val();
			alert(bno);
			location.href="gotoMyReviewDetail.us?bno="+bno;
			
		})
	})
</script>
</html>