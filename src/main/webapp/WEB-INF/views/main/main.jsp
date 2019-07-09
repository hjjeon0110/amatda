<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	
	<a href="matching.ms">캘린더</a>
	<a class="ttt" href="goUpdateMission.ms?tno=${sessionScope.loginUser.mno}">트레이너용 캘린더</a>

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
																						<!-- <a href="survey1.su">설문조사 insert</a>&nbsp;&nbsp; -->
																						<a href="list.su?mno=${sessionScope.loginUser.mno}">설문조사 update</a>&nbsp;&nbsp;
																						<%-- <a href="show.di?mno=${sessionScope.loginUser.mno}">다이어리 insert</a>&nbsp;&nbsp;
																						<a href="list.di?mno=${sessionScope.loginUser.mno}">다이어리 list</a>&nbsp;&nbsp;
																						<a href="showGallery.di?mno=${sessionScope.loginUser.mno}">갤러리 select</a> --%>
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
				<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
					<label class="level">1st</label>
					<div class="block-2">
						<div class="flipper">
							<div class="front">
								<div class="like">
									<i class="fa fa-heart text-primary" aria-hidden="true"></i>&nbsp;&nbsp;<label class="likeNum">777</label>
								</div>
								<div class="box">
									<h2>Will Smith</h2>
									<p>President</p>
								</div>
							</div>
							<div class="back">
								<!-- back content -->
								<blockquote>
									<p>&ldquo;Even the all-powerful Pointing has no control
										about the blind texts it is an almost unorthographic life One
										day however a small line of blind text by the name of Lorem
										Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
								</blockquote>
								<div class="author d-flex">
									<div class="image mr-3 align-self-center">
										<img src="images/person_3.jpg" alt="">
									</div>
									<div class="name align-self-center">
										Will Smith <span class="position">President</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- .flip-container -->
				</div>
				<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="200">
					<label class="level">2nd</label>
					<div class="block-2">
						<!-- .hover -->
						<div class="flipper">
							<div class="front">
								<div class="like">
									<i class="fa fa-heart text-primary" aria-hidden="true"></i>&nbsp;&nbsp;<label class="likeNum">555</label>
								</div>
								<div class="box">
									<h2>Claire Williams</h2>
									<p>Business Manager</p>
								</div>
							</div>
							<div class="back">
								<!-- back content -->
								<blockquote>
									<p>&ldquo;Even the all-powerful Pointing has no control
										about the blind texts it is an almost unorthographic life One
										day however a small line of blind text by the name of Lorem
										Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
								</blockquote>
								<div class="author d-flex">
									<div class="image mr-3 align-self-center">
										<img src="images/person_1.jpg" alt="">
									</div>
									<div class="name align-self-center">
										Claire Williams <span class="position">Business Manager</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- .flip-container -->
				</div>
				<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="300">
					<label class="level">3rd</label>
					<div class="block-2">
						<div class="flipper">
							<div class="front">
								<div class="like">
									<i class="fa fa-heart text-primary" aria-hidden="true"></i>&nbsp;&nbsp;<label class="likeNum">333</label>
								</div>
								<div class="box">
									<h2>Jane Johnson</h2>
									<p>Marketing Director</p>
								</div>
							</div>
							<div class="back">
								<!-- back content -->
								<blockquote>
									<p>&ldquo;Even the all-powerful Pointing has no control
										about the blind texts it is an almost unorthographic life One
										day however a small line of blind text by the name of Lorem
										Ipsum decided to leave for the far World of Grammar.&rdquo;</p>
								</blockquote>
								<div class="author d-flex">
									<div class="image mr-3 align-self-center">
										<img src="images/person_2.jpg" alt="">
									</div>
									<div class="name align-self-center">
										Jane Johnson <span class="position">Marketing Director</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- .flip-container -->
				</div>
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
		}/* else if(${sessionScope.loginUser.mtype =='U'}  && ${sessionScope.loginUser.completeSurvey=='Y'}){
			

		} */
	})
	
	
	$(".ttt").click(function(){
		var tno = ${ sessionScope.loginUser.mno };
		
		$.ajax({
			url:"goUpdateMission.ms",
			data:{tno:tno},
			success:function(data) {
				if(data == "success") {
					location.href="goUpdateMissiono.ms";
				}else if(data == "fail"){
					alert("진행중인 매칭이 없습니다!");
					location.reload();
				}
			}
		})
	})
	
	</script>
</body>
</html>