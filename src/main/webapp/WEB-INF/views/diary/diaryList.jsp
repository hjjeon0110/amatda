<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 리스트</title>
<style>
.outer {
	width: 1000px;
	height: 800px;
	/* background:#ffe6f3; */
	background-image: url(${ contextPath }/resources/images/background.jpg);
	background-repeat: no-repeat;
	background-position: top center;
	background-size: 100% 800px;
	margin-left: auto; margin-right : auto;
	margin-top: 50px;
	margin-bottom: 50px;
	margin-right: auto;
}

.listArea {
	width: 900px;
	height: 350px;
	margin: 0 auto;
	border-spacing: 10px;
}
</style>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<div class="outer">
		<br>
		<h1 id="fontEng" align="center">Diary List</h1>
		<br /> <br /> <br />
<%-- <input type="hidden" name="mNo" value="${ sessionScope.loginUser.mno }" /> --%>
		<div class="listArea">
			<table class="table table-hover" id="listTable">
			<%-- <input type="hidden" name="bno"	value="${ requestScope.list.bNo }" /> --%>
				<thead>
					<tr>
						<th></th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>참견</th>
					</tr>
				</thead>
				<tbody>
				
				<%-- <c:forEach var="diaryList" items="${ diaryList }" varStatus="status"> --%>
				
				<c:forEach var="i" begin="0" end="${fn:length(diaryList)-1}" varStatus="st">
					<tr>
						<td><input type="hidden" value="${ diaryList[i].bNo }" id="dListBno"/></td>
						<td><input type="checkbox" name="checkList" value="" /></td>
						<td scope="row"><b>${st.count }</b></td>						
						<td>${ diaryList[i].bTitle }</td>											
						<td><fmt:formatDate value="${ diaryList[i].bWriteDate }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
						<td></td>					
					</tr>
					
					</c:forEach>
				
				</tbody>
			</table>
		
		<!-- 페이징처리 -->
					<div id="paginaArea" align="center">
						<!-- 첫 페이지를 보고 있는 경우 -->
						<c:if test="${pi.currentPage <= 1}">
				[이전] &nbsp;
			</c:if>

						<!-- 첫 페이지가 아닌 다른페이지를 보고있는 경우 -->
						<c:if test="${pi.currentPage > 1 }">
							<c:url var="blistBack" value="/selectList.bo">
								<c:param name="currnetPage" value="${pi.currentPage - 1 }" />
							</c:url>
							<a href="${blistBack}">[이전]</a> &nbsp;
			</c:if>

						<c:forEach var="p" begin="${pi.startPage }" end="${pi.endPage }">
							<c:if test="${p == pi.currentPage }">
								<font color="red" size="4"> <b>[${p }]</b>
								</font>
							</c:if>

							<c:if test="${p != pi.currentPage }">
								<c:url var="blistCheck" value="selectList.bo">
									<c:param name="currentPage" value="${p }" />
								</c:url>
								<a href="${blistCheck }">${p }</a>
							</c:if>
						</c:forEach>

						<!-- 마지막페이지를 보고있는 경우 -->
						<c:if test="${pi.currentPage >= pi.maxPage }">
			 		&nbsp; [다음]
			 	</c:if>
   
						<c:if test="${pi.currentPage < pi.maxPage }">
							<c:url var="blistEnd" value="selectList.bo">
								<c:param name="currentPage" value="${pi.currentPage + 1 }" />
							</c:url>
							<a href="${blistEnd }">&nbsp; [다음]</a>
						</c:if>
					</div>
					
					
					<script>
					
			$(function(){
				
				
				
				$(".listArea").find("td").mouseenter(function(){					
							
				}).click(function(){
	
					//var no = $(this).parents("tr").children("td").children().eq(1).val();
					//console.log(no);
					// var bno = $("#dListBno").val();
					var bno = $(this).parent().children().children().eq(0).val();
					console.log(bno);
					
					location.href="selectDetailDiary.di?bno=" + bno;
				});
				
				
				
			});
		</script>
</div>
</div>



<script src="<c:url value="/resources/ad-js/jquery-3.3.1.min.js" />"></script>
	<!-- https://jquery.com/download/ -->
	<script src="<c:url value="/resources/ad-js/moment.min.js" />"></script>
	<!-- https://momentjs.com/ -->
	<script src="<c:url value="/resources/ad-js/Chart.min.js" />"></script>
	<!-- http://www.chartjs.org/docs/latest/ -->
	<script src="<c:url value="/resources/ad-js/bootstrap.min.js" />"></script>
	<!-- https://getbootstrap.com/ -->
	<script src="<c:url value="/resources/ad-js/tooplate-scripts.js" />"></script>


	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>