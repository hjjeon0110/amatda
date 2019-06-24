<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trainer/2_1_myPage_profile.css">
</head>
<body>


	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
			
	<br><br><br>
	
	<label class="subTitle">트레이너3님의 프로필</label>
	<br><br>
	<div class="profile">
	
		<div class="traineProfile">
			<table class="traineProfileTable" >
				<tr>
					<td rowspan="3" class="traineProfileTableTd1">
						<div class="profileImg"></div>
					</td>
					<td class="traineProfileTableTd2"><br><label class="traineProfileTableTd2Label">프로필 제목</label></td>
					<td></td>
				</tr>
				<tr>
					<td><br>
					<i class="fa fa-star"></i>&nbsp;&nbsp;평점 5.0&nbsp;&nbsp;l&nbsp;&nbsp;리뷰 10<br><br>
					<i class="fa fa-heart"></i>&nbsp;&nbsp;333</td>
					<td class="traineProfileTableTd1">
						<br><br><br>
						<button type="button" class="btn btn-primary" id="goProfileDetail" data-toggle="modal"
						data-target="#exampleModalScrollable">프로필 수정하기</button>
					</td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
			</table>
		</div>
		
	</div>
	
	
	<br><br><br>
	<label class="subTitle">미디어</label>
	<br><br>
	<div class="container-fluid">
	    <div id="carouselExample" class="carouselPrograms carousel slide" data-ride="carousel" data-interval="false">
	        <div class="carousel-inner row w-100 mx-auto" role="listbox">
	            <div class="carousel-item col-md-4  active">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 1" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 1">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 3" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 2">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 4" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 3">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	                <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 5" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 4">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	              <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 6" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 5">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 7" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 6">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 8" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 7">
	                    </a>
	                  </div>
	                </div>
	            </div>
	             <div class="carousel-item col-md-4  ">
	                <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 2" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/stretching.jpg" alt="slide 8">
	                    </a>
	                  </div>
	                  
	                </div>
	            </div>
	        </div>
	        <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
	            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	            <span class="sr-only">Previous</span>
	        </a>
	        <a class="carousel-control-next text-faded" href="#carouselExample" role="button" data-slide="next">
	            <span class="carousel-control-next-icon" aria-hidden="true"></span>
	            <span class="sr-only">Next</span>
	        </a>
	    </div>
	</div>

	
	
	<br><br><br>
	<label class="subTitle">서비스 키워드</label><br>
	<br>
	<div class="keywordDiv">
		<span class="badge badge-pill badge-danger"> #키워드1 </span>&nbsp;
		<span class="badge badge-pill badge-danger"> #키워드2 </span>&nbsp;
		<span class="badge badge-pill badge-danger"> #키워드3 </span>&nbsp;
		<span class="badge badge-pill badge-danger"> #키워드4 </span>&nbsp;
		<span class="badge badge-pill badge-danger"> #키워드5 </span>
	</div>
	
	
	<br><br><br>
	<label class="subTitle">트레이너 소개</label>
	<br><br>
	<div class="trainerInfoDiv">	
		<textarea class="trainerInfo">트레이너 소개 작성 영역입니다.</textarea>
	</div>


	<br><br><br>
	<label class="subTitle">자격증 및 사업등록증</label>
	<br><br>
	<div class="container-fluid">
	    <div id="carouselExample" class="carouselPrograms carousel slide" data-ride="carousel" data-interval="false">
	        <div class="carousel-inner row w-100 mx-auto" role="listbox">
	            <div class="carousel-item col-md-4  active">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 1" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 1">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 3" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 2">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 4" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 3">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	                <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 5" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 4">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	              <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 6" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 5">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 7" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 6">
	                    </a>
	                  </div>
	                </div>
	            </div>
	            <div class="carousel-item col-md-4 ">
	               <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 8" class="thumb">
	                      <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 7">
	                    </a>
	                  </div>
	                </div>
	            </div>
	             <div class="carousel-item col-md-4  ">
	                <div class="panel panel-default">
	                  <div class="panel-thumbnail">
	                    <a href="#" title="image 2" class="thumb">
	                     <img class="img-fluid mx-auto d-block" src="${ contextPath }/resources/images/certification.PNG" alt="slide 8">
	                    </a>
	                  </div>
	                  
	                </div>
	            </div>
	        </div>
	        <a class="carousel-control-prev" href="#carouselExample" role="button" data-slide="prev">
	            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	            <span class="sr-only">Previous</span>
	        </a>
	        <a class="carousel-control-next text-faded" href="#carouselExample" role="button" data-slide="next">
	            <span class="carousel-control-next-icon" aria-hidden="true"></span>
	            <span class="sr-only">Next</span>
	        </a>
	    </div>
	</div>
	
	
	<br><br><br>
	<label class="subTitle">리뷰</label>
	<br><br>
	<div class="reviewDiv">
		<table class="reviewTable">
			<tr>
				<td>
					<label class="reviewWriter">전효정</label>&nbsp;&nbsp;
					<label class="reviewWriteDate">19/06/22</label>&nbsp;&nbsp;
					<label class="reviewStar"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></label>
				</td>
			</tr>
			<tr>
				<td><label class="review">리뷰 내용</label></td>
			</tr>
		</table>
		
		<table class="reviewTable">
			<tr>
				<td>
					<label class="reviewWriter">전효정</label>&nbsp;&nbsp;
					<label class="reviewWriteDate">19/06/22</label>&nbsp;&nbsp;
					<label class="reviewStar"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></label>
				</td>
			</tr>
			<tr>
				<td><label class="review">리뷰 내용</label></td>
			</tr>
		</table>
		
		<table class="reviewTable">
			<tr>
				<td>
					<label class="reviewWriter">전효정</label>&nbsp;&nbsp;
					<label class="reviewWriteDate">19/06/22</label>&nbsp;&nbsp;
					<label class="reviewStar"><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i></label>
				</td>
			</tr>
			<tr>
				<td><label class="review">리뷰 내용</label></td>
			</tr>
		</table>
	</div>

	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	
	<!-- Modal ---------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<label class="modalHeader">프로필 수정하기</label>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<table class="modalMenubar">
						<thead>
							<tr>
								<td><br><br></td>
								<td><br><br></td>
								<td><br><br></td>
								<td><br><br></td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="4">
								<br>
									<label class="modalHeader">내 정보 수정하기</label>
									<br><br>
									<label class="index">I</label>&nbsp;&nbsp;<label>PT 제목 / 서비스 제목</label><br>
									&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value="" readonly><br><br>
									<label class="index">I</label>&nbsp;&nbsp;<label>한 줄 프로필</label><br>
									&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value="" readonly>
									<br><br><br><br><br>
									<br><br><br><br><br>
								</td>
							</tr>
						</tbody>
					</table>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">저장 후 다음</button>
				</div>
			</div>
		</div>
	</div>


	<script>
		$('#carouselExample').on('slide.bs.carousel', function(e) {

			var $e = $(e.relatedTarget);
			var idx = $e.index();
			var itemsPerSlide = 3;
			var totalItems = $('.carousel-item').length;

			if (idx >= totalItems - (itemsPerSlide - 1)) {
				var it = itemsPerSlide - (totalItems - idx);
				for (var i = 0; i < it; i++) {
					// append slides to end
					if (e.direction == "left") {
						$('.carousel-item').eq(i).appendTo('.carousel-inner');
					} else {
						$('.carousel-item').eq(0).appendTo('.carousel-inner');
					}
				}
			}
		});

		$(document).ready(function() {
			/* show lightbox when clicking a thumbnail */
			$('a.thumb').click(function(event) {
				event.preventDefault();
				var content = $('.modal-body');
				content.empty();
				var title = $(this).attr("title");
				$('.modal-title').html(title);
				content.html($(this).html());
				$(".modal-profile").modal({
					show : true
				});
			});

		});
	</script>
</body>
</html>