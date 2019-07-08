<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 리스트</title>
<style>
.outer {
	width: 1000px;
	height: 800px;
	background: #ffe6f3;
	color: #ff0066;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom:50px;
}

.galleryArea {
	width: 760px;
	height: 550px;
	margin: 0 auto;
}

.galleryList {
	width: 220px;
	border: 1px solid #ff0066;
	display: inline-block;
	margin: 10px;
	align: center;
	padding:10px;
}

.galleryList:hover {
	opacity: 0.8;
	cursor: pointer;
}

#font {
	font-family: 'Noto Sans KR', sans-serif;
}

#fontEng {
	font-family: 'Montserrat', sans-serif;
}
</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<div class="outer">
		<br />
		<h2 id="fontEng" align="center">Gallery List</h2>
		<br />
		<div class="galleryArea">

			<c:forEach var="list" items="${ list }">


				<div class="galleryList" align="center">
					<div>
						<input type="hidden" value="${ list.bno }" /> <img
							src="${ contextPath }/resources/uploadFiles/${ list.modiName }${ list.extension }"
							width="200px" height="150px" />
					</div>
					<p> </p>
					<p id="font">
						등록일 :
						<fmt:formatDate value="${ list.uploadDate }" pattern="yyyy-MM-dd" />
					</p>
				</div>


			</c:forEach>

		</div>

	</div>


	<script>
			
		$(function(){
				$(".galleryList").click(function(){
					var bno = $(this).children().children().eq(0).val();
					console.log(bno);
					location.href="selectDetailDiary.di?bno=" + bno;
				});
			});
					
			
	</script>

<br />

	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>