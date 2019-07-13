<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 상세보기</title>

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

#commentList{
	background-color:#fff;
	width:500px;
	
}

#repContent{
	width:450px;

}

.area{
	width:500px;
	height:65px;
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
		<h1 id="fontEng" align="center">Diary Detail</h1>
		<br /> <br /> <br />
		<div class="tableArea">
			<form action="update.di" method="post" encType="multipart/form-data">
				<input type="hidden" name="mNo" value="${ sessionScope.loginUser.mno }" />
				<input type="hidden" name="bno" value="${ d.bNo }" />
				<table>
				
					<tr>
						<td id="font">제 목 <input type="text" size="40" name="bTitle" value="${ d.bTitle }">
						</td>

					</tr>
					<tr></tr>
					<tr>
						<td>  
						<img id="diaryImgFile" src="${ contextPath }/resources/uploadFiles/${ a.modiName }${ a.extension }" width="500"	height="400"> 
						<input type="file" name="diaryImgFile" onchange="loaddiaryImgFile(this)" />
						</td>
					</tr>
					<tr>
						<td id="font"> </td>
						<td></td>
					</tr>
					<tr>
						<td colspan="4">
						<textarea name="bContent" cols="60" rows="15" id="bContent" >${ d.bContent }</textarea>
						</td>
					</tr>
					<tr align="center">
						<td><input type="submit" value="수 정" /></td>
					</tr>
				</table>
			</form>
			<br />
				
			
				
			
			<!-- 댓글 insert -->
			<form id="commentForm" name="commentForm" method="post">
	
						<input type="hidden" id="bno" name="bno" value="${d.bNo }">
						<input type="hidden" name="mNo" value="${ sessionScope.loginUser.mtype }" />
						<c:if test="${ sessionScope.loginUser.mtype == 'T'}">
						
						
							
						<div class="area">
								<textarea id="repContent" name="repContent" cols="60" rows="2" placeholder="댓글을 입력하세요" style="float:left"></textarea>
								<input type="button" id="replyInsert" value="등록" style="float:right">
							
						
				
						</div>
						</c:if>
						
			<!-- 댓글 select -->
										<div id="commentList">
						<c:forEach items="${repList}" var="repList">
							<c:if test="${!empty repList.repContent}">
								${repList.member.name} 트레이너 (<fmt:formatDate value="${repList.repDate}" pattern="yyyy-MM-dd" />) :
								${repList.repContent}
								
							<br />
							</c:if>
						</c:forEach>
					
						
							
						</div>
							
						
						
						
						
					</form>
					
			
			
			
		</div>
	</div>
	<br />
	<br />

<script>
	<!-- 
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
-->



		function loaddiaryImgFile(value) {
			if (value.files && value.files[0]) {
				var reader = new FileReader();
				reader.onload = function(e) {
					$("#diaryImgFile").attr("src", e.target.result);
				}
				reader.readAsDataURL(value.files[0]);

			}
		}
		
		
		$("#replyInsert").click(function(){
			
			var content=$("#repContent").val();
			var bno="${ d.bNo }";
			var mno=${ sessionScope.loginUser.mno };
			console.log("content: "  + content);
			console.log("bno: " + bno);
			console.log("mno: " + mno);
			
			$.ajax({
				type:"get",
				url:"insertReply.di",
				data:{content:content,bno:bno,mno:mno},
				success:function(data){
					if(data=="success"){
					alert("댓글이 등록되었습니다");
					}else{
						alert("실패");
					}
				}
			})
		})
	</script>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>