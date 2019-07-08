<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
	#userId{
	margin-left:450px;
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
                                <a class="dropdown-item" href="notice.ad">공지사항</a>
                                <a class="dropdown-item" href="FAQ.ad">자주 묻는 질문</a>
                                <a class="dropdown-item" href="QNA.ad">1:1문의</a>
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
                                <a class="dropdown-item" href="membership.ad">멤버쉽</a>
                                <a class="dropdown-item" href="refund.ad">환불</a>                       
                            </div>
                        </li>
   
                          <li class="nav-item">
                            <a class="nav-link" href="declaration.ad">
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
                            <a class="nav-link d-block" href="logout.me">
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
					<h2 class="tm-block-title">회원 정보 조회</h2>

			<!-- 필터링 검색 -->
					<select class="custom-select" onchange="categoryChange(this)" id="category" name="category">
						<option>카테고리별 조회</option>
						<option value="gender">성별</option>
						<option value="age">나이대</option>
					</select> 
					
					<select class="custom-select" id="keyword" name="keyword">
						<option>구분</option>
					</select>
					
			
			 <!-- 아이디 검색 -->		
			 <input id="userId"  name="userId" type="text"  placeholder="아이디 입력">
			 <a href="#" class="search_icon" id="idSearch"><i class="fas fa-search"></i></a>
			 
										
					<table class="table">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">아이디</th>
								<th scope="col">이름</th>
								<th scope="col">성별</th>
								<th scope="col">나이대</th>
								<th scope="col">이메일</th>					
							</tr>
						</thead>

						<tbody>

							<c:forEach var="list" items="${ userList }" varStatus="status">
								<tr>
									<th scope="row"><b>${ status.count }</b>
									<td>${ list.userId }</td>
									<td>${ list.name }</td>
									<td>${ list.gender }</td>
									<td>${ list.uage }</td>
									<td>${ list.email }</td>								
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

  <script>
  	$("#idSearch").click(function(){
  		var userId = $("input[name=userId]").val();  		
  		var searchId = {userId:userId};
  		//console.log(searchId);
  		 $.ajax({
  			url:"searchUser.ad",
  			data:searchId,
  			type:"get",
  			success:function(data){
  				//console.log(data[0].name);
  				$(".table > tbody").children().remove();
  				var table="<tr><td>" + 1 + "</td><td>" + 
  									   data[0].userId + "</td><td>" + 
  									   data[0].name + "</td><td>" + 
  									   data[0].gender + "</td><td>" +
  									   data[0].uage + "</td><td>" + 
  									   data[0].email + "</td></tr>";
  				$(".table > tbody").append(table);
  				
  			}
  		})
  	})
  	
  	function categoryChange(e){
  		var gender = ["남자", "여자"];
  		var age = ["18세미만", "18~24세", "25~34세", "35~44세", "45~54세"];
  		var keyword = document.getElementById("keyword");
 	
  		if(e.value == "gender") var value = gender;
  		else if (e.value == "age") var value = age;
  		
  		console.log("값 : " + value);
  		
  		for(key in value){
  			var opt = document.createElement("option");
  			opt.value = value[key];
  			opt.innerHTML = value[key];
  			keyword.appendChild(opt);
  		}
  		
 	$('#keyword').change(function(){
  		
 		var category = $("select[name=category]").val();  
  		var keyword=$(this).val();
  		//console.log(category);
  				
  		var filter = {category:category, keyword:keyword};
  		//console.log(filter);

  		 $.ajax({
  			url:"filtering.ad",
  			data:filter,
  			type:"get",
  			success:function(data){
  				console.log(data);
  				$(".table > tbody").children().remove();
  				
  				var index = data.filteringList;
  				console.log(index);
  				
  				for(var i = 0 ; i<index.length; i++){
  					//console.log(index[i].name);
  					
  					var table="<tr><td>" + (i+1) + "</td><td>" + 
					  index[i].userId + "</td><td>" + 
					  index[i].name + "</td><td>" + 
					  index[i].gender + "</td><td>" +
					  index[i].uage + "</td><td>" + 
					  index[i].email + "</td></tr>";
						$(".table > tbody").append(table);
  				
  					
  				}
  				
 
  			}
  		}) 
  		
  	}) 
  			
  	}
 

  </script>
	



</body>

</html>