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
							<!-- 프로필 사진이 null일 때 ----------------------------------------------------------------------------------------------------- -->
							<c:if test="${ empty attachment }">
								<div class="profileImgDiv"><img id="profileImg" src="${contextPath}/resources/images/profileImg3.PNG"></div>
								<button class="modifyProfileImgBtn">사진 추가</button>
							    <form action="insertProfileImg.tr" method="post" enctype="multipart/form-data">
							    	<input type="file" class="modifyProfileImg" name="profileImgFile" onchange="loadProfileImg(this)">
							    	<input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }"/>
							        <input type="submit" class="modifyProfileImgSubmit" />
							    </form>
							</c:if>
						    
						    <!-- 프로필 사진이 null아닐 때 ---------------------------------------------------------------------------------------------------- -->
						    <c:if test="${ !empty attachment }">
							    <div class="profileImgDiv"><img id="profileImg" src="${contextPath}/resources/uploadFiles/${ pic }"></div>
								<button class="modifyProfileImgBtn">사진 수정</button>
							    <form action="modifyProfileImg.tr" method="post" enctype="multipart/form-data">
							    	<input type="file" class="modifyProfileImg" name="profileImgFile" onchange="loadProfileImg(this)">
							    	<input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }"/>
							        <input type="submit" class="modifyProfileImgSubmit" />
							    </form>
						    </c:if>
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
							<!-- 프로필 사진이 null일 때 ----------------------------------------------------------------------------------------------------- -->
							<c:if test="${ empty attachment }">
								<div class="profileImgDiv"><img id="profileImg" src="${contextPath}/resources/images/profileImg3.PNG"></div>
								<button class="modifyProfileImgBtn">사진 추가</button>
							    <form action="insertProfileImg.tr" method="post" enctype="multipart/form-data">
							    	<input type="file" class="modifyProfileImg" name="profileImgFile" onchange="loadProfileImg(this)">
							    	<input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }"/>
							        <input type="submit" class="modifyProfileImgSubmit" />
							    </form>
							</c:if>
						    
						    <!-- 프로필 사진이 null아닐 때 ---------------------------------------------------------------------------------------------------- -->
						    <c:if test="${ !empty attachment }">
							    <div class="profileImgDiv"><img id="profileImg" src="${contextPath}/resources/uploadFiles/${ pic }"></div>
								<button class="modifyProfileImgBtn">사진 수정</button>
							    <form action="modifyProfileImg.tr" method="post" enctype="multipart/form-data">
							    	<input type="file" class="modifyProfileImg" name="profileImgFile" onchange="loadProfileImg(this)">
							    	<input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }"/>
							        <input type="submit" class="modifyProfileImgSubmit" />
							    </form>
						    </c:if>
						    
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
	
	
	<!-- 미디어 사진 등록 ----------------------------------------------------------------------------------------------------- -->
	<form action="insertMediaImg.tr" method="post" enctype="multipart/form-data">
    	<input type="file" class="insertMediaImg" name="insertMediaImg"/>
    	<input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }"/>
        <input type="submit" class="insertMediaImgSubmit" />
    </form>
	
	
	<!-- Modal ---------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<table class="modalMenubar">
						<thead>
							<tr>
								<td class="modalMenubarTd1">내 정보</td>
								<td class="modalMenubarTd1">미디어</td>
								<td class="modalMenubarTd1">키워드</td>
								<td class="modalMenubarTd1">소개</td>
								<td class="modalMenubarTd1">자격증</td>
							</tr>
						</thead>
					</table>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="modalBody">
					
						

					</div>
					
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary" id="modifyProfileBtn" value="modifyProfileBtn">수정하기</button>
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
		
		// 프로필 사진 추가 ------------------------------------------------------------------------------------
		$(".modifyProfileImgBtn").hide();
		
		$(".profileImgDiv").mouseenter(function(){
			$(".modifyProfileImgBtn").show();
		}).mouseout(function() {
			$(".modifyProfileImgBtn").hide();
		});  
		
		$(".modifyProfileImgBtn").mouseenter(function() {
			$(".modifyProfileImgBtn").show();
		});
		
		$(".modifyProfileImg").hide();
		$(".modifyProfileImgSubmit").hide();
		
		$(".modifyProfileImgBtn").click(function() {
			$(".modifyProfileImg").click();
		});
		
		$(".modifyProfileImg").on("change", function() {
			$(".modifyProfileImgSubmit").click();
		});
		
		function loadProfileImg(value) {
			if(value.files && value.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#profileImg").attr("src", e.target.result); 
				}
				reader.readAsDataURL(value.files[0]);
			}
		} 
		
		
		// 모달 메뉴 1 - 내 정보 수정하기 -------------------------------------------------------------------------------
		$(".modalMenubarTd1").eq(0).click(function() {
			$(".modalBody").children().remove();
			modalMenu1();
		});
		
		function modalMenu1() {
			$($(".modalMenubarTd1").eq(0)).css({'background':'#ff0066', 'color':'white'});
			$($(".modalMenubarTd1").eq(1)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(2)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(3)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(4)).css({'background':'#ffe6f3', 'color':'black'});
			
			$("#modifyProfileBtn").attr("value", "modalMenu1");
			
			var proTitle = "${ profile.proTitle }";
			var lineProfile = "${ profile.lineProfile }";
			
			$br = $("<br>");
			$proTitle = $("<label class='modalMenu'>").text("프로필 제목");
			$proTitleInput = $("<input class='form-control' id='proTitleInput' placeholder='프로필 제목을 입력해주세요'>").val(proTitle);
			$LineProfile = $("<label class='modalMenu'>").text("한 줄 프로필");
			$LineProfileInput = $("<input class='form-control' id='LineProfileInput' placeholder='트레이너님을 소개할 수 있는 간단한 자기소개를 적어주세요'>").val(lineProfile);
			
			$(".modalBody").append($proTitle);
			$(".modalBody").append($proTitleInput);
			$(".modalBody").append($br);
			$(".modalBody").append($LineProfile);
			$(".modalBody").append($LineProfileInput);
		}
		
		
		
		// 모달 메뉴 2 - 미디어 수정하기 -------------------------------------------------------------------------------
		$(".modalMenubarTd1").eq(1).click(function() {
			$(".modalBody").children().remove();
			modalMenu2();
		});
		
		$(".insertMediaImg").hide();
		$(".insertMediaImgSubmit").hide();
		
		function modalMenu2() {
			$($(".modalMenubarTd1").eq(0)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(1)).css({'background':'#ff0066', 'color':'white'});
			$($(".modalMenubarTd1").eq(2)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(3)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(4)).css({'background':'#ffe6f3', 'color':'black'});
			
			$("#modifyProfileBtn").attr("value", "modalMenu2");
			
			$addBtnDiv = $("<div class='addBtnDiv'>");
			$addMediaImgBtn = $("<button class='addMediaImgBtn'>").text("사진 업로드");
			$nbsp = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
			$addMediaVideoBtn = $("<button class='addMediaVideoBtn'>").text("동영상 등록");
			
			$(".modalBody").append($addBtnDiv);
			$addBtnDiv.append($addMediaImgBtn);
			$addMediaImgBtn.after($nbsp);
			$addBtnDiv.append($addMediaVideoBtn);
			
			$(".addMediaImgBtn").click(function() {
				$(".insertMediaImg").click();
			});
			
			$(".insertMediaImg").on("change", function() {
				loadMediaImg(this);
				$br = $("<br>");
				$addMediaImgDiv = $("<div class='addMediaImgDiv'>");
				$addMediaImgTable = $("<table class='addMediaImgTable'>");
				$addMediaImgTableTr = $("<tr>");
				$addMediaImgTableTd1 = $("<td>");
				$addMediaImgTableTdDiv = $("<div>");
				$addMediaImgTableTd1.css({"width":"150px", "height":"150px"});
				$addMediaImgTableTdDiv.css({"width":"150px", "height":"150px", "overflow":"hidden"});
				$mediaImg = $("<img src='' class='mediaImg'>");
				$mediaImg.css({"width":"150px", "height":"auto", "vertical-align":"middle", "border-radius":"5px"});
				
				$(".modalBody").append($br);
				$(".modalBody").append($addMediaImgDiv);
				$addMediaImgDiv.append($addMediaImgTable);
				$addMediaImgTable.append($addMediaImgTableTr);
				$addMediaImgTableTr.append($addMediaImgTableTd1);
				$addMediaImgTableTd1.append($addMediaImgTableTdDiv);
				$addMediaImgTableTdDiv.append($mediaImg);
				
				$(".insertMediaImgSubmit").click();
			});
			
			function loadMediaImg(value) {
				if(value.files && value.files[0]) {
					var reader = new FileReader();
					reader.onload = function(e) {
						$mediaImg.attr("src", e.target.result); 
					}
					reader.readAsDataURL(value.files[0]);
				}
			} 

		
		}
		
		
		// 모달 메뉴 3 - 서비스 키워드 수정하기 -------------------------------------------------------------------------------
		$(".modalMenubarTd1").eq(2).click(function() {
			$(".modalBody").children().remove();
			modalMenu3();
		});
		
		function modalMenu3() {
			$($(".modalMenubarTd1").eq(0)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(1)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(2)).css({'background':'#ff0066', 'color':'white'});
			$($(".modalMenubarTd1").eq(3)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(4)).css({'background':'#ffe6f3', 'color':'black'});
			
			$("#modifyProfileBtn").attr("value", "modalMenu3");
			
		}
		
		
		// 모달 메뉴 4 - 트레이너 소개 수정하기 -------------------------------------------------------------------------------
		$(".modalMenubarTd1").eq(3).click(function() {
			$(".modalBody").children().remove();
			modalMenu4();
		});
		
		function modalMenu4() {
			$($(".modalMenubarTd1").eq(0)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(1)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(2)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(3)).css({'background':'#ff0066', 'color':'white'});
			$($(".modalMenubarTd1").eq(4)).css({'background':'#ffe6f3', 'color':'black'});
			
			$("#modifyProfileBtn").attr("value", "modalMenu4");
			
		}
		
		
		// 모달 메뉴 5 - 자격증 및 사업등록증 수정하기 -------------------------------------------------------------------------------
		$(".modalMenubarTd1").eq(4).click(function() {
			$(".modalBody").children().remove();
			modalMenu5();
		});
		
		function modalMenu5() {
			$($(".modalMenubarTd1").eq(0)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(1)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(2)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(3)).css({'background':'#ffe6f3', 'color':'black'});
			$($(".modalMenubarTd1").eq(4)).css({'background':'#ff0066', 'color':'white'});
			
			$("#modifyProfileBtn").attr("value", "modalMenu5");
			
		}
		
		
		// 모달 메뉴 수정하기 버튼 클릭 시 ----------------------------------------------------------------------------------
		$("#modifyProfileBtn").click(function() {
			
			if($("#modifyProfileBtn").val() == "modalMenu1") {
								
				var mno = ${ sessionScope.loginUser.mno };
				var proTitle = $("#proTitleInput").val();
				var lineProfile = $("#LineProfileInput").val();
				
				$.ajax({
					url:"modifyProfile1.tr",
					data:{mno:mno, proTitle:proTitle, lineProfile:lineProfile},
					complete:function(data) {
						location.reload();
					}
				})
				
			}else if($("#modifyProfileBtn").val() == "modalMenu2") {
				$.ajax({
					url:"modifyProfile2.tr",
					data:{mno:mno},
					success:function(data) {
						alert("2수정완료");
					}
				})
				
			}else if($("#modifyProfileBtn").val() == "modalMenu3") {
				$.ajax({
					url:"modifyProfile3.tr",
					data:{mno:mno},
					success:function(data) {
						alert("3수정완료");
					}
				})	
				
			}else if($("#modifyProfileBtn").val() == "modalMenu4") {
				$.ajax({
					url:"modifyProfile4.tr",
					data:{mno:mno},
					success:function(data) {
						alert("4수정완료");
					}
				})	
				
			}else if($("#modifyProfileBtn").val() == "modalMenu5") {
				$.ajax({
					url:"modifyProfile5.tr",
					data:{mno:mno},
					success:function(data) {
						alert("5수정완료");
					}
				})
			}
				
		});

		
	</script>
</body>
</html>