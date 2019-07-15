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
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Montserrat|Nanum+Gothic|Noto+Sans+KR:300|Open+Sans&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common/menubar.css">
<style>
	.table-on-off {
  width: 50px;
  height: 20px;
  margin: 0 auto;
  font-weight: bold;
  font-size: 9px;
  }
  input[switch] {
    display: none;
  }
  input[switch]+label {
    width: 100%;
    height: 100%;
    background-color: #ddd;
    border-radius: 20px;
    cursor: pointer;
    display: inline-block;
    text-align: center;
    position: relative;
    transition: all 0.2s ease-in-out;
  }
  input[switch]+label:before,
  input[switch]+label:after {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    transition: all 0.2s ease-in-out;
    width: 20px;
  }
  input[switch]+label:before {
    content: 'OFF';
    color: #b7b7b7;
    right: 15%;
    text-align: center;
  }
  input[switch]+label:after {
    content: '';
    height: 20px;
    left: 3%;
    border-radius: 20px;
    background-color: #f7f7f7;
  }
  input[switch]:checked+label {
    background-color: #ff0066;
   
    
  }
  input[switch]:checked+label:before {
    content: 'ON';
    color: #fff;
    right: auto;
    left: 15%;
  }
  input[switch]:checked+label:after {
    left: 63%;
    background-color: #f7f7f7;
   
  }

