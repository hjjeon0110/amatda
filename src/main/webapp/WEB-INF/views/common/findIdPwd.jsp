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
#registerBtn{
	width:400px; 
	background:#ff0066;  
	border:1px solid #ff0066; 
	color:white; 
	font-size:17px;
}
td{
	 height:60px;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"/>
	<div class="container">
	<h2 align="center" class="eng" style="margin-top:100px;">아이디 찾기</h2>
	<hr style=" width:400px; ">
	
	
		<table align="center">
		
			<tr>
				<td style=""><label >이름</label></td>
				<td style=""><input type="text" name="name" id="name" class="form-control"></td>
			</tr>
			<tr>
				<td style=""><label>이메일</label></td>
				<td style=""><input type="email" name="email" id="email" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit" class="form-control" onclick="registerBtn()" id="registerBtn">찾기</button></td>
			</tr>
		</table>
	
	
	<h2 align="center" class="eng" style="margin-top:100px;">비밀번호 찾기</h2>
	<hr style=" width:400px; ">
	
		<table align="center">
			<tr>
				<td style=""><label >이름</label></td>
				<td style=""><input type="text" name="name" id="name"class="form-control"></td>
			</tr>
			<tr>
				<td style=""><label >아이디</label></td>
				<td style=""><input type="text" name="id" id="id" class="form-control"></td>
			</tr>
			<tr>
				<td style=""><label>이메일</label></td>
				<td style=""><input type="email" name="email" id="email" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="submit" class="form-control" id="registerBtn">찾기</button></td>
			</tr>
		</table>
	
	</div>
</body>
<script>
	function registerBtn(){
		
		var name = $("#name").val();
		var email = $("#email").val();
		
		
		console.log(name);
		console.log(email);
		$.ajax({
			url:"findId.me",
			type:"post",
			data:{name:name,email:email},
			success:function(data){
				
					alert("회원님의 아이디는 "+data + "입니다.");
				
			},error:function(status){
				console.log("다시해라..");
			}
		});
	}
</script>
</html>