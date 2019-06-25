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
				<td style=""><input type="text" name="name" id="myName" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" class="form-control" onclick="findIdBtn()" id="findIdBtn">비밀번호 변경</button></td>
			</tr>
		</table>
	</div>
</body>
</html>