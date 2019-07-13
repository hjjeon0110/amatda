<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	/* -----(리뷰상세페이지 댓글 시작)------ */
	
/* 	#conmmentForm{
	align:center;
	} */
	
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

#commentList{
	background-color:#fff;
	width:500px;
	margin-top:50px;
	
	
}

#repContent{
	width:450px;

}

.area{
	width:500px;
	height:65px;
}
	
	
	
	/* -----(리뷰상세페이지 댓글 끝)------ */
	
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/> 
	<img class="testImg" src="${ contextPath }/resources/images/sstestMain.jpg">
	
	<div class="outerform" align="center"> 
	<form action="selectOneReview.bo" method="post">	
		<table class="selectOneReview">
		<%-- <c:forEach var="selectOneReview" items="${ sessionScope.selectOneReview }" varStatus="status"><br> --%>
		<tr class="contentTitle">
		<h2>아맞다 후기리뷰</h2>
		<br><br>
		<%-- <td>${selectOneReview.bTitle }</td> --%>
		
		<input type="hidden" id="bNo" value="${b.bNo }">
		<input type="hidden" id="mNo" name="mNo" value="${ sessionScope.loginUser.userId }" >
		<b>${b.bTitle }</b>
		<p></p>
		<p></p>
		
		<div class="secondTableLine"></div>
			<div class="likecount">
				<a href ="selectOneReview.bo"><h6>1111<img id="likeicon"src="${ contextPath }/resources/images/likeicon.png"></h6></a>
			</div>
			<img id="reviewImgFile" src="${contextPath }/resources/uploadFiles/${a.modiName}${a.extension}" width="250" height="200">
			
			
		</tr>
			
			<div class="reviewPic">
		<p>${b.bContent }</p>
		<p>${b.bCount}</p>
		<br><br>
			
		 <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal">수정</button>
		 <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal">삭제</button>
		 <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal" onclick="location.href='selectReview.bo'"> 목록</button>
		<br><br>
		
		
		<!-- 댓글 INSERT ----------->
		
		<div class="secondTableLine"></div>
		
		<h5>REPLY</h5>
		<br>
		 <form id="conmmentForm" name="commentForm" method="post">
			<input type="hidden" id="bno" name="bno" value="${b.bNo }">
			<%-- <input type="hidden" name="mNo" value="${sessionScope.loginUser.mType }"> --%>
			
			<div class="area">
				<textarea id="repContent" name="repContent" cols="90" rows="3" placeholder="댓글을 입력하세요 " style="align:center"></textarea>
			<input type="button" id="replyInsert" value="등록" class="btn btn-primary" "align:center">
			</div>
		
			<div id="commentList">
				<c:forEach items="${repList }" var="repList">
					<c:if test="${!empty repList.repContent }">
						●&nbsp;${repList.member.userId } &nbsp; &nbsp;<fmt:formatDate value="${repList.repDate }" pattern="yyyy-MM-dd HH:mm:ss"/> 
						&nbsp; &nbsp;${repList.repContent} <br>
					</c:if>
					
		<!-- 댓글 SELECT --------->
		
		
				</c:forEach>
			</div>
		</form> 
		
		<!-- <input type="text" id="replybox" placeholder="내용을 입력하세요.">
		<button type="button" class="btn btn-primary" data-toggle="modal" 
        data-target="#my80sizeCenterModal">작성</button> -->
        </div>
	<%-- </c:forEach> --%>
	</table>
	</form>
	</div>
	
	<br><br><br><br><br><br><br><br><br>
<jsp:include page="../common/footer.jsp"/>

<script>
	function loadReviewImgFile(value){
		if(value.files && value.files[0]){
			var reader = new FileReader();
			reader.onload = function(e){
				$("#reviewImgFile").attr("src",e.target.result);
			}
			reader.readAsDataURL(value.files[0]);
		}
	}

	 $("#replyInsert").click(function(){
		var content=$("#repContent").val();
		var bno="${b.bNo}";
		var mno=${sessionScope.loginUser.mno};
		
		console.log("content: " + content);
		console.log("bno : " + bno);
		console.log("mno : " + mno);
		
		$.ajax({
			type:"get",
			url:"insertReply.bo",
			data:{content:content,bno:bno,mno:mno},
			success:function(data){
				if(data=="success"){
					alert("댓글 등록");
				}else{
					alert("실패");
				}
			}
		})
	}) 



</script>
</body>
</html>