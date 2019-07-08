<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	background-size: 100% 1500px;
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"></jsp:include>


	<div class="outer">
		<br>
		<h1 id="fontEng" align="center">Diary Insert</h1>
		<br /> <br /> <br />
		<div class="tableArea">
			<form action="insert.di" name="di" onsubmit="return check()" method="post" encType="multipart/form-data">
				<input type="hidden" name="mNo"	value="${ sessionScope.loginUser.mno }" />
				<table>
					<tr>
						<td id="font">제 목 <input type="text" size="40" name="bTitle" autofocus>
						</td>

					</tr>
					<tr></tr>
					<tr>
						<td id="font">사진을 등록하세요 <img id="diaryImgFile" src="${ contextPath }/resources/images/camera.JPG" width="500"	height="400"> 
						<input type="file" name="diaryImgFile" onchange="loaddiaryImgFile(this)" />
						</td>
					</tr>
					<tr>
						<td id="font">내용</td>
						<td></td>
					</tr>
					<tr>
						<td colspan="4">
						<textarea name="bContent" cols="60" rows="15" placeholder="자유롭게 작성하세요" id="bContent"></textarea>
						</td>
					</tr>
					<tr align="center">
						<td><input type="submit" value="등 록" /></td>
					</tr>
				</table>
			</form>
			<br />
			<div class="replyArea">
				<div class="replyWriterArea">
					<table>
						<tr>
							<td>
							<textarea id="rContent" cols="60" rows="3" placeholder="트레이너만 입력하세요"></textarea>
							</td>
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
		/* $(".modifydiaryImgBtn").hide();
		
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
		}); */

		//이미지 첨부
		function loaddiaryImgFile(value) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#diaryImgFile").attr("src", e.target.result);
				}
				reader.readAsDataURL(value.files[0]);

			}
		}
		
		//이미지 미첨부 alert
		function check(){
			if (di.diaryImgFile.value == ""){
				alert("사진을 등록해 주세요");
				return false;
			}else{
				return true;
			}
		}
	</script>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>