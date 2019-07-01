<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 작성</title>
<style>
.outer {
	width: 1000px;
	height: 1400px;
	background-image: url(${ contextPath }/resources/images/background1.jpg);
	background-repeat: no-repeat;
	background-position: top center;
	background-size: 100% 1400px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px;
}

.tableArea {
	width: 450px;
	height: 350px;
	margin: 0 auto;
	border-spacing: 10px;
}



table #dContent {
	width: 100%;
	height: 350px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 2px #ff0066;
	border-radius: 5px;
	resize: both;
}

#font {
	font-family: 'Noto Sans KR', sans-serif;
}

#fontEng {
	font-family: 'Montserrat', sans-serif;
}

table #rContent {
	width: 510px;
	height: 100px;
	padding: 10px;
	box-sizing: border-box;
	border: solid 2px yellowgreen;
	border-radius: 5px;
	resize: both;
}

tr {
	height: 25px;
}
</style>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	
		
			
				<%-- 
					<tr>
						<td rowspan="3" class="diaryTableTd1">
							<!-- 프로필 사진이 null일 때 ----------------------------------------------------------------------------------------------------- -->
							<c:if test="${ empty attachment }">
								<div class="diaryImgDiv"><img id="diaryImg" src="${contextPath}/resources/images/profileImg3.PNG"></div>
								<button class="modifydiaryImgBtn">사진 추가</button>
							    <form action="insertDiaryImg.di" method="post" enctype="multipart/form-data">
							    	<input type="file" class="modifydiaryImg" name="diaryImgFile" onchange="loaddiaryImg(this)">
							    	<input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }"/>
							        <input type="submit" class="modifydiaryImgSubmit" />
							    </form>
							</c:if>
						    
						    <!-- 프로필 사진이 null아닐 때 ---------------------------------------------------------------------------------------------------- -->
						    <c:if test="${ !empty attachment }">
						    
						    
							    <div class="diaryImgDiv"><img id="diaryImg" src="${contextPath}/resources/uploadFiles/${ pic }"></div>
								<button class="modifydiaryImgBtn">사진 수정</button>
							    <form action="modifyDiaryImg.di" method="post" enctype="multipart/form-data">
							    	<input type="file" class="modifydiaryImg" name="diaryImgFile" onchange="loaddiaryImg(this)">
							    	<input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }"/>
							        <input type="submit" class="modifydiaryImgSubmit" />
							    </form>
							    
							    
						    </c:if>
						</td>
						
					</tr>
					
					 --%>
				
			
		

	<div class="outer">
		<br>
		<h1 id="fontEng" align="center">Diary Insert</h1>
		<br />
		<br />
		<br />
		<div class="tableArea">
			<form action="insert.di" method="post" encType="multipart/form-data">
			<!-- <form action="insert.di" method="post"> -->
			<input type="hidden" name="mNo" value="${ sessionScope.loginUser.mno }" />
				<table>
					<tr>
						<td id="font">제 목</td>
						<td colspan="3"><input type="text" size="40" name="bTitle"
							autofocus></td>
					</tr>
					<tr></tr>
					<tr>
						<td id="font">사진을 등록하세요
							<input type="file" name="diaryImgFile" />
						</td>
					</tr>
					<tr>
						<td colspan="3">
							<div id="titleImgArea">
								<img src="${ contextPath }/resources/images/camera.JPG"
									id="titleImg" width="500" height="400">
							</div>
						</td>
					</tr>
					<tr></tr>
					<tr>
						<td id="font">내용</td>
						<td></td>
					</tr>
					<tr>
						<td colspan="4"><textarea name="bContent" cols="30" rows="15"
								placeholder="자유롭게 작성하세요" id="bContent"></textarea></td>
					</tr>
				<tr align="center">
					<!-- <button type="reset">취소하기</button> -->
					<!-- <td><button type="submit">등록</button></td> -->
					<td><input type="submit" value="등 록"/></td>
			</tr>
				</table>
			</form>
			<br />
			<div class="replyArea">
				<div class="replyWriterArea">
					<table>
						<tr>
							<td><textarea id="rContent" cols="60" rows="3"
									placeholder="트레이너만 입력하세요"></textarea></td>
						</tr>
						<tr>
							<td align="center"><button id="replyBtn">등록</button></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />
	
	<script>
	$(".modifydiaryImgBtn").hide();
	
	$(".diaryImgDiv").mouseenter(function(){
		$(".modifydiaryImgBtn").show();
	}).mouseout(function() {
		$(".modifydiaryImgBtn").hide();
	});  
	
	$(".modifydiaryImgBtn").mouseenter(function() {
		$(".modifydiaryImgBtn").show();
	});
	
	$(".modifydiaryImg").hide();
	$(".modifydiaryImgSubmit").hide();
	
	$(".modifydiaryImgBtn").click(function() {
		
		$(".modifydiaryImg").click();
		//$(".modifydiaryImgSubmit").click();
	});
	
	$(".modifydiaryImg").on("change", function() {
		$(".modifydiaryImgSubmit").click();
	});
	
	function loaddiaryImg(value) {
		if(value.files && value.files[0]) {
			var reader = new FileReader();
			reader.onload = function(e) {
				$("#diaryImg").attr("src", e.target.result); 
			}
			reader.readAsDataURL(value.files[0]);
			
		}
	} 
	</script>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>