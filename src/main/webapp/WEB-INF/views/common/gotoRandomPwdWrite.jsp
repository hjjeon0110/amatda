<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body{
	font-family: 'Noto Sans KR', sans-serif;
	
}
.eng{
	font-family: 'Montserrat', sans-serif;
}


.checkBtn{
	margin-left:10px; 
	background:#ff0066; 
	width:100px; 
	height:40px;
	font-size:17px; 
	border-radius:3px;
	border:1px solid #ff0066; 
	color:white;
	margin-top:30px;
	
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="container">
	<h2 align="center" class="eng" style="margin-top:100px;">임시 비밀번호</h2>
	<hr style=" width:400px; ">
	
	
		<table align="center">
			 
			
			<tr>
				<td style=""><label >비밀번호</label></td>
				<td style="height:50px"><input type="password" name="password1" id="userPwd" class="form-control"></td>
			</tr>
			
			<tr>
				<td colspan="2"><button type="button" onclick="updateRealPwd()" class="form-control checkBtn"  id="updatePwdBtn" style="background:#ff0066; color:white; border:1px solid #ff0066;">변경하기</button></td>
			</tr>
		</table>
	
	</div>
</body>
<script>
	/* $(function(){
		alert("${requestScope.name}");
	}); */
	function updateRealPwd(){
	    
		var userPwd = $("#userPwd").val();
		
		
		
		$.ajax({
			url:"updatePwd.me",
			data:{userPwd:userPwd},
			method:"post",
			success:function(data){
				if(data=="success"){
					
				location.href="updatePwd2.me?userPwd=" + userPwd;
					
				}
			},error:function(status){
				
			}
		})
	}
</script>
</html>