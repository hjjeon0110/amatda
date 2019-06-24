<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trainer/2_5_myPage_myWriting.css">
</head>
<body>


	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"/>
	
	
	<!-- 트레이너 마이페이지 메뉴바 include ---------------------------------------------------------------------------------------- -->
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
	
	
	<!-- 리뷰 영역 ----------------------------------------------------------------------------------------------------------- -->
	<div class="reviewDiv">
		<br><br><br>
		<label class="subTitle">REVIEW 내역</label>
		<br><br>
		<table class="reviewTable">
			<thead>
				<tr>
					<td>No.</td>
					<td>카테고리</td>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>수정하기</td>
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
					<td>No.</td>
					<td>카테고리</td>
					<td>제목</td>
					<td>내용</td>
					<td>작성일</td>
					<td>수정하기</td>
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
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	
</body>
</html>