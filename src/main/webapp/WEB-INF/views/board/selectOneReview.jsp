<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.outerform {
		width:1100px;
		height:2000px;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
		align:center;
	}
	.containaer{
	margin-left:15%;
	margin-right:150px;
	margin-top:50px;
	width:900px;
	height:800px;
	}
	table {
		border:1px solid black;
	}
	.insertArea {
		width:500px;
		height:550px;
		margin:0 auto;
	}
	.btnArea {
		width:250px;
		margin:0 auto;
	}
	#titleImgArea {
		width:300px;
		height:250px;
		/* border:2px dashed darkgray; */
		text-align:center;
		 display:table-cell; 
		vertical-align:middle;
	}
	#contentImgArea1, #contentImgArea2, #contentImgArea3 {
		width:150px;
		height:100px;
		border:2px dashed darkgray;
		text-align:center;
		display:table-cell;
		vertical-align:middle;
	}
	#titleImgArea:hover, #contentImgArea11:hover,
	#contentImgArea2:hover, #contentImgArea3:hover {
		cursor:pointer;
	}
	#btn1Area{
		margin-right:2%;
		float:left;
	}
	.btnArea > button{
	padding: 10px 20px;
	margin-right: 20px;
	border-radius : 5px; 
	background-color:#ff0066; color:white; font-weight:bold; border:none;
	}
	.testImg {
	width:100%;
	}
	tbody th{
	background-color:#ffe6f3;
	}
	.btnArea{
	align:center;
	display:inline;
	}
	.secondTableLine{
	background:#ff0066; 
	width:800px; 
	height:2px; 
	margin-bottom:15px;
	align:center;
	}
	.contentTitle{
	align:center;
	}
	.outer h3{
	font-weight: bold;
	}
	.likecount {
   width: 60px;
   height: 30px;
   border: 1px solid #ff0066;
   border-radius: 10px;
   align:center;
   margin-left:700px;
	}
	#likeicon{
		width:30%;
		float:right;
	}
	#reviewPic1{
	width:50%;
	}
	#reviewPic2{
	width:60%;
	}
	#replybox{
	width:500px;
	height:100px;
	}
	
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/> 
	<img class="testImg" src="${ contextPath }/resources/images/sstestMain.jpg">
	
	<div class="outerform" align="center"> 	
		<br>
		<div class="contentTitle">
		<h2>아맞다 후기리뷰</h2>
		<br><br>
		<h3><b>-30kg 하기까지..</b></h3>
		<p>다이어트는 더이상 스트레스가 아니예요.</p>
		<p>by 딸기는 맛있어</p>
		
		<div class="secondTableLine"></div>
			<div class="likecount">
				<a href ="selectOneReview.bo"><h6>1111<img id="likeicon"src="${ contextPath }/resources/images/likeicon.png"></h6></a>
			</div>
		</div>
			
			<div class="reviewPic">
		<img id="reviewPic1"src="${ contextPath }/resources/images/selectOneReview.JPG">
		<br><br>
		<img id="reviewPic1"src="${ contextPath }/resources/images/selectOneReview2.JPG">
		</div><br>
			
		 <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal">수정</button>
		 <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal">삭제</button>
		 <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal" onclick="location.href='selectReview.bo'"> 목록</button>
		<br><br><br><br>
		<input type="text" id="replybox" placeholder="내용을 입력하세요.">
		<button type="button" class="btn btn-primary" data-toggle="modal" 
        data-target="#my80sizeCenterModal">작성</button>
	</div>
	
	<br><br><br><br><br><br><br><br><br>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>