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
		 font-family: 'Montserrat', sans-serif;
		
	}
	.btn{
		margin-bottom:-40px;
		margin-left:40px; 
		background:#ff0066; 
		border:1px solid #ff0066
	}
	
	.confirm{
		width:100px; 
		height:100px; 
		margin-left:250px;  
		margin-top:40px;
	}
	label{
		color:gray; 
		font-size:13px; 
		margin-left:190px;
	}
	
	h2{
		margin-left:270px;
	}
	
	.btn-info{
		margin-top:20px;
		
	}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body  style="background:pink;">
	<div class="container">
	<h2 style="">인증번호</h2>
	<label style="">입력하신 이메일로 인증번호가 전송되었습니다.</label>
		<div class="confirm">
			<form method="post" name="autherform" onSubmit="return check();">
				<input type="text" name="authnum" style="margin-left:-5px;"><br>
				<input type="submit" class="btn btn-info" value="인증완료" style="background: #ff0066; border:1px solid  #ff0066 ">
			</form>
		</div>
	</div>
</body>
<script>
function check(){
	var form = document.autherform;
	console.log(form);
	var authNum = ${authNum};
	
	if(!form.authnum.value){
		alert("인증번호 입력하세요");
		return false;
	}
	
	if(form.authnum.value!=authNum){
		alert("틀린 인증번호");
		form.authnum.value="";
		return false;
	}
	
	 if(form.authnum.value==authNum){
		alert("인증완료");
		self.close();
		
		$("#clearMail",parent.opener.document).text("인증완료").css("color","red");
	
	} 
}
</script>
</html>