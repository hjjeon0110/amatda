<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

a:link {text-decoration: none; color:black;}
a:visited {text-decoration: none; color: black;}
a:hover {text-decoration: underline; color: black;}

.testImg {
	width:100%;
	}
</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"/> 
	<img class="testImg" src="${ contextPath }/resources/images/testMain.jpg">
	<div class="csTable">
		<div class="firstTable">
		<hr>
		<h5><a href="selectNotice.bo">공지사항 / 이벤트</a></h5>
		<h5><a href="selectNotice.bo">공지사항 </a></h5>
		<h5><a href="selectNotice.bo">이벤트</a></h5>
		<hr>
		<h5><a href="insertQna.bo">Q&A</a></h5>
		<hr>
		<h5><a href="selectReview.bo">아맞다 후기리뷰</a></h5>
		<hr>
		<h5><a href="selectFaq.bo">FAQ</a></h5>
		<hr>
		<h5><a href="insertDeclaration.bo">신고</a></h5>
		<hr>
	</div>
	
	<div>
	<h1>신고 게시판</h1>
	
	
	</div>	
	
	</div>


</body>
</html>