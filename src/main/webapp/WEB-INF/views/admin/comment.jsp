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
			<a href='#' onClick="replyInsert('${QNA.bNo }')" class="button" id="replyInsert">등록</a>
	</form>
	
<!-- 	<script>
			function fn_comment(code){
			    
			    $.ajax({
			        type:'POST',
			        url : "<c:url value='/board/addComment.do'/>",
			        data:$("#commentForm").serialize(),
			        success : function(data){
			            if(data=="success")
			            {
			                getCommentList();
			                $("#comment").val("");
			            }
			        },
			        error:function(request,status,error){
			            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			       }
			        
			    });
			}
	</script> -->
	
</body>
</html>