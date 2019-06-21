<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Insert title here</title>
<style>
	h2{
		color:#CC3366; !important;
	}
	.user{
		margin-top:100px;
		width:400px; 
		height:300px; 
		background:pink;
		
	}
	.trainer{
		margin-top:100px;
		width:400px; 
		height:300px; 
		background:pink;
		
	}
	.register{
		font-size:20px; 
		margin-left:100px;
	}
	.img1{
		width:150px;
		height:150px;
		position: absolute;
		top:15%;
		left:33%;
	}
	.img2{
		width:150px;
		height:150px;
		position: absolute;
		top:15%;
		left:33%;
	}
	.bigName{
		font-size:30px;
		 position: absolute;
		 top:70%;
		 left:37%;
		 color:#CC3366;
	}
	.smallName{
		font-size:20px; 
		position: absolute;
		top:85%;
		left:42%;
		color:#CC3366;
	}
	.bigName2{
		 font-size:30px;
		 position: absolute;
		 top:70%;
		 left:36%;
		 color:#CC3366;
	}
	.smallName2{
		font-size:20px; 
		position: absolute;
		top:85%;
		left:40%;
		color:#CC3366;
	}
	h2{
		
		
	}
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>

<div class="container">
<hr style="margin-top:100px;">
<h2 align="center" style="color:#CC3366; font-size:40px; margin-top:30px;">JOIN</h2>
  <div class="row">
    <div class="col-sm-5 user" onclick="location.href='memberJoinView.me'">
    	<img class="img1" src="${contextPath}/resources/images/user.png" >
  			<label class="bigName">일반회원</label><br>
  			<label class="smallName">가입하기</label>
    </div>
    <div class="col-sm-2" style="background-color:white;"></div>
    <div class="col-sm-5 trainer"  onclick="location.href='trainerJoinView.me'">
   		<img class="img2" src="${contextPath}/resources/images/clock.png" >
  			<label class="bigName2">트레이너</label><br>
  			<label class="smallName2">가입하기</label>
    </div>
  </div>
</div>
</body>
</html>