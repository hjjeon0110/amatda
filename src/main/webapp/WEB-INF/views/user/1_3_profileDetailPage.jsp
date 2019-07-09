<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/1_3_profileDetailPage.css">
</head>
<body>

	
	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	
	<!-- 프로필 테이블 -->
		<div class="profile1">
			<div class="traineProfile">
				<table class="traineProfileTable" >
					<tr>
						<td rowspan="3" class="traineProfileTableTd1">
							<!-- 프로필 사진이 null일 때 ----------------------------------------------------------------------------------------------------- -->
							<c:if test="${ empty profileImgAttachment }">
								<div class="profileImgDiv"><img id="profileImg" src="${contextPath}/resources/images/profileImg3.PNG"></div>
							</c:if>
						    
						    <!-- 프로필 사진이 null아닐 때 --------------------------------------------------------------------------------------------------- -->
						    <c:if test="${ !empty profileImgAttachment }">
							    <div class="profileImgDiv"><img id="profileImg" src="${contextPath}/resources/uploadFiles/${ profileImgAttachmentSrc }"></div>
						    </c:if>
						    
						</td>
						<td class="traineProfileTableTd2"><br>
							<c:if test="${ empty profile.proTitle }">
								<label class="traineProfileTableTd2Label">${ tname } 트레이너님의 프로필</label>
							</c:if>
							<c:if test="${ !empty profile.proTitle }">
								<label class="traineProfileTableTd2Label">${ profile.proTitle }</label>
							</c:if>
						</td>
						<td style="text-align:center;">
							<br>
							<c:if test="${ empty selectOneMyTrainer }">
								<button type="button" class="btn btn-secondary" id="insertMyTrainer" data-toggle="tooltip" data-placement="bottom" title="이 트레이너에게 PT를 받고 싶으면, 서비스를 요청해보세요."> MY트레이너로 등록 </button>
							</c:if>
							<c:if test="${ !empty selectOneMyTrainer }">
								<button type="button" class="btn btn-secondary" id="deleteMyTrainer" data-toggle="tooltip" data-placement="bottom" title="이미 마이트레이너 리스트에 추가된 트레이너 입니다."> MY트레이너 등록 취소 </button>
							</c:if>
						</td>
					</tr>
					<tr>
						<td><br>
						<i class="fa fa-star"></i>&nbsp;&nbsp;평점 0&nbsp;&nbsp;l&nbsp;&nbsp;리뷰 0<br><br>
						<i class="fa fa-heart"></i>&nbsp;&nbsp;0</td>
						<td class="traineProfileTableTd1">
							<br><br><br>
						</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
					</tr>
				</table>
			</div>
		</div>
		
		
		<!-- 미디어 null일 때 ----------------------------------------------------------------------------------------------------------------------------- -->
		<c:if test="${ empty mediaAttachment }">
			<div class="mediaDiv">
				<br><br>
				<label class="subTitle">미디어</label><br>
				<label class="contents">등록된 사진이 없습니다.</label>
			</div>
		</c:if>
		
		<!-- 미디어 null아닐 때 ---------------------------------------------------------------------------------------------------------------------------- -->
		<c:if test="${ !empty mediaAttachment }">
			<div class="mediaDivNotNull">
				<br><br>
				<label class="subTitle">미디어</label><br>
				<br><br>
				<div class="mediaImgDiv">
					<c:forEach var="i" begin="0" end="${fn:length(mediaAttachment)-1}" varStatus="st">
						<c:set var="src" value="${ mediaAttachment[i].modiName}${ mediaAttachment[i].extension }"></c:set>
						<div class="mediaImgListDiv">		
							<img class="${ mediaAttachment[i].modiName}" id="mediaImgList" src="${contextPath}/resources/uploadFiles/${src}">
						</div>
					</c:forEach>
				</div>
				<br><br>
				
			</div>
			
		</c:if>
		
		<div class="profile2">
		
			<br><br>
			
			<!-- 서비스 키워드 null일 때 --------------------------------------------------------------------------------------------------------------------- -->
			<c:if test="${ empty profile.keyword }">
				<div class="serviceKeywordDiv">
					<label class="subTitle">서비스 키워드</label><br>
					<label class="contents">등록된 서비스 키워드가 없습니다.</label><br>
				</div>
				<br>
			</c:if>
			
			<!-- 서비스 키워드 null아닐 때 ------------------------------------------------------------------------------------------------------------------- -->
			<c:if test="${ !empty profile.keyword }">
				<div class="serviceKeywordDivNotNull">
					<label class="subTitle">서비스 키워드</label><br>
					<div class="keywordDiv">
					
						<c:set var="keyword" value="${ profile.keyword }"/>
						<c:set var="keywordArr" value="${fn:split(keyword, '#')}"/>
						
						<c:forEach items="${keywordArr}" varStatus="keywordArrsST">
							<span class="badge badge-pill badge-danger"> #${keywordArr[keywordArrsST.index]}</span>&nbsp;&nbsp;
							<!-- <button class="keywordDeleteBtn"><i class="fa fa-times-circle"></i></button>&nbsp;&nbsp; -->
						</c:forEach>
											
					</div>
				</div>
				<br>
			</c:if>
			
			
			<!-- 트레이너 소개 null일 때 --------------------------------------------------------------------------------------------------------------------- -->
			<c:if test="${ empty profile.intro }">
				<div class="introDiv">
					<label class="subTitle">트레이너 소개</label><br>
					<label class="contents">등록된 소개가 없습니다.</label><br>
				</div>
				<br>
			</c:if>
			
			<!-- 트레이너 소개 null아닐 때 ------------------------------------------------------------------------------------------------------------------- -->
			<c:if test="${ !empty profile.intro }">
				<div class="introDivNotNull">
					<label class="subTitle">트레이너 소개</label><br>
					<label class="contents">${ profile.intro }</label><br>
				</div>
				<br>
			</c:if>
			
			
			<!-- 자격증 및 사업등록증 null일 때 ---------------------------------------------------------------------------------------------------------------- -->
			<c:if test="${ empty certificationAttachment }">
				<div class="certificationDiv">
					<label class="subTitle">자격증 및 사업등록증</label><br>
					<label class="contents">등록된 자격증 및 사업등록증이 없습니다.</label><br>
				</div>
				<br><br>
			</c:if>
			
			<!-- 자격증 및 사업등록증 null아닐 때 --------------------------------------------------------------------------------------------------------------- -->
			<c:if test="${ !empty certificationAttachment }">
				<div class="certificationDiv">
					<label class="subTitle">자격증 및 사업등록증</label>
					<br><br>
					<c:forEach var="i" begin="0" end="${fn:length(certificationAttachment)-1}">
						<c:set var="src" value="${ certificationAttachment[i].modiName}${ certificationAttachment[i].extension }"></c:set>
						<div class="certificationImgListDiv">	
							<img class="${ certificationAttachment[i].modiName}" id="certificationImgList" src="${contextPath}/resources/uploadFiles/${src}">
						</div>
					</c:forEach>
					<br>
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
	
	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	


	<script>

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
		
		
		$(function () {
			  $('[data-toggle="tooltip"]').tooltip();
		});
		
		
		$("#insertMyTrainer").click(function() {
			var mno = ${ sessionScope.loginUser.mno };
			var tno = ${ tno };
			
			location.href="insertMyTrainer.us?mno=" + mno + "&tno=" + tno;
			
		});
		
		$("#deleteMyTrainer").click(function() {
			var mno = ${ sessionScope.loginUser.mno };
			var tno = ${ tno };
			
			location.href="deleteMyTrainer.us?mno=" + mno + "&tno=" + tno;
		});

	</script>

</body>
</html>