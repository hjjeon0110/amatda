<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

#userId, #userPwd {
	width: 500px;
}

#submitBtn {
	width: 500px;
	border: 1px solid #ff0066;
	font-size: 17px;
	color: white;
	background: #ff0066;
	font-family: 'Noto Sans KR', sans-serif;
}

#submitBtn:hover {
	width: 500px;
	border: 1px solid #ff0066;
	font-size: 17px;
	color: #ff0066;
	background: white;
	font-family: 'Noto Sans KR', sans-serif;
	cursor:pointer;
}

.eng {
	font-family: 'Montserrat', sans-serif;
	font-size: 30px;
	font-weight:bold;
	color:#ff0066;
}

.loginDiv {
	width:100%;
	height:100%;
	border-top:1px solid lightgray;
}
.findIdPwdDiv {
	width:500px;
	height:50px;
	text-align:right;
	font-family: 'Noto Sans KR', sans-serif;
}
.findIdPwd:hover {
	color:#ff0066;
	cursor:pointer;
}

.form-control {
	font-family: 'Montserrat', sans-serif;
	font-size: 14px;
}
</style>

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
</head>
<body>
	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	<div class="loginDiv" align="center">
		<br><br><br>
		<label align="center" class="eng">LOGIN</label>
		<br><br>
		<form action="login.me">
			<div class="form-group">
				<input type="text" name="userId" id="userId" class="form-control" placeholder="ID" autofocus>
			</div>

			<div class="form-group">
				<input type="password" name="userPwd" id="userPwd" class="form-control" placeholder="PASSWORD">
			</div>

			<div class="findIdPwdDiv">
				<label class="findIdPwd" onclick="location.href='findIdPwd.me'">아이디/비밀번호 찾기</label>
			</div>
			
			<button type="submit" class="form-control" id="submitBtn">로그인</button>

		</form>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><hr>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>