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
#search_input {
	margin-left: 750px;
}

#modalLayer{
	display:none; 
	position:relative;
}

#modalLayer 
	.modalContent{
	width:440px; 
	height:380px; 
	padding:20px; 
	border:1px solid #ccc; 
	position:fixed; 
	left:50%; 
	top:50%; 
	z-index:11; 
	background:#435c70;
}

#modalConfirm{
	color:#fff;
	text-align:center;
	margin-top:70px;
}

#modalContent{
	color:#fff;
	text-align:center;
	margin-top:30px;
}


#modalLayer .modalContent button{
	
	width:200px;
    background-color: #f8585b;
    border: none;
    color:#fff;
    padding: 5px 0;
    text-align: center;
    text-decoration: none;
    font-size: 15px;
    margin: 4px;
    margin-left:100px;
    margin-top:15px;
    cursor: pointer;
    border-radius:10px;
	
	
	}
	
	#userId{
		margin-left:550px;
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

					<!-- 	<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-shopping-cart"></i> <span>
									결제관리 <i class="fas fa-angle-down"></i>
							</span>
						</a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="membership.ad">멤버쉽</a> <a
									class="dropdown-item" href="refund.ad">환불</a>
							</div></li> -->
							
						<li class="nav-item"><a class="nav-link" href="refund.ad"> <i
								class="fas fa-shopping-cart"></i> 환불관리 <span class="sr-only">(current)</span>
						</a></li>
							
							

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

		<br>
		<br>
		<br>

		<div class="container">


			<div class="col-12 tm-block-col">
				<div
					class="tm-bg-primary-dark tm-block tm-block-taller tm-block-scroll">
					<h2 class="tm-block-title">매칭 조회</h2>

			<input id="userId"  name="userId" type="text"  placeholder="아이디 검색">
			 <a href="#" class="search_icon" id="idSearch"><i class="fas fa-search"></i></a>
					
					
					

					<table class="table">
						<thead>
							<tr>
								<th scope="col">번호</th>
								<th scope="col">회원</th>
								<th scope="col">트레이너</th>
								<th scope="col">매칭단계</th>
								<th scope="col">PT시작일</th>
								<th scope="col">PT종료일</th>
								<th scope="col">상태</th>
							</tr>
						</thead>

						<tbody>

							<c:forEach var="list" items="${list }" varStatus="status">
								<tr>
									<th scope="row"><b>${ status.count }</b>
									<input type="hidden" value="${list.processNo }" id="No"></th>
									<td>${ list.member.userId }</td>
									<td>${ list.member.trainerId }</td>
									<td align="center">${ list.matchingLevel }</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.startDate }"/></td>
									<td><fmt:formatDate pattern="yyyy-MM-dd" value="${list.endDate }"/></td>			
									<td>
										<a href="#modalLayer" class="button">매칭종료</a>
										 <div id="modalLayer">
											<div class="modalContent">
											 <h5 id="modalConfirm"><strong>정말 매칭을 종료 시키시겠습니까?</strong></h5>
											 <p id="modalContent"><b>확인을 누르시면, <br>
											 회원과 트레이너 관리페이지는 더이상 이용할 수 없습니다.</b></p>
											<button type="button" id="agreeBtn">확인</button>
											<button type="button">취소</button>
											</div>
										</div>
									</td>
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
		$(document).ready(function(){
			  var modalLayer = $("#modalLayer");
			  var button = $(".button");
			  var modalCont = $(".modalContent");
			  var marginLeft = modalCont.outerWidth()/2;
			  var marginTop = modalCont.outerHeight()/2; 
	
			  button.click(function(){
				  
				 
			    var No = $(this).parents("tr").children("th").children().eq(1).val();         
			  	 console.log("모달  : " + No);
			            
			    var $input = $("<input type='hidden' id='num' value=" + No + ">");
			    $(".container").append($input);
			          	
			     //매칭 종료
			            $("#agreeBtn").click(function() {
			               modalLayer.fadeOut("slow");
			               button.focus(); 
			                           
			              var No = $("#num").val();
			              console.log("매칭종료 : " + No);
			              location.href="matchingEnd.ad?No=" + No; 
			      
			            }) 
			            
			    modalLayer.fadeIn("slow");
			    modalCont.css({"margin-top" : -marginTop, "margin-left" : -marginLeft});
			    $(this).blur();
			    $(".modalContent > a").focus(); 
			    return false;
			  });
	
			  $(".modalContent > button").click(function(){
			    modalLayer.fadeOut("slow");
			    button.focus();
			  });		
			});
		
		//Date() 함수에서 날짜 형식 출력
	      Date.prototype.format = function (f) {

	          if (!this.valueOf()) return " ";

	          var weekKorName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
	          var weekKorShortName = ["일", "월", "화", "수", "목", "금", "토"];
	          var weekEngName = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];
	          var weekEngShortName = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
	          var d = this;

	          return f.replace(/(yyyy|yy|MM|dd|KS|KL|ES|EL|HH|hh|mm|ss|a\/p)/gi, function ($1) {

	              switch ($1) {
	                  case "yyyy": return d.getFullYear(); // 년 (4자리)
	                  case "yy": return (d.getFullYear() % 1000).zf(2); // 년 (2자리)
	                  case "MM": return (d.getMonth() + 1).zf(2); // 월 (2자리)
	                  case "dd": return d.getDate().zf(2); // 일 (2자리)
	                  case "KS": return weekKorShortName[d.getDay()]; // 요일 (짧은 한글)
	                  case "KL": return weekKorName[d.getDay()]; // 요일 (긴 한글)
	                  case "ES": return weekEngShortName[d.getDay()]; // 요일 (짧은 영어)
	                  case "EL": return weekEngName[d.getDay()]; // 요일 (긴 영어)
	                  case "HH": return d.getHours().zf(2); // 시간 (24시간 기준, 2자리)
	                  case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2); // 시간 (12시간 기준, 2자리)
	                  case "mm": return d.getMinutes().zf(2); // 분 (2자리)
	                  case "ss": return d.getSeconds().zf(2); // 초 (2자리)
	                  case "a/p": return d.getHours() < 12 ? "오전" : "오후"; // 오전/오후 구분
	                  default: return $1;

	              }

	          });

	      };

	      String.prototype.string = function (len) { var s = '', i = 0; while (i++ < len) { s += this; } return s; };
	      String.prototype.zf = function (len) { return "0".string(len - this.length) + this; };
	      Number.prototype.zf = function (len) { return this.toString().zf(len); };
	      
		
		$("#idSearch").click(function(){
	  		var userId = $("input[name=userId]").val();  		
	  		var searchId = {userId:userId};
	  		console.log(searchId);
	  		
	  		$.ajax({
	  			url:"searchId.ad",
	  			data:searchId,
	  			type:"get",
	  			success:function(data){
	  				//console.log(data);
	  				$(".table").children().remove();
	  				
	  				var thead = "<thead><tr><th>번호</th><th>회원</th><th>트레이너</th><th>매칭단계</th><th>PT시작일</th><th>PT종료일</th></tr><thead>";	 
	                $(".table").append(thead);
	                
	                
	                
	     			  for(var i = 0 ; i<data.length; i++){
	     				  
	     				 var startdate = new Date(data[i].startDate);	                   
	                     var enddate = new Date(data[i].endDate);
	                     console.log(startdate.format('yyyy-MM-dd'));
	                     console.log(enddate.format('yyyy-MM-dd'));
	                     
	                var tbody="<tr><td>" + (i+1) + "</td><td>" + 
	                     data[i].member.userId + "</td><td>" +  
	                     data[i].member.trainerId + "</td><td>" +  
	                     data[i].matchingLevel + "</td><td>" +
	                     startdate.format('yyyy-MM-dd') + "</td><td>" +
	                     enddate.format('yyyy-MM-dd') + "</td></tr>";
	                      $(".table").append(tbody); 
	                      
	                
	                    
	                       
	                     
	                  }
	  			}
	  			
	  			})
	  	})
	</script>


</body>

</html>