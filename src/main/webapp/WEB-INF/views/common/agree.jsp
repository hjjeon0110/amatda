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
<style>
	body{
	font-family: 'Noto Sans KR', sans-serif;
	
}
.eng{
	font-family: 'Montserrat', sans-serif;
}

p{
	float:right;
}
form{
	margin-top:50px;
}
.checkbox{
	float:right; 
	width:30px;
}
.privateInfo{
	font-size:17px;
}

.registerTr{
	height:70px;
}

#submit{
	width:600px; 
	background:#ff0066;  
	border:1px solid #ff0066; 
	color:white; 
	font-size:17px;
}
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>
	<div class="container" align="center">
	<hr style="margin-top:100px;">
	<h2 align="center" class="eng" style="color:#ff0066; font-size:40px; margin-top:30px;">약관동의</h2>
	<form action="memberJoinView.me" method="post">
		<table>
		<tr>
    		<td colspan="3" class="bigName">이용약관</td>
    	</tr>
    	<tr class="trHeight">
    		<td colspan="3"><textarea class="form-control" cols="67" rows="5"></textarea></td>
    	</tr>
    	<tr>
    		<td colspan="3"><input type="checkbox" class="checkbox"><p>동의함</p></td>
    	</tr>
    	<tr>
    		<td colspan="3" class="privateInfo">개인정보 처리 방침</td>
    	</tr>
    	<tr>
    		<td colspan="3"><textarea class="form-control" cols="67" rows="5"></textarea></td>
    	</tr>
    	<tr>
    		<td colspan="3"><input type="checkbox" class="checkbox"><p>동의함</p></td>
    	</tr>
    	 <tr class="registerTr">
    		<td colspan="3"><button type="submit" id="submit"class="form-control">다음</button></td>
    	</tr>
		</table>
	</form>
	</div>
</body>
</html>