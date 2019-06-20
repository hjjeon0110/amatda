<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->

<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans|Montserrat|Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
	.recommendNewTrainer, .recommendBestTrainer {
		text-align:center;
		font-family: 'Noto Sans KR', sans-serif;
		font-size:25px;
		color:#ff0066
	}
	.bestReviewLabel {
		font-family: 'Montserrat', sans-serif;
		font-size:25px;
		color:#ff0066
	}
	.newBtn {
		border-style:none;
		width:35px;
		height:25px;
		font-size:12px;
		background:#ffe6f3;
		color:white;
	}
	.simpleProfile {
		font-size:12px;
		color:gray;
	}
	.goProfile {
		border-style:none;
		width:130px;
		height:30px;
		font-size:15px;
		background:#ff0066;
		color:white;
	}
	.blog_section {
  padding-top: 5rem;
  padding-bottom: 3rem;
}
.blog_section .blog_content .blog_item {
  margin-bottom: 30px;
  box-shadow: 0 0 11px 0 rgba(6, 22, 58, 0.14);
  position: relative;
  border-radius: 2px;
  overflow: hidden;
}
.blog_section .blog_content .blog_item:hover .blog_image img {
  transform: scale(1.1);
}
.blog_section .blog_content .blog_item .blog_image {
  overflow: hidden;
  padding: 0;
}
.blog_section .blog_content .blog_item .blog_image img {
  width: 100%;
  transition: transform 0.5s ease-in-out;
}
.blog_section .blog_content .blog_item .blog_image span i {
  position: absolute;
  z-index: 2;
  color: #fff;
  font-size: 18px;
  width: 38px;
  height: 45px;
  padding-top: 7px;
  text-align: center;
  right: 20px;
  top: 0;
  -webkit-clip-path: polygon(0 0, 100% 0, 100% 100%, 50% 79%, 0 100%);
  clip-path: polygon(0 0, 100% 0, 100% 100%, 50% 79%, 0 100%);
  background-color: #ff0066;
}
.blog_section .blog_content .blog_item .blog_details {
  padding: 25px 20px 30px 20px;
}
.blog_section .blog_content .blog_item .blog_details .blog_title h5 a {
  color: #020d26;
  margin-top: 0;
  margin-bottom: 10px;
  font-size: 20px;
  line-height: 32px;
  transition: all 0.3s;
  text-decoration: none;
}
.blog_section .blog_content .blog_item .blog_details .blog_title h5 a:hover {
  color: #ff0066;
}
.blog_section .blog_content .blog_item .blog_details ul {
  padding: 0 3px 10px 0;
  margin: 0;
}

.blog_section .blog_content .blog_item .blog_details ul li {
  display: inline-block;
  padding-right: 15px;
  position: relative;
  color: gray;
  font-size:15px;
}
.blog_section .blog_content .blog_item .blog_details ul li i {
  padding-right: 7px;
}
.blog_section .blog_content .blog_item .blog_details p {
  border-top: 1px solid #e5e5e5;
  margin-top: 4px;
  padding: 20px 0 4px;
}
.blog_section .blog_content .blog_item .blog_details a {
  font-size: 15px;
  display: inline-block;
  color: gray;
  font-weight: 600;
  text-decoration: none;
  transition: all 0.3s;
}
.blog_section .blog_content .blog_item .blog_details a:hover {
  color: #ff0066;
}
.blog_section .blog_content .blog_item .blog_details a i {
  vertical-align: middle;
  font-size: 10px;
}
.blog_section .blog_content .owl-nav {
  display: block;
}
.blog_section .blog_content .owl-nav .owl-prev {
  position: absolute;
  left: -27px;
  top: 33%;
  border: 5px solid #fff;
  text-align: center;
  z-index: 5;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  outline: 0;
  background: #ff5e14;
  transition: all 0.3s;
  color: #fff;
}
.blog_section .blog_content .owl-nav .owl-prev span {
  font-size: 25px;
  margin-top: -6px;
  display: inline-block;
}
.blog_section .blog_content .owl-nav .owl-prev:hover {
  background: #fff;
  border-color: #ff5e14;
  color: #ff5e14;
}
.blog_section .blog_content .owl-nav .owl-next {
  position: absolute;
  right: -27px;
  top: 33%;
  border: 5px solid #fff;
  text-align: center;
  z-index: 5;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  outline: 0;
  background: #ff5e14;
  color: #fff;
  transition: all 0.3s;
}
.blog_section .blog_content .owl-nav .owl-next span {
  font-size: 25px;
  margin-top: -6px;
  display: inline-block;
}
.blog_section .blog_content .owl-nav .owl-next:hover {
  background: #fff;
  border-color: #ff5e14;
  color: #ff5e14;
}

