<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>아맞다 관리자 페이지</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<!-- https://fonts.google.com/specimen/Roboto -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ad-css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ad-css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/ad-css/templatemo-style.css">
<!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
<style>
#button {
	display: inline-block;
}

.button2{
	margin-left:600px;
}

#replyInsert{
	margin-left:700px;
}

.replyList>p{
	
	color:white;
}


</style>
</head>

<body id="reportsPage">
	<div class="" id="home">
		<nav class="navbar navbar-expand-xl">
			<div class="container h-100">
				<a class="navbar-brand" href="index.jsp">
					<h1 class="tm-site-title mb-0">AMATDA ADMIN</h1>
				</a>
				<button class="navbar-toggler ml-auto mr-0" type="button"
					data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars tm-nav-icon"></i>
				</button>

				<!-- 메뉴바 -->
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mx-auto h-100">

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="far fa-user"></i> <span>
									회원관리 <i class="fas fa-angle-down"></i>
							</span>
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="main.ad">회원 정보 조회<a> <a
										class="dropdown-item" href="trainer.ad">트레이너 조회</a> <a
										class="dropdown-item" href="matching.ad">매칭 조회</a>
							</div></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="far fa-file-alt"></i> <span>
									게시판관리 <i class="fas fa-angle-down"></i>
							</span>
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="notice.ad">공지사항</a> <a
									class="dropdown-item" href="FAQ.ad">자주 묻는 질문</a> <a
									class="dropdown-item" href="QNA.ad">1:1문의</a>
							</div></li>

						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-shopping-cart"></i> <span>
									결제관리 <i class="fas fa-angle-down"></i>
							</span>
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="membership.ad">멤버쉽</a> <a
									class="dropdown-item" href="refund.ad">환불</a>
							</div></li>

						<li class="nav-item"><a class="nav-link" href="declaration.ad"> <i
								class="fas fa-cog"></i> 신고관리 <span class="sr-only">(current)</span>
						</a></li>

						<li class="nav-item"><a class="nav-link" href="statistics.ad">
								<i class="fas fa-tachometer-alt"></i> 통계관리 <span class="sr-only">(current)</span>
						</a></li>

					</ul>

					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link d-block"
							href="login.html"> Admin, <b>Logout</b>
						</a></li>
					</ul>
				</div>
			</div>

		</nav>
		<!--  메뉴바 끝 -->

		<br> <br> <br>

		<div class="container">


			<div class="col-12 tm-block-col">
				<div class="tm-bg-primary-dark tm-block tm-block-taller">
					<h2 class="tm-block-title">1:1 문의</h2>

					<table class="table" id="QNAarea">
						<thead>
							<tr>
		
								<th scope="col">${QNA.bTitle }</th>
								<th scope="col">${QNA.member.userId }</th>
								<th scope="col"><fmt:formatDate pattern="yyyy-MM-dd" value="${QNA.bWriteDate }"/></th>
								<th scope="col">${QNA.bCount }
								<input type="hidden" id="bNo" value="${QNA.bNo }"></th>
							</tr>
						</thead>

					</table>

					<textarea class="form-control" rows="15" required>${QNA.bContent }</textarea>
					
					<div id="button" class="button2">
						<a href="QNA.ad" class="button" id="list">목록</a>
						<button class="button" id="deleteBtn">삭제</button>
					</div>
					<br><br>
					
					<form id="commentForm" name="commentForm" method="post">
	
						<input type="hidden" id="bNo" name="bNo" value="${QNA.bNo }">
						<textarea class="form-control" placeholder="댓글을 입력하세요"
						id="repContent" name="repContent"></textarea>
						<a href='#' class="button" id="replyInsert">등록</a>
						
					</form>
					
					<!-- 댓글 -->
			<div id="reply">
				<ol class="replyList">
					<c:forEach items="${repList}" var="repList">
					 		<p><b>
						   ${repList.member.userId}
						  (<fmt:formatDate value="${repList.repDate}" pattern="yyyy-MM-dd a HH:mm:ss" />)
						    </b></p>
						  
						  	<p>${repList.repContent}</p>
					
					 </c:forEach>   
				</ol>
			</div>
	


				</div>
			</div>
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
	
	<!-- 모달창 -->
	<script>
		$(document).ready(function(){
			$("#deleteBtn").click(function(){
				
				if(confirm("삭제하시겠습니까?")){
					//console.log("성공");
					var no = $("#QNAarea").find("input").val();
					location.href="deleteQNA.ad?bNo=" + no;
			
				}
			})
			
			$("#replyInsert").click(function(){
				
				var content=$("#repContent").val();
				var bno="${QNA.bNo}"
				
				//console.log(content);
				//console.log(bno);
				
				$.ajax({
					type:"get",
					url:"insertReply.ad",
					data:$("#commentForm").serialize(),
					success : function(data){
						alert("댓글이 등록되었습니다.");
						//alert(data);
					}
				})
				
			})
		
		})
	</script>


</body>

</html>