<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>아맞다 관리자 페이지</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
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
	#search_input{
	margin-left:750px;
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
                <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars tm-nav-icon"></i>
                </button>

 				<!-- 메뉴바 -->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto h-100">
                    
                     <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-user"></i>
                                <span>
                             	       회원관리 
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="main.ad">회원 정보 조회<a>
                                <a class="dropdown-item" href="trainer.ad">트레이너 조회</a>
                                <a class="dropdown-item" href="matching.ad">매칭 조회</a>
                            </div>
                        </li>
                        
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="far fa-file-alt"></i>
                                <span>
                             	       게시판관리 
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">공지사항</a>
                                <a class="dropdown-item" href="#">자주 묻는 질문</a>
                                <a class="dropdown-item" href="#">1:1문의</a>
                            </div>
                        </li>
                        
                        <li class="nav-item dropdown">

                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-shopping-cart"></i>
                                <span>
                             	       결제관리 
                                    <i class="fas fa-angle-down"></i>
                                </span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">멤버쉽</a>
                                <a class="dropdown-item" href="#">환불</a>                       
                            </div>
                        </li>
   
                          <li class="nav-item">
                            <a class="nav-link" href="#">
                                <i class="fas fa-cog"></i>
                                	신고관리
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        
                              <li class="nav-item">
                            <a class="nav-link" href="statistics.ad">
                                <i class="fas fa-tachometer-alt"></i>
                                	통계관리
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
   
                    </ul>
                    
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link d-block" href="login.html">
                                Admin, <b>Logout</b>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

        </nav>
       <!--  메뉴바 끝 -->
       
       <br><br><br>
       
        <div class="container">


			<div class="col-12 tm-block-col">
				<div
					class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
					<h2 class="tm-block-title">매칭 조회</h2>

					<input id="search_input" type="text" name="" placeholder="아이디 입력">
					<a href="#" class="search_icon"><i class="fas fa-search"></i></a>


					<table class="table">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">회원 아이디</th>
								<th scope="col">트레이너 아이디</th>
								<th scope="col">입금완료일</th>
								<th scope="col">PT시작일</th>
								<th scope="col">PT종료일</th>
								<th scope="col">상태</th>
							</tr>
						</thead>

						<tbody>

							<c:forEach var="member" begin="1" end="10">
								<tr>
									<th scope="row"><b>1</b></th>
									<td>sunah</td>
									<td>wannaOne</td>
									<td>2019.06.07</td>
									<td>2019.06.21</td>
									<td>2019.12.21</td>
									<td><button class="button">매칭 종료</button></td>
									
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
    
    
</body>

</html>