@media only screen and (max-width: 577px) {
  .blog_section .owl-nav .owl-prev {
    left: -17px !important;
  }
  .blog_section .owl-nav .owl-next {
    right: -17px !important;
  }
}
</style>
</head>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>


	<!-- 캐러셀 영역 ---------------------------------------------------------------------------------------------------------- -->
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="${ contextPath }/resources/images/testImage.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="${ contextPath }/resources/images/testImage.png" class="d-block w-100" alt="...">
			</div>
			<div class="carousel-item">
				<img src="${ contextPath }/resources/images/testImage.png" class="d-block w-100" alt="...">
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
	<br><br><br><br><br>

	
	<!-- 추천 신입 트레이너 ----------------------------------------------------------------------------------------------------- -->
	<div class="recommendNewTrainer">
		<label class="recommendNewTrainerLabel" data-aos="fade-up">추천
			신입 트레이너</label>
		<section class="blog_section">
			<div class="container">
				<div class="blog_content">
					<div class="owl-carousel owl-theme">
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="https://cdn.pixabay.com/photo/2019/03/10/18/31/hong-kong-4046913_960_720.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<div class="blog_title">
										<a href="#">트레이너1</a>&nbsp;&nbsp;<button class="newBtn">신입</button>
								</div>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br>
								<!-- <a href="#">프로필 상세보기<i class="icofont-long-arrow-right"></i></a> -->
								<button class="goProfile">프로필 상세보기</button>
							</div>
						</div>
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="https://cdn.pixabay.com/photo/2015/07/09/22/45/tree-838667_960_720.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<div class="blog_title">
										<a href="#">트레이너2</a>&nbsp;&nbsp;<button class="newBtn">신입</button>
								</div>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br>
								<!-- <a href="#">프로필 상세보기<i class="icofont-long-arrow-right"></i></a> -->
								<button class="goProfile">프로필 상세보기</button>
							</div>
						</div>
						<div class="blog_item">
							<div class="blog_image">
								<img class="img-fluid"
									src="https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_960_720.jpg"
									alt="images not found"> <span><i
									class="icon ion-md-create"></i></span>
							</div>
							<div class="blog_details">
								<div class="blog_title">
										<a href="#">트레이너3</a>&nbsp;&nbsp;<button class="newBtn">신입</button>
								</div>
								<label class="simpleProfile">한 줄 프로필 공간입니다.</label><br>
								<!-- <a href="#">프로필 상세보기<i class="icofont-long-arrow-right"></i></a> -->
								<button class="goProfile">프로필 상세보기</button>
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

	<!-- 추천 인기 트레이너 ----------------------------------------------------------------------------------------------------- -->
	<div class="recommendBestTrainer">
		<label class="recommendBestTrainerLabel" data-aos="fade-up">추천 인기 트레이너</label>
	</div>
	
	
	<!-- 베스트 리뷰 영역 ------------------------------------------------------------------------------------------------------ -->
	<div class="bestReview">
		<div class="container section" id="section-team">
			<div class="row justify-content-center text-center mb-5">
				<div class="col-md-7 mb-5">
					<label class="bestReviewLabel" data-aos="fade-up">BEST REVIEW</label>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4" data-aos="fade-up" data-aos-delay="100">
					<div class="block-2">
						<div class="flipper">
							<div class="front">
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
					<div class="block-2">
						<!-- .hover -->
						<div class="flipper">
							<div class="front">
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
					<div class="block-2">
						<div class="flipper">
							<div class="front">
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
	
	
	<section class="site-hero overlay" style="background: #ffe6f3;" data-stellar-background-ratio="0.5" id="section-home">
		<div class="container">
			<div class="row site-hero-inner justify-content-center align-items-center">
				<div class="col-md-10 text-center" data-aos="fade-up">
					<h1 class="heading">Stay With Us &amp; Relax</h1>
				</div>
			</div>
		</div>
	</section>
	
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
	
	</script>
</body>
</html>