<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 작성</title>
<style>
	.outer {
		width:1000px;
		height:1200px;
		background:#ffe6f3;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
	
	.tableArea {
		width:450px;
		height:350px;
		margin:0 auto;
		border-spacing:10px;
	}
	#titleImgArea {
		width:500px;
		height:400px;
		border:1px solid #ff0066;		
	}
	textarea{
		border:1px solid #ff0066;
	}
	#replyContent{
		width:450px;
	}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	<div class="outer">
		<br>
		
		<div class="tableArea">
			<form action="" method="post">
				<table>
					<!-- <tr>
						<td>작성일</td>
						<td><input type="date" name="date"></td>
					</tr> -->
					<tr>
						<td>제 목</td>
						<td colspan="3">
							<input type="text" size="40" name="title" autofocus>
						</td>
					</tr>
					<tr>
						<td>이미지</td>
					</tr>
					<tr>												
						<td colspan="3">
							<div id="titleImgArea">
								<img id="titleImg" width="500" height="400">
							</div>
						</td>
					</tr>
					
					<!-- <tr>
						<td>제목</td>
						<td colspan="3">
							<input type="text" size="30" name="title" class="form-control">
						</td>
					</tr> -->
									
					
					
					<tr>
						<td>내용</td>
						<td></td>
					</tr>
					
					<tr>
						<td colspan="4">
							<textarea name="content" cols="60" rows="15" ></textarea>
						</td>
					</tr>
				</table>
				<br>
				<div align="center">
					<button type="reset">취소하기</button>
					<button type="submit">등록하기</button>
				</div>
			</form>
			
			<div class="replyArea">
		<div class="replyWriterArea">
			<table align="center">
				<tr>
				
				<td>
					<textarea id="replyContent" cols="80" rows="3"></textarea>
				</td>
				<td><button id="addReply" class="btn" id="btn"><img src="${ contextPath }/resources/images/reply.JPG" class="btn-img"/></button></td>
				</tr>
			</table>
		</div>		
		<div id="replySelectArea">
			<table id="replySelectTable" border="1" align="center"></table>
		</div>
	</div>
		</div>
		
	</div>
	
	
	
	
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
</body>
</html>