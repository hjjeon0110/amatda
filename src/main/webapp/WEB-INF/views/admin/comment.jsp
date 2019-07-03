<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form id="commentForm" name="commentForm" method="post">
	
			<input type="hidden" id="bNo" value="${QNA.bNo }">
			<textarea class="form-control" placeholder="댓글을 입력하세요"
			id="repContent" name="repContent"></textarea>
			<a href='#' class="button" id="replyInsert">등록</a>
	</form>
	
	<script>
		$(document).ready(function(){
			$("#replyInsert").click(function(){
				
				var content=$("#repContent").val();
				var bno="${QNA.bNo}"
				
			})
			
		})
			
	</script>
	
</body>
</html>