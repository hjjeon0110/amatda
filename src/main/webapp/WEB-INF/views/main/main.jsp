<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아맞다에 오신 것을 환영합니다.</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/main/main.css">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Montserrat|Noto+Sans+KR&display=swap" rel="stylesheet">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
</head>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	<%-- <a href="matching.ms">캘린더</a>
	<a class="ttt" href="goUpdateMission.ms?tno=${sessionScope.loginUser.mno}">트레이너용 캘린더</a> --%>

	<!-- 캐러셀 영역 ---------------------------------------------------------------------------------------------------------- -->
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${ contextPath }/resources/images/testImage.png" class="d-block w-100" alt="..." id="carouselImg">
			</div>
			<div class="carousel-item">
				<img src="${ contextPath }/resources/images/testImage.png" class="d-block w-100" alt="..." id="carouselImg">
			</div>
			<div class="carousel-item">
				<img src="${ contextPath }/resources/images/testImage.png" class="d-block w-100" alt="..." id="carouselImg">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev"> 
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> 
			<span class="sr-only">Previous</span>
		</a> 
		<a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next"> 
			<span class="carousel-control-next-icon" aria-hidden="true"></span> 
			<span class="sr-only">Next</span>
		</a>
	</div>
	<br><br>

	
	<!-- 추천 신입 트레이너 ----------------------------------------------------------------------------------------------------- -->
	<div class="recommendNewTrainer">
		<label class="recommendNewTrainerLabel" data-aos="fade-up">추천 신입 트레이너</label>														
		<section class="blog_section">
			<div class="container">
				<div class="blog_content">
					<div class="owl-carousel owl-theme">
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="${contextPath}/resources/images/trainer.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<label class="tName">트레이너1&nbsp;&nbsp;</label><button class="newBtn">신입</button><br>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br><br>
								<button class="goProfile">프로필 상세보기 ></button><br>
							</div>
						</div>
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="${contextPath}/resources/images/trainer.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<label class="tName">트레이너2&nbsp;&nbsp;</label><button class="newBtn">신입</button><br>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br><br>
								<button class="goProfile">프로필 상세보기 ></button><br>
							</div>
						</div>
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="${contextPath}/resources/images/trainer.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<label class="tName">트레이너3&nbsp;&nbsp;</label><button class="newBtn">신입</button><br>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br><br>
								<button class="goProfile">프로필 상세보기 ></button><br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Jquery -->
		<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
		<!-- bootstrap -->
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.0/js/bootstrap.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<!-- carousel -->
		<script type="text/javascript"
			src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js"></script>

	</div>
	<br>

	<!-- 추천 인기 트레이너 ----------------------------------------------------------------------------------------------------- -->
	<div class="recommendBestTrainer">
		<label class="recommendBestTrainerLabel" data-aos="fade-up">추천 인기 트레이너</label>
		<section class="blog_section">
			<div class="container">
				<div class="blog_content">
					<div class="owl-carousel owl-theme">
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="${contextPath}/resources/images/trainer.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<label class="tName">트레이너1&nbsp;&nbsp;</label><button class="newBtn">인기</button><br>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br><br>
								<button class="goProfile">프로필 상세보기 ></button><br>
							</div>
						</div>
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="${contextPath}/resources/images/trainer.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<label class="tName">트레이너2&nbsp;&nbsp;</label><button class="newBtn">인기</button><br>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br><br>
								<button class="goProfile">프로필 상세보기 ></button><br>
							</div>
						</div>
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="${contextPath}/resources/images/trainer.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<label class="tName">트레이너3&nbsp;&nbsp;</label><button class="newBtn">인기</button><br>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br><br>
								<button class="goProfile">프로필 상세보기 ></button><br>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</div>
	<br><br><hr><br><br>
	
	<!-- 베스트 리뷰 영역 ------------------------------------------------------------------------------------------------------ -->
	<div class="bestReview">
		<div class="container section" id="section-team">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7 mb-5">
					<label class="bestReviewLabel" data-aos="fade-up">이 달의 BEST REVIEW</label>
				</div>
			</div>
			<br><br>
			<div class="row">
				<!-- <div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
					<label class="level">1st</label>
					<div class="block-2">
						<div class="flipper">
							<div class="front">
								<div class="like">
									<i class="fa fa-heart text-primary" aria-hidden="true"></i>&nbsp;&nbsp;<label class="likeNum" id="likeNum1"></label>
									<img id="frontPic" src="#">
								</div>
								<div class="box">
									<h2 id="frontName1"></h2>
									
								</div>
							</div>
							<div class="back" id="back">
								back content
								<blockquote>
									<p id="backCon1">&ldquo;Even the all-powerful Pointing has no control
										about the blind texts it is an almost unorthographic life One
										day however a small line of blind text by the name of Lorem
										Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
								</blockquote>
								<div class="author d-flex">
									<div class="image mr-3 align-self-center">
										<img src="images/person_3.jpg" id="backPic"alt="">
									</div>
									<div class="name align-self-center">
										<label id="backName1"></label><span class="position"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					.flip-container
				</div>
				
				1----------
				
					<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
					<label class="level">1st</label>
					<div class="block-2">
						<div class="flipper">
							<div class="front">
								<div class="like">
									<i class="fa fa-heart text-primary" aria-hidden="true"></i>&nbsp;&nbsp;<label class="likeNum" id="likeNum2"></label>
								</div>
								<div class="box">
									<h2 id="frontName2"></h2>
									
								</div>
							</div>
							<div class="back" id="back">
								back content
								<blockquote>
									<p id="backCon2">&ldquo;Even the all-powerful Pointing has no control
										about the blind texts it is an almost unorthographic life One
										day however a small line of blind text by the name of Lorem
										Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
								</blockquote>
								<div class="author d-flex">
									<div class="image mr-3 align-self-center">
										<img src="images/person_3.jpg" id="backPic"alt="">
									</div>
									<div class="name align-self-center">
										<label id="backName2"></label><span class="position"></span>
									</div>
								</div>
							</div>
						</div>
					</div>
					.flip-container
				</div>
				
					2---------- -->
					<c:forEach var = "list" items="${list }" varStatus="status">
					<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
					<label class="level"></label>
					<table class="bestClick">
						<div class="block-2">
								<div class="flipper">
								
									<div class="front">
									
										<div class="like">
											<input type="hidden" value="${list.bNo }">
											<i class="fa fa-heart text-primary" aria-hidden="true"></i>&nbsp;&nbsp;<label class="likeNum" id="likeNum3"  style="color:red">${list.bLike }</label><br>
										    <img src="${contextPath}/resources/uploadFiles/${list.attachment.modiName}${list.attachment.extension}"  style="width: 250px; height: 300px; margin-left:1%;">
										</div>
										<div class="box">
										<%-- <c:if test=${not empty list.bWriter }>
											<div onclick="location.href='selectWriterName.me?writer=${list.bWriter }'"></div> --%>
											<%-- <h2 id="frontName3" style="color:red">${list.member.userId }</h2> --%>
											<h6 id="frontName3" style="color:red">${list.bTitle }</h6>
											
										<%-- </c:if>	 --%>
										<%-- <br><h6>${list.bTitle }</h6><br> --%>
										</div>
									
									</div>
									<div class="back" id="back">
										<!-- back content -->
										<!-- <blockquote> -->
										 <p id="backTitle">${list.bTitle }</p><br>
										 <p id="backCon3" style="margin-top:60px">${list.bContent}</p> 
										 
										<!-- </blockquote> -->
										<div class="author d-flex">
											<div class="image mr-3 align-self-center">
												<!-- <img src="images/person_3.jpg" id="backPic"alt=""> -->
												<%-- <img src="$contextPath}/resources/uploadFile/${at.modiName}${at.extension} "> --%>
											</div>
											<%-- <div class="name align-self-center">
										<label id="backName3">${list.member.userId}</label><span class="position"></span> 
											</div> --%>
										</div>
										
									</div>
									
								</div>
						</div>
					</table>
					<!-- .flip-container -->
				</div>
				</c:forEach>	
						<!-- 3---------- -->
				
			</div>
		</div>
	</div>
	<br><br>
	
	
	<section class="site-hero overlay" style="background-image:url(${contextPath}/resources/images/testFooter.jpg)" data-stellar-background-ratio="0.5" id="section-home">
		<div class="container">
			<div class="row site-hero-inner justify-content-center align-items-center">
				<div class="col-md-10 text-center" data-aos="fade-up">
					<h1 class="heading">Stay With Us &amp; Relax</h1>
				</div>
			</div>
		</div>
	</section>
	<br><br><hr><br><br>
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/footer.jsp"></jsp:include>

	
	<script>
	$('.owl-carousel').owlCarousel({
	    loop:true,
	    margin:10,
	    dots:false,
	    nav:true,
	    autoplay:true,   
	    smartSpeed: 3000, 
	    autoplayTimeout:7000,
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:2
	        },
	        1000:{
	            items:3
	        }
	    }
	})
	
	$(function(){
		console.log(${sessionScope.loginUser.mtype =='U'});
		console.log(${sessionScope.loginUser.completeSurvey =='Y'});
		if(${sessionScope.loginUser.mtype =='U'}  && ${sessionScope.loginUser.completeSurvey=='N'}){
			/* alert("설문조사하러가기");
			location.href="survey1.su"; */
			
			var result = confirm("설문조사 완료후, 다시 로그인해주세요!");
		    	if(result){ //확인버튼
		    		location.href="survey1.su";
		    
		    	}else{ //취소버튼
		    		location.href="showSearchTrainerPageView.us";
		    	}
		}else if(${sessionScope.loginUser.mtype =='U'}  && ${sessionScope.loginUser.completeSurvey=='Y'}){
			

		}
	})
	

	
	$(".block-2").on('click',function(){
		var no=$(this).children().children().children().children().eq(0).val();
		console.log("no: " + no);
		location.href="selectOneReview.bo?bNo=" + no;
		
		
	});
	
		/* $.ajax({
			url:"bestReviewSelect.bo",
			success:function(data){
				console.log(data[0]);
				console.log("이미지: " + data[0].attachment.modiName);
				alert("성공");
				$("#likeNum1").text(data[0].bLike);
				$("#frontName1").text(data[0].bWriter);
				$("#backCon1").text(data[0].bContent);
				$("#backName1").text(data[0].bWriter);
				$("frontPic").attr("src", data[0].attachment.modiName data[0].attachment.extension)
				
				
				$("#likeNum2").text(data[1].bLike);
				$("#frontName2").text(data[1].bWriter);
				$("#backCon2").text(data[1].bContent);
				$("#backName2").text(data[1].bWriter);
				
				$("#likeNum3").text(data[2].bLike);
				$("#frontName3").text(data[2].bWriter);
				$("#backCon3").text(data[2].bContent);
				$("#backName3").text(data[2].bWriter);
				
				
				
				
			},
			error:function(data){
				alert("실패");
			}
			
		}) */
		

	

	</script>
</body>
</html>