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
	<h2 align="center" class="eng" style="margin-top:100px;">비밀번호 변경</h2>
	<hr style=" width:400px; ">
	
	
		<table align="center">
			 
			
			<tr>
				<td style=""><label >비밀번호</label></td>
				<td style="height:50px"><input type="password" name="password1" id="userPwd" class="form-control"></td>
			</tr>
			<tr>
				<td style=""><label >비밀번호 확인</label></td>
				<td style="height:50px"><input style="margin-top:10px;"type="password" name="password2" id="userPwd2" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" onclick="updateMyPwd()" class="form-control checkBtn"  id="updatePwdBtn" style="background:#ff0066; color:white; border:1px solid #ff0066;">변경하기</button></td>
			</tr>
		</table>
	
	</div>
</body>
<script>
	/* $(function(){
		alert("${requestScope.name}");
	}); */
	function updateMyPwd(){
	    var name = "${requestScope.name}";
		var userPwd = $("#userPwd").val();
		var userPwd2 = $("#userPwd2").val();
		
		console.log(userPwd);
		console.log(userPwd2);
		console.log(name);
		$.ajax({
			url:"updateMyPwd.me",
			data:{name:name,userPwd:userPwd},
			method:"post",
			success:function(data){
				if(data =='ok'){
				alert("비밀번호 변경 완료! 새로운 비밀번호로 로그인 해주세요!");
				document.location.href="loginMember.me";
				}
			},error:function(status){
				console.log("업데이트 실패");
			}
		})
	}
</script>
</html>