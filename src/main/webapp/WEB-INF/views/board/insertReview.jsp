<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.outer {
		width:1100px;
		height:1100px;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
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
	
</style>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/> 
	<img class="testImg" src="${ contextPath }/resources/images/sstestMain.jpg">
	
	<div class="outer"> 	
		<br>
		<h2 align="center">후기</h2>
		<form action="insertReview.bo" method="post"> 
			<!-- encType="multipart/form-data" -->
			<!-- encType을 설정해야 파일을 폼에서 보낼 수 있다 -->
			 <input type="hidden" name="bType" value="5"/>
			
			<!-- 자가코딩 시작 -->
			<div class = "container" align="center" style="width:900px;">
				<table class = "table table-bordered">
					<thead></thead>
					<tbody>
						<tr>
							<th>제목</th>
							<td><input type="text" placeholder="제목을 입력하세요" name="bTitle" style="width:700px;"></td>
						</tr>
						<tr>
							<th>내용</th>
							<td><input type="text" placeholder="내용을 입력하세요" name="bContent" style="width:700px; height:600px;"></td>
						</tr>
						<tr>
							<th>첨부파일</th>
							<td>
								<!-- <div id="titleImgArea" style="float:left; margin-right:10%;" >
									<img id="titleImg1" width="350" height="250">
								</div>
								
								<div id="contentImgArea11">
									<img id="titleImg2" width="350" height="250">
								
								</div> -->
							</td>							
						</tr> 
						
					</tbody>
					
				</table>
			
			<div id="fileArea">
				<input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)">
				<input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this,2)">
				
			</div>
			<br>
			<!-- <div class="btnArea">
	            <button onclick="location.href='selectReview.bo'">취소하기</button>
	            <button onclick="location.href='selectReview.bo'">작성하기</button>
            
         </div> -->
			</div>
			
			<input type="submit" value="작성하기" class="btn btn-primary">
			<button onclick="location.href='selectReview.bo'" class="btn btn-primary">목록으로</button>
			
		</form>
	</div>
	
	<script>
		$(function(){
			$("#fileArea").hide();
			
			$("#titleImgArea").click(function(){
				$("#thumbnailImg1").click();
			});
			$("#contentImgArea11").click(function(){
				$("#thumbnailImg2").click();
			});
			
		});
		
		function loadImg(value,num){
			if(value.files && value.files[0]){
				var reader = new FileReader();
				reader.onload = function(e){
					switch(num){
					case 1:
						$("#titleImg1").attr("src",e.target.result);
						break;
					case 2:
						$("#titleImg2").attr("src",e.target.result);
						break;
				
					}
				}
				reader.readAsDataURL(value.files[0]);
			}
		};
	</script>
	
	<br><br><br><br><br><br><br><br><br>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>