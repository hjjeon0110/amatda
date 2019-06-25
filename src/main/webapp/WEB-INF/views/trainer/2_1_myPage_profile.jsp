<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지-프로필관리</title>
<link rel="stylesheet" href="${contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trainer/2_1_myPage_profile.css">
</head>
<body>
	
	
	<!-- 메뉴바 영역 ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
	
	
	<!-- 작성한 프로필 없을 때 ----------------------------------------------------------------------------------------------- -->
	<c:if test="${ empty profile }">
	
		<div class="noProfileDiv">
			<br>
			<label><i class="fa fa-check"></i> 아직 프로필을 작성하지 않으셨군요! 프로필을 작성하고 회원에게 공개하면 PT 서비스를 시작할 수 있습니다.</label>
			<label>(어떤 서비스를 제공해주시는지 상세하게 적을수록 매칭이 수월하게 이루어질 수 있습니다.)</label>
		</div>
		
		<!-- 프로필 테이블 -->
		<div class="profile1">
			<div class="traineProfile">
				<table class="traineProfileTable" >
					<tr>
						<td rowspan="3" class="traineProfileTableTd1">
							<div class="profileImgDiv"><img class="profileImg" src="${ contextPath }/resources/images/profileImg3.PNG"></div>
						</td>
						<td class="traineProfileTableTd2"><br>
							<label class="traineProfileTableTd2Label">${ sessionScope.loginUser.name } 트레이너님의 프로필</label>
						</td>
						<td></td>
					</tr>
					<tr>
						<td><br>
						<i class="fa fa-star"></i>&nbsp;&nbsp;평점 0&nbsp;&nbsp;l&nbsp;&nbsp;리뷰 0<br><br>
						<i class="fa fa-heart"></i>&nbsp;&nbsp;0</td>
						<td class="traineProfileTableTd1">
							<br><br><br>
							<button type="button" class="btn btn-primary" id="goProfileDetail" data-toggle="modal"
							data-target="#exampleModalScrollable">프로필 작성하기</button>
						</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		
		<!-- 미디어 -->
		<div class="mediaDiv">
			<br><br>
			<label class="subTitle">미디어</label><br>
			<label class="contents">등록된 사진이 없습니다.</label><br>
			<button class="addMediaBtn">추가하기</button>
		</div>
		
		<div class="profile2">
			<br><br>
		
			<!-- 서비스 키워드 -->
			<div class="serviceKeywordDiv">
				<label class="subTitle">서비스 키워드</label><br>
				<label class="contents">등록된 서비스 키워드가 없습니다.</label><br>
				<button class="addServiceKeywordBtn">추가하기</button>
			</div>
			
			<br>
			<!-- 트레이너 소개 -->
			<div class="introDiv">
				<label class="subTitle">트레이너 소개</label><br>
				<label class="contents">등록된 소개가 없습니다.</label><br>
				<button class="addIntroBtn">추가하기</button>
			</div>
			
			<br>
			<!-- 자격증 및 사업등록증 -->
			<div class="certificationDiv">
				<label class="subTitle">자격증 및 사업등록증</label><br>
				<label class="contents">등록된 자격증 및 사업등록증이 없습니다.</label><br>
				<button class="addCertificationBtn">추가하기</button>
			</div>
			
			<br><br>
			
		</div>
		
		<!-- 리뷰 -->
		<div class="reviewDiv">
			<br><br>
			<label class="subTitle">리뷰</label><br>
			<label class="contents">작성된 리뷰가 없습니다.</label><br>
		</div>
	
	
	
	</c:if>
	
	
	<!-- 작성한 프로필 있을 때 ----------------------------------------------------------------------------------------------- -->
	<c:if test="${ !empty profile }">
		
		<div class="noProfileDiv">
			<br>
			<label><i class="fa fa-check"></i> 작성한 프로필이 있을 때</label><br>
			<label>(작성한 프로필이 있을 때)</label>
		</div>
	
		<!-- 프로필 테이블 -->
		<div class="profile1">
			<div class="traineProfile">
				<table class="traineProfileTable" >
					<tr>
						<td rowspan="3" class="traineProfileTableTd1">
							<div class="profileImgDiv"><img class="profileImg" src="${ contextPath }/resources/images/profileImg3.PNG"></div>
						</td>
						<td class="traineProfileTableTd2"><br>
							<c:if test="${ empty profile.proTitle }">
								<label class="traineProfileTableTd2Label">${ sessionScope.loginUser.name } 트레이너님의 프로필</label>
							</c:if>
							<c:if test="${ !empty profile.proTitle }">
								<label class="traineProfileTableTd2Label">${ profile.proTitle }</label>
							</c:if>
						</td>
						<td></td>
					</tr>
					<tr>
						<td><br>
						<i class="fa fa-star"></i>&nbsp;&nbsp;평점 0&nbsp;&nbsp;l&nbsp;&nbsp;리뷰 0<br><br>
						<i class="fa fa-heart"></i>&nbsp;&nbsp;0</td>
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
		
		
		<!-- 미디어 null일 때 --------------------------------------------------------------------------------------------- -->
		<c:if test="${ empty profile.media }">
			<div class="mediaDiv">
				<br><br>
				<label class="subTitle">미디어</label><br>
				<label class="contents">등록된 사진이 없습니다.</label><br>
				<button class="addMediaBtn">추가하기</button>
			</div>
		</c:if>
		
		<!-- 미디어 null아닐 때 --------------------------------------------------------------------------------------------- -->
		<c:if test="${ !empty profile.media }">
			
		</c:if>
		
		<div class="profile2">
		
			<br><br>
			
			<!-- 서비스 키워드 null일 때 ------------------------------------------------------------------------------------------ -->
			<c:if test="${ empty profile.keyword }">
				<div class="serviceKeywordDiv">
					<label class="subTitle">서비스 키워드</label><br>
					<label class="contents">등록된 서비스 키워드가 없습니다.</label><br>
					<button class="addServiceKeywordBtn">추가하기</button>
				</div>
				<br>
			</c:if>
			
			<!-- 서비스 키워드 null아닐 때 ----------------------------------------------------------------------------------------- -->
			<c:if test="${ !empty profile.keyword }">
				<div class="serviceKeywordDiv">
					<label class="subTitle">서비스 키워드</label><br>
					<div class="keywordDiv">
						<span class="badge badge-pill badge-danger"> ${ profile.keyword } </span>&nbsp;
						<button class="keywordDeleteBtn"><i class="fa fa-times-circle"></i></button>
					</div>
					<button class="addServiceKeywordBtn">수정하기</button>
				</div>
				<br>
			</c:if>
			
			
			<!-- 트레이너 소개 null일 때 ------------------------------------------------------------------------------------------- -->
			<c:if test="${ empty profile.intro }">
				<div class="introDiv">
					<label class="subTitle">트레이너 소개</label><br>
					<label class="contents">등록된 소개가 없습니다.</label><br>
					<button class="addIntroBtn">추가하기</button>
				</div>
				<br>
			</c:if>
			
			<!-- 트레이너 소개 null아닐 때 ----------------------------------------------------------------------------------------- -->
			<c:if test="${ !empty profile.intro }">
				<div class="introDiv">
					<label class="subTitle">트레이너 소개</label><br>
					<label class="contents">${ profile.intro }</label><br>
					<button class="addIntroBtn">수정하기</button>
				</div>
				<br>
			</c:if>
			
			
			<!-- 자격증 및 사업등록증 null일 때 -------------------------------------------------------------------------------------- -->
			<c:if test="${ empty profile.certificate }">
				<div class="certificationDiv">
					<label class="subTitle">자격증 및 사업등록증</label><br>
					<label class="contents">등록된 자격증 및 사업등록증이 없습니다.</label><br>
					<button class="addCertificationBtn">추가하기</button>
				</div>
				<br><br>
			</c:if>
			
			<!-- 자격증 및 사업등록증 null아닐 때 -------------------------------------------------------------------------------------- -->
			<c:if test="${ !empty profile.certificate }">
				<div class="certificationDiv">
					<label class="subTitle">자격증 및 사업등록증</label><br>
					<label class="contents">${ profile.certificate }</label><br>
					<button class="addCertificationBtn">수정하기</button>
				</div>
				<br><br>
			</c:if>
			
		</div>
		
		<!-- 리뷰 -->
		<div class="reviewDiv">
			<br><br>
			<label class="subTitle">리뷰</label><br>
			<label class="contents">작성된 리뷰가 없습니다.</label><br>
		</div>
		
	</c:if>
	
	<!-- footer 영역 ----------------------------------------------------------------------------------------------------- -->
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