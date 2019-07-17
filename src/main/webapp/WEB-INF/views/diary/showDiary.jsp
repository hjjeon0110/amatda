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

.diaryBtn{
	color:white;
	background:#ff0066;
	border: 1px solid #ff0066;
	border-radius: 5px;
}

.filebox label {
  display: inline-block;
  padding: .5em .75em;
  color: #fff;
  font-size: inherit;
  line-height: normal;
  vertical-align: middle;
  background-color: #5cb85c;
  cursor: pointer;
  border: 1px solid #4cae4c;
  border-radius: .25em;
  -webkit-transition: background-color 0.2s;
  transition: background-color 0.2s;
}

.filebox label:hover {
  background-color: #ff0066;
}

.filebox label:active {
  background-color: #367c36;
}

.filebox input[type="file"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
}
.filebox input[type="submit"] {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  border: 0;
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
						<td id="font">제 목 <input type="text" class="form-control" size="40" name="bTitle" autofocus>
						</td>

					</tr>
					<tr></tr>
					<tr>
						<td id="font">사진을 등록하세요 <img id="diaryImgFile" src="${ contextPath }/resources/images/camera.JPG" width="500"	height="400"> 
						<!-- <input type="file" name="diaryImgFile" class="diaryBtn" onchange="loaddiaryImgFile(this)" /> -->
						<div class="filebox">
  <label for="ex_file">업로드</label>
  <input type="file" id="ex_file" name="diaryImgFile" onchange="loaddiaryImgFile(this)">
</div>
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
						<!-- <td><input type="submit" class="diaryBtn" value="등 록" /></td> -->
						<td>
							<div class="filebox">
  <label for="ex_file1">등 록</label>
  <input type="submit" id="ex_file1" value="등 록">
</div>
						</td>
					</tr>
				</table>
			</form>
			<br />
			
		</div>
	</div>
	<br />
	<br />

	<script>
		

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