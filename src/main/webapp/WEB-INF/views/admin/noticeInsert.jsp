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
	#button{
		margin-left:550px;
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


		<div class="container tm-mt-big tm-mb-big">
			<div class="row">
				<div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
					<div class="tm-bg-primary-dark tm-block tm-block-h-auto">

						<div class="row">
							<div class="col-12">
								<h2 class="tm-block-title d-inline-block">공지사항</h2>
							</div>
						</div>

						<select class="custom-select tm-select-accounts" id="category">
							<option selected>전체</option>
							<option value="1">회원</option>
							<option value="2">트레이너</option>
						</select> <select class="custom-select tm-select-accounts" id="category">
							<option selected>서비스</option>
							<option value="1">결제</option>
							<option value="2">환불</option>
							<option value="3">기타</option>
						</select> <br> <br>

						
							
								<form action="">
									<div class="form-group">
										<label for="name">글 제목 </label> <input id="name" name="name"
											type="text" class="form-control validate" />
									</div>
									<div class="form-group">
										<label for="description">글 내용</label>
										<textarea class="form-control validate" rows="10"></textarea>
									</div>

								</form>
						
									<div id="button">
										<a href="notice.ad" class="button">목록</a>
										<button class="button">등록</button>
									</div>
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
</body>

</html>