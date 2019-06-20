<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container" align="center">
		<h2 align="center">Login</h2>
	<form action="">
		<div class="form-group">
			<input type="text" name="userId" id="userId" class="form-control" style="width:500px;" placeholder="ID" autofocus>
		</div>
		
		<div class="form-group">
			<input type="text" name="userPwd" id="userPwd" class="form-control" style="width:500px;" placeholder="PWD">						
		</div>
		
		
			<label style="margin-right:-385px; font-size:10px;">아이디/비밀번호 찾기</label>
	
		<button type="submit" class="form-control" style="width:500px; border:1px solid hotpink; font-size:17px; color:white; background:hotpink">로그인</button><br>
		
	</form>
	</div>
</body>
</html>