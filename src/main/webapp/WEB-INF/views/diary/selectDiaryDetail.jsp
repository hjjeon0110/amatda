<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 상세</title>
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

#titleImgArea {
	width: 506px;
	height: 406px;
	border: 3px solid #ff0066;
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
	height: 35px;
}
</style>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<div class="outer">
		<br>
		<h1 id="fontEng" align="center">Diary Detail</h1>
		<br />
		<br />
		<br />
		<div class="tableArea">
			<form action="" method="post" encType="multipart/form-data">
				<table>
					<tr>
						<td id="font">제 목</td>
						<td colspan="3"><input type="text" size="40" name="title"
							value="다이어트 5일째! 푸쉬업!"></td>
					</tr>
					<tr>
						<!-- <td id="font">등록된 이미지</td> -->
					</tr>
					<tr>
						<td colspan="3">
							<div id="titleImgArea">
								<img src="${ contextPath }/resources/images/pushup.JPG"
									id="titleImg" width="500" height="400">
							</div>
						</td>
					</tr>
					<!-- <tr>
						<td id="font">내용</td>
						<td></td>
					</tr> -->
					<tr>
					</tr>

					<tr>
						<td colspan="4"><textarea name="content" cols="30" rows="15"
								id="dContent">
							백만 스물하나, 백만 스물둘....
							</textarea></td>
					</tr>
				</table>
				<div align="center">
					<!-- <button type="reset">취소하기</button> -->
					<button type="submit">수정하기</button>
				</div>
			</form>
			<br />
			<div class="replyArea">
				<div class="replyWriterArea">
					<table>
						<tr>
							<td><textarea id="rContent" cols="60" rows="3">
							자세 아주 좋습니다! 화이팅!
							</textarea></td>
						</tr>
						<!-- <tr>
							<td align="center"><button id="replyBtn" >등록</button></td>							
						</tr> -->
					</table>
				</div>
			</div>
		</div>
	</div>
	<br />
	<br />

	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>