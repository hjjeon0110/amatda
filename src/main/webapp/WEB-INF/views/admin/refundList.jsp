<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
#modalLayer {
	display: none;
	position: relative;
}

#modalLayer 
	.modalContent {
	width: 440px;
	height: 380px;
	padding: 20px;
	border: 1px solid #ccc;
	position: fixed;
	left: 50%;
	top: 50%;
	z-index: 11;
	background: #435c70;
}

#modalConfirm {
	color: #fff;
	text-align: center;
	margin-top: 100px;
}

#modalContent {
	color: #fff;
	text-align: center;
	margin-top: 50px;
}

#modalLayer .modalContent button {
	width: 200px;
	background-color: #f8585b;
	border: none;
	color: #fff;
	padding: 5px 0;
	text-align: center;
	text-decoration: none;
	font-size: 15px;
	margin: 4px;
	margin-left: 100px;
	margin-top: 15px;
	cursor: pointer;
	border-radius: 10px;
}

#button {
	margin-top: 80px;
	margin-left: 100px;
}

#agree {
	background-color: #7fccde;
}

#refuse {
	background-color: #bc8f8f;
}
</style>
</head>

<body id="reportsPage">
	<div class="" id="home">
		<nav class="navbar navbar-expand-xl">
			<div class="container h-100">
				<a class="navbar-brand" href="index.html">
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
									class="dropdown-item" href="#">환불</a>
							</div></li>

						<li class="nav-item"><a class="nav-link"
							href="declaration.ad"> <i class="fas fa-cog"></i> 신고관리 <span
								class="sr-only">(current)</span>
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
				<div
					class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
					<h2 class="tm-block-title">환불 관리</h2>

				<!-- 필터링 검색 -->
					<select class="custom-select" id="keyword" name="keyword">
						<option>상태</option>
						<option value="환불요청">요청중</option>
						<option value="환불승인">승인</option>
						<option value="환불거절">거절</option>
					</select>

					<table class="table">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">아이디</th>
								<th scope="col">유형</th>
								<th scope="col">결제날짜</th>
								<th scope="col">환불사유</th>
								<th scope="col">상태</th>
							</tr>
						</thead>

						<tbody>

							<c:forEach var="list" items="${ refundList }" varStatus="status">

								<tr>
									<th scope="row"><b>${ status.count }</b>
									<input type="text" id="payNo" value="${list.payNo }"></th>
									<td>${ list.userId }</td>
									<td>멤버쉽${ list.membershipType }</td>
									<td>${ list.payDate }</td>
									<td>${ list.refundReason }</td>
									<!-- 상태 -->
									<c:set var="status" value="${list.process }" />
									<td><c:choose>
											<c:when test="${status eq '환불요청'}">
												<a href="#modalLayer" class="button"><b>요청중</b></a>
												<div id="modalLayer">
													<div class="modalContent">
														<h5 id="modalConfirm">
															<strong>환불 요청을 승인 하시겠습니까?</strong>
														</h5>
														<div id="button">
															<a href="refundAgree.ad?payNo=${ list.payNo}" class="button">승인</a>															
															<a href="#" class="button">거절</a>
														
														</div>
													</div>
												</div>
											</c:when>

											<c:when test="${status eq '환불승인'}">
												<button class="button" disabled='disabled' id="agree">
													<b>승인</b>
												</button>
											</c:when>

											<c:otherwise>
												<button class="button" disabled='disabled' id="refuse">
													<b>거절</b>
												</button>
											</c:otherwise>
										</c:choose></td>

								</tr>
							</c:forEach>



						</tbody>
					</table>
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
		$(document).ready(function() {
			var modalLayer = $("#modalLayer");
			var button = $(".button");
			var modalCont = $(".modalContent");
			var marginLeft = modalCont.outerWidth() / 2;
			var marginTop = modalCont.outerHeight() / 2;

			button.click(function() {
				modalLayer.fadeIn("slow");
				modalCont.css({
					"margin-top" : -marginTop,
					"margin-left" : -marginLeft
				});
				$(this).blur();
				$(".modalContent > a").focus();
				return false;
			});

			$(".modalContent > #button > button").click(function() {
				modalLayer.fadeOut("slow");
				button.focus();
			});
		});
		
		$('#keyword').change(function(){
			var keyword=$(this).val();
			console.log(keyword);
			
			$.ajax({
				url:"refundStatus.ad",
				data:{keyword:keyword},
				type:"get",
				success:function(data){
					var index = data.filteringList;
	  				
	  				
	  				$(".table > tbody").children().remove();
	  				
	  				for(var i = 0 ; i<index.length; i++){
	  					
	  					
	  
	  					
	  					var table="<tr><td>" + (i+1) + "</td><td>" + 
						  index[i].userId + "</td><td>" +  
						  "멤버쉽" + index[i].membershipType + "</td><td>" +
						  index[i].payDate + "</td><td>" + 
						  index[i].refundReason+ "</td><td>" +
						  index[i].process+ "</td></tr>";
							$(".table > tbody").append(table);
	  				
							
							
	  					
	  				}
				}
			})
		})
	</script>


</body>

</html>