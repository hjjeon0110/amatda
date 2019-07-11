<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_5_myPage_myWriting.css">
</head>
<style>
	tr.rowStyle:hover{background-color:pink}
</style>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<jsp:include page="../user/2_myPageMenubar.jsp"/>
	
	<!-- 리뷰 영역 ----------------------------------------------------------------------------------------------------------- -->
	<div class="reviewDiv">
		<br><br><br>
		<label class="subTitle">REVIEW 내역</label>
		<br><br>
		<table class="reviewTable">
			<thead>
				<tr>
					<th>No.</th>
					<th>카테고리</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성일</th>
					<th>수정하기</th>
				</tr>
			</thead>
				<tr>
					<td>1</td>
					<td>카테고리</td>
					<td>제목 공간입니다.</td>
					<td>내용 공간입니다.</td>
					<td>작성일</td>
					<td><button class="modification">수정하기</button></td>
				</tr>
				<tr>
					<td>2</td>
					<td>카테고리</td>
					<td>제목 공간입니다.</td>
					<td>내용 공간입니다.</td>
					<td>작성일</td>
					<td><button class="modification">수정하기</button></td>
				</tr>
				<tr>
					<td>3</td>
					<td>카테고리</td>
					<td>제목 공간입니다.</td>
					<td>내용 공간입니다.</td>
					<td>작성일</td>
					<td><button class="modification">수정하기</button></td>
				</tr>
				<tr>
					<td>4</td>
					<td>카테고리</td>
					<td>제목 공간입니다.</td>
					<td>내용 공간입니다.</td>
					<td>작성일</td>
					<td><button class="modification">수정하기</button></td>
				</tr>
				<tr>
					<td>5</td>
					<td>카테고리</td>
					<td>제목 공간입니다.</td>
					<td>내용 공간입니다.</td>
					<td>작성일</td>
					<td><button class="modification">수정하기</button></td>
				</tr>
		</table>
	</div>
	
	
	<!-- Q&A 영역 ----------------------------------------------------------------------------------------------------------- -->
	<div class="qaDiv">
		<br><br><br>
		<label class="subTitle">Q&A 내역</label>
		<br><br>
		<table class="qaTable">
			<thead>
				<tr>
					<th>No.</th>
					
					<th>제목</th>
					<th>내용</th>
					<th>작성일</th>
				
				</tr>
			</thead>
			<c:forEach var ="qnaList" items="${ qnaList }" varStatus="status">
				<tr class="rowStyle">
					<td scope="row"> ${status.count }
						<input type="hidden" id="bNo" value="${qnaList.bNo }">
					</td>
					
					<td>${qnaList.bTitle}</td>
					<td>${qnaList.bContent }</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd" value="${qnaList.bWriteDate }"/></td>
					
				</tr>
				
			</c:forEach>
		</table>		
	</div>

	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
<script>
	$(function(){
		$(".qaTable td").click(function(){
			var bno =$(this).parent().eq(0).children().children().val();
			
			location.href="gotoMyQnaDetailForm.us?bno="+bno;
			
		})
	})
</script>
</html>