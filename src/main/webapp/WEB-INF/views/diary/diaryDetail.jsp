<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	#imgArea1{
		width:500px;
		height:400px;
		margin-bottom:20px;
		border:2px solid red;
	}
	.Content textarea{
		border:2px solid black;
	}
</style>
<title>프라이빗 다이어리 상세페이지</title>
</head>
<body>
	<h1 align="center">Private Diary</h1>
	
	<div class="imgArea" align="center">
		<div id="imgArea1">			
			<img src="${ contextPath }/resources/images/hero_4.jpg" id="img1" />
		</div>
	</div>	
	
	<div class="Content">
	<form action="#" method="post">
		<table align="center" id="dContent">
			<tr>
			<td><textarea name="dContent" id="" cols="76" rows="20" placeholder="자유롭게 작성하세요"></textarea></td>			
			</tr>			
		</table>
		<div align="center" class="btnArea1">
			<button type="submit">수정</button>
		</div>
	</form>
		<br /><br />
		
	<form action="#" method="post">	
		<table align="center" id="repContent">
			<tr>
			<td><textarea name="repContent" id="" cols="76" rows="5" placeholder="트레이너만 작성가능한 댓글"></textarea></td>			
			</tr>
		</table>
		<!-- <div align="center" class="btnArea2">
			<button type="submit">수정</button>
		</div> -->
	</form>
	</div>
		

</body>
</html>