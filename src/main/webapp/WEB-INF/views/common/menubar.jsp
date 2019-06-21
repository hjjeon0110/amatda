<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/aos.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/ionicons/css/ionicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Montserrat|Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/menubar.css">
</head>
<body>
	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }" scope="application" />
	
	<div class="miniMenubar">
		<ul>
			<li onclick="location.href='loginMember.me'">로그인 </li><label class="miniMenubarLabel">&nbsp;&nbsp;|&nbsp;&nbsp;</label>
			<li onclick="location.href='selectJoinType.me'"> 회원가입 </li><label class="miniMenubarLabel">&nbsp;&nbsp;|&nbsp;&nbsp;</label>
			<li><a href="#"> 고객센터 </a></li>
			<li> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </li>
		</ul>
	</div>
	
	<div class="menubarDiv">
		<nav class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light" id="templateux-navbar">
			<div class="container">
				<a class="navbar-brand" href="index.html"><span class="text-danger">아맞다</span></a>
				<!-- <a href="#"><label class="logo">AMATDA</label></a> -->
				<div class="site-menu-toggle js-site-menu-toggle  ml-auto" data-toggle="collapse" data-target="#templateux-navbar-nav" aria-controls="templateux-navbar-nav" aria-expanded="false" aria-label="Toggle navigation">
					<span></span> <span></span> <span></span>
				</div>
				<!-- END menu-toggle -->

				<div class="collapse navbar-collapse" id="templateux-navbar-nav">
					<!-- <ul class="navbar-nav ml-auto">
						<li class="nav-item"><a class="nav-link" href="#section-home">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#section-about">About</a></li>
						<li class="nav-item"><a class="nav-link" href="#section-team">Team</a></li>
						<li class="nav-item"><a class="nav-link" href="#section-rooms">Rooms</a></li>
						<li class="nav-item"><a class="nav-link" href="#section-menus">Menus</a></li>
						<li class="nav-item"><a class="nav-link" href="#section-events">Events</a></li>
						<li class="nav-item"><a class="nav-link" href="#section-contact">Contact</a></li>
						<li class="nav-item cta-btn ml-xl-2 ml-lg-2 ml-md-0 ml-sm-0 ml-0">
							<a class="nav-link" href="#" target="_blank"><span class="pb_rounded-4 px-4 rounded">Get Started</span></a>
						</li>
					</ul> -->
					<ul class="menubarLi">
						<li>회원 찾기</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li><a href="goMyPageView.tr">MY PAGE</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li>PT 관리</li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</ul>
				</div>
			</div>
		</nav>

<!-- 		<section class="site-hero overlay"
			style="background:#ffe6f3;"
			data-stellar-background-ratio="0.5" id="section-home">
			<div class="container">
				<div
					class="row site-hero-inner justify-content-center align-items-center">
					<div class="col-md-10 text-center" data-aos="fade-up">
						<h1 class="heading">Stay With Us &amp; Relax</h1>
					</div>
				</div>
			</div>
		</section> -->


		<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
		<script src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
		<script src="<c:url value="/resources/js/popper.min.js" />"></script>
		<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
		<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
		<script src="<c:url value="/resources/js/jquery.stellar.min.js" />"></script>
		<script src="<c:url value="/resources/js/jquery.fancybox.min.js" />"></script>
		<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
		<script src="<c:url value="/resources/js/aos.js" />"></script>
		<script src="<c:url value="/resources/js/bootstrap-datepicker.js" />"></script>
		<script src="<c:url value="/resources/js/jquery.timepicker.min.js" />"></script>
		<script src="<c:url value="/resources/js/main.js" />"></script>

	</div>

</body>
</html>