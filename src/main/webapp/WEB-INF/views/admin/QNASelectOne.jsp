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
#button {
	display: inline-block;
}

.button2{
	margin-left:800px;
}

#replyInsert{
	margin-left:900px;
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

		<br> <br> <br>

		<div class="container">


			<div class="col-12 tm-block-col">
				<div class="tm-bg-primary-dark tm-block tm-block-taller">
					<h2 class="tm-block-title">1:1 문의</h2>

					<table class="table" id="declarationArea">
						<thead>
							<tr>
								<th scope="col">1</th>
								<th scope="col">멤버쉽 결제가 안돼요.</th>
								<th scope="col">tuser01</th>
								<th scope="col">2019-06-23</th>
								<th scope="col">165</th>
							</tr>
						</thead>

					</table>

					<textarea class="form-control" rows="15" required>용기가 되려니와, 노래하며 청춘을 길지 살 내려온 청춘 교향악이다. 인간의 그림자는 우는 무한한 인생을 오직 가는 하여도 아니다. 사랑의 원대하고, 곳으로 살았으며, 착목한는 들어 그들의 아니더면, 말이다. 내려온 미묘한 인류의 것이다. 청춘 힘차게 웅대한 오아이스도 꽃이 심장은 철환하였는가? 긴지라 그들은 이상, 싹이 풍부하게 옷을 이상은 밥을 있는 있다. 열매를 미묘한 불러 인생의 칼이다. 기쁘며, 뛰노는 얼마나 굳세게 황금시대다. 그러므로 미묘한 뜨거운지라, 사람은 봄바람이다.

목숨을 자신과 싹이 보배를 보내는 수 부패뿐이다. 목숨을 능히 싸인 때문이다. 사라지지 인간에 우리의 인간이 인생에 가는 얼마나 희망의 커다란 그리하였는가? 품으며, 대중을 끝까지 그들은 우리는 꽃이 인도하겠다는 그들에게 있으랴? 우는 듣기만 일월과 방황하였으며, 칼이다. 못할 안고, 이 속잎나고, 이 이는 수 아니더면, 철환하였는가? 영락과 붙잡아 관현악이며, 주는 가장 얼마나 있는가? 천하를 할지니, 자신과 속잎나고, 사라지지 군영과 이상 가장 봄바람이다. 구하지 심장은 그러므로 인간이 운다. 희망의 위하여서, 청춘의 없는 힘차게 속에서 뼈 것이다. 인간의 가지에 별과 것이 주며, 수 듣기만 그와 청춘의 것이다.

일월과 방황하였으며, 할지라도 인간에 힘차게 듣기만 부패뿐이다. 때에, 불러 광야에서 없으면, 가진 타오르고 황금시대의 있으랴? 같이, 용기가 아름답고 우는 바로 보이는 얼음에 끓는다. 우리의 옷을 만천하의 그림자는 이상 싸인 구하지 날카로우나 그리하였는가? 사랑의 영락과 방지하는 더운지라 힘있다. 별과 열락의 찾아 영락과 꾸며 청춘의 원질이 철환하였는가? 날카로우나 청춘의 심장의 석가는 낙원을 끓는다. 광야에서 예가 눈이 천하를 인간의 풀이 보내는 끓는다. 것은 풀밭에 예가 같이 그들의 피는 인간에 철환하였는가? 없는 따뜻한 때에, 인간이 무엇이 아니한 풀이 있는 대고, 힘있다. 전인 살 풀이 위하여, 듣는다.</textarea>

					
					<div id="button" class="button2">
						<a href="notice.ad" class="button" id="list">목록</a>
						<button class="button">삭제</button>
					</div>
					<br><br>
					
					<textarea class="form-control" rows="5" placeholder="댓글 입력"></textarea>
					<a href="" class="button" id="replyInsert">등록</a>

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