</style>
</head>
<body>


	<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }"
		scope="application" />


	<!-- 로그인 전 ------------------------------------------------------------------------------------------------------------------------- -->
	<c:if test="${empty sessionScope.loginUser }">
		<div class="miniMenubar">
			<ul>
				<li onclick="location.href='loginMember.me'" class="miniMenu">로그인
				</li>
				<label class="miniMenubarLabel">&nbsp;&nbsp;|&nbsp;&nbsp;</label>
				<li onclick="location.href='selectJoinType.me'" class="miniMenu">
					회원가입</li>
				<label class="miniMenubarLabel">&nbsp;&nbsp;|&nbsp;&nbsp;</label>
				<li onclick="location.href='selectNotice.bo'" class="miniMenu">
					고객센터</li>
				<li>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
			</ul>
		</div>
		<div class="menubarDiv">
			<nav
				class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light"
				id="templateux-navbar">
				<div class="container">
					<a class="navbar-brand" href="showMain.me"><span
						class="text-danger">아맞다</span></a>
					<!-- <a href="#"><label class="logo">AMATDA</label></a> -->
					<div class="site-menu-toggle js-site-menu-toggle  ml-auto"
						data-toggle="collapse" data-target="#templateux-navbar-nav"
						aria-controls="templateux-navbar-nav" aria-expanded="false"
						aria-label="Toggle navigation">
						<span></span> <span></span> <span></span>
					</div>
					<!-- END menu-toggle -->

					<div class="collapse navbar-collapse" id="templateux-navbar-nav">
						<ul class="menubarLi">
							<li class="menubarLi1"><a class="menubarLi1"
								href="showUserFindPageView.tr">회원 찾기</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li class="menubarLi4"><a class="menubarLi4"
								href="showRecommendTrainerPageView.us">트레이너 찾기</a></li>
						</ul>

					</div>
				</div>
			</nav>

			<!-- 		
				<section class="site-hero overlay" style="background:#ffe6f3;" data-stellar-background-ratio="0.5" id="section-home">
					<div class="container">
						<div class="row site-hero-inner justify-content-center align-items-center">
							<div class="col-md-10 text-center" data-aos="fade-up">
								<h1 class="heading">Stay With Us &amp; Relax</h1>
							</div>
						</div>
					</div>
				</section>
			-->

			<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
			<script
				src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
			<script src="<c:url value="/resources/js/popper.min.js" />"></script>
			<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
			<script src="<c:url value="/resources/js/owl.carousel.min.js" />"></script>
			<script src="<c:url value="/resources/js/jquery.stellar.min.js" />"></script>
			<script src="<c:url value="/resources/js/jquery.fancybox.min.js" />"></script>
			<script src="<c:url value="/resources/js/jquery.easing.1.3.js" />"></script>
			<script src="<c:url value="/resources/js/aos.js" />"></script>
			<script src="<c:url value="/resources/js/bootstrap-datepicker.js" />"></script>
			<script
				src="<c:url value="/resources/js/jquery.timepicker.min.js" />"></script>
			<script src="<c:url value="/resources/js/main.js" />"></script>

		</div>
	</c:if>


	<%-- <!-- 바로 el을 작성하지 않고 c:out에 작성한다(보안성up) -->
			<h3 align="right"><c:out value="${sessionScope.loginUser.name }님 환영합니다."/></h3>
			<button>정보수정</button>
			<button onclick="location.href='logout.me'">로그아웃</button> --%>


	<!-- 일반회원 로그인 --------------------------------------------------------------------------------------------------------------------- -->
	<c:if test="${!empty sessionScope.loginUser && sessionScope.loginUser.mtype.equals('U')}">
		<div class="menubarDiv">
		<nav
			class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light"
			id="templateux-navbar">
			<div class="container">
				<a class="navbar-brand" href="showMain.me"><span
					class="text-danger">아맞다</span></a>
				<!-- <a href="#"><label class="logo">AMATDA</label></a> -->
				<div class="site-menu-toggle js-site-menu-toggle  ml-auto"
					data-toggle="collapse" data-target="#templateux-navbar-nav"
					aria-controls="templateux-navbar-nav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span></span> <span></span> <span></span>
				</div>
				<!-- END menu-toggle -->

				<div class="collapse navbar-collapse" id="templateux-navbar-nav">
					<ul class="menubarLi">
						<li class="menubarLi4"><a class="menubarLi4"
							href="showRecommendTrainerPageView.us?mno=${sessionScope.loginUser.mno}">트레이너 찾기</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li class="menubarLi5"><a class="menubarLi5"
							href="showMyPagePrivacy.us?mno=${sessionScope.loginUser.mno}">MY PAGE</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li class="menubarLi6"><a class="menubarLi6" <%-- href="matching.ms?mno=${sessionScope.loginUser.mno}" --%>>PT
								PAGE</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%-- <li class="menubarLi7"><a class="menubarLi7" href="list.di?mno=${sessionScope.loginUser.mno}">다이어리
								</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<li class="menubarLi8"><a class="menubarLi8" href="showGallery.di?mno=${sessionScope.loginUser.mno}">갤러리
								</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>
					</ul>
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">${sessionScope.loginUser.name } 회원님</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">정보수정</a> <a
								class="dropdown-item" href="selectNotice.bo">고객센터</a> <a class="dropdown-item"
								href="logout.me">로그아웃</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
		
		
		<!-- 		
			<section class="site-hero overlay" style="background:#ffe6f3;" data-stellar-background-ratio="0.5" id="section-home">
				<div class="container">
					<div class="row site-hero-inner justify-content-center align-items-center">
						<div class="col-md-10 text-center" data-aos="fade-up">
							<h1 class="heading">Stay With Us &amp; Relax</h1>
						</div>
					</div>
				</div>
			</section>
		-->

		<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
		<script
			src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
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
		
	</c:if>
	
	
	<!-- 관리자 로그인 -->
		<c:if test="${!empty sessionScope.loginUser && sessionScope.loginUser.mtype.equals('A')}">
			
			
	<div class="menubarDiv">
		<nav
			class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light"
			id="templateux-navbar">
			<div class="container">
				<a class="navbar-brand" href="showMain.me"><span
					class="text-danger">아맞다</span></a>
				<!-- <a href="#"><label class="logo">AMATDA</label></a> -->
				<div class="site-menu-toggle js-site-menu-toggle  ml-auto"
					data-toggle="collapse" data-target="#templateux-navbar-nav"
					aria-controls="templateux-navbar-nav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span></span> <span></span> <span></span>
				</div>
				<!-- END menu-toggle -->

				<div class="collapse navbar-collapse" id="templateux-navbar-nav">
					<ul class="menubarLi">
						
						<li class="menubarLi6"><a class="menubarLi6" href="main.ad">관리자페이지
								</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</ul>
					<div class="dropdown">
						<button class="btn btn-secondary dropdown-toggle" type="button"
							id="dropdownMenuButton" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false">${sessionScope.loginUser.name } 관리자님</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							<a class="dropdown-item" href="#">정보수정</a> <a
								class="dropdown-item" href="selectNotice.bo">고객센터</a> <a class="dropdown-item"
								href="logout.me">로그아웃</a>
						</div>
					</div>
				</div>
			</div>
		</nav>
		</div>
		</c:if>
	
	<!-- 트레이너 로그인 --------------------------------------------------------------------------------------------------------------------- -->
	<c:if
		test="${!empty sessionScope.loginUser && sessionScope.loginUser.mtype.equals('T')}">
		<div class="menubarDiv">
		<nav
			class="navbar navbar-expand-lg navbar-dark pb_navbar pb_scrolled-light"
			id="templateux-navbar">
			<div class="container">
				<a class="navbar-brand" href="showMain.me"><span
					class="text-danger">아맞다</span></a>
				<!-- <a href="#"><label class="logo">AMATDA</label></a> -->
				<div class="site-menu-toggle js-site-menu-toggle  ml-auto"
					data-toggle="collapse" data-target="#templateux-navbar-nav"
					aria-controls="templateux-navbar-nav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span></span> <span></span> <span></span>
				</div>
				<!-- END menu-toggle -->

					<div class="collapse navbar-collapse" id="templateux-navbar-nav">
						<ul class="menubarLi">
							<li class="menubarLi1"><a class="menubarLi1" href="showUserFindPageView.tr">회원 찾기</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li class="menubarLi2"><a class="menubarLi2" href="showMyPageProfile.tr?mno=${sessionScope.loginUser.mno}">MY PAGE</a></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li class="menubarLi3"><a class="menubarLi3" href="showMatchingInProgressPage.tr?tno=${ sessionScope.loginUser.mno}">PT 관리</a></li>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<li class="menuberLi4" id="remainNum">남은 멤버쉽 횟수 : </li><li class="menuberLi4" id="remainNum2"></li><li class="menuberLi4" id="remainNum">번</li>
						</ul>
						<div class="as">
							<div class="dropdown">
								<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
									aria-haspopup="true" aria-expanded="false">${ sessionScope.loginUser.name } 트레이너님</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item">공개설정</a>
									<p class="table-on-off">
										<input type="checkbox" id="switch" checked switch="none" />
											<label for="switch"></label>
									</p>
									<a class="dropdown-item" href="selectNotice.bo">고객센터</a> 
									<a class="dropdown-item" href="logout.me">로그아웃</a>
								</div>
							</div>
						</div>
					</div>
				</div>
		</nav>

		<!-- 		
			<section class="site-hero overlay" style="background:#ffe6f3;" data-stellar-background-ratio="0.5" id="section-home">
				<div class="container">
					<div class="row site-hero-inner justify-content-center align-items-center">
						<div class="col-md-10 text-center" data-aos="fade-up">
							<h1 class="heading">Stay With Us &amp; Relax</h1>
						</div>
					</div>
				</div>
			</section>
		-->

		<script src="<c:url value="/resources/js/jquery-3.3.1.min.js" />"></script>
		<script
			src="<c:url value="/resources/js/jquery-migrate-3.0.1.min.js" />"></script>
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
		
	</c:if>
	
	<script>
		//멤버쉽잔여횟수 체크 및 초기 보너스 지급을 위한 onload펑션(김진환)
		$(function(){
			var checkType = "${ sessionScope.loginUser.mtype }";
			var mno = ${sessionScope.loginUser.mno};
			
			if(checkType == "T"){
				$.ajax({
					url:"firstMembership.tr",
					data : {mno:mno},
					success:function(data){
						if(data == "SUCCESS"){
							alert("회원가입을 축하드립니다!\n 환영의 의미로 보너스로 5포인트를 드립니다.!! \n 지금바로 매칭을 시작해보세요!");
							
						}else{
							
						}
						
						
					}
				})

				$.ajax({
					url:"checkMembership.tr",
					data : {mno:mno},
					success:function(data){
						$("#remainNum2").text(data);

						
					}
				});	
			}

			
		});
		$("#switch").change(function(){
			var checked = $(this).prop('checked');
			if(checked){
				alert("회원들로부터 검색이 가능해집니다");
				var mno = ${sessionScope.loginUser.mno};
				var open = "Y";
				$.ajax({
					url:"tOpenChange.tr",
					data : {mno:mno, open:open },
					success:function(data){
						
					}
				})
				
				
			}else{
				alert("회원들로 부터 회원님의 정보가 보이지 않습니다.");
				var mno = ${sessionScope.loginUser.mno};
				var open = "N";
				$.ajax({
					url:"tOpenChange.tr",
					data : {mno:mno, open:open },
					success:function(data){
						
					}
				})
			}
			
		})
		
		$(".menubarLi6").click(function() {
			var mno = ${ sessionScope.loginUser.mno };
			
			$.ajax({
				url:"matching.ms",
				data:{mno:mno},
				success:function(data) {
					if(data == "success") {
						location.href="matchinggo.ms";
					}else if(data == "fail"){
						alert("매칭이 완료된 회원만 접근이 가능합니다!");
						
					}
				}
			})
		})
		
		
		
		
	</script>
	


</body>

</html>