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
#findIdBtn{
	width:400px; 
	background:#ff0066;  
	border:1px solid #ff0066; 
	color:white; 
	font-size:17px;
}
td{
	 height:60px;
}

#findIdBtn2{
	width:400px; 
	background:#ff0066;  
	border:1px solid #ff0066; 
	color:white; 
	font-size:17px;
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
				<td style=""><input type="text" name="name" id="myName" class="form-control"></td>
			</tr>
			<tr>
				<td style=""><label>이메일</label></td>
				<td style=""><input type="email" name="email" id="myEmail" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" class="form-control" onclick="findIdBtn()" id="findIdBtn">찾기</button></td>
			</tr>
		</table>
	
	
	<h2 align="center" class="eng" style="margin-top:100px;">비밀번호 찾기</h2>
	<hr style=" width:400px; ">
	
		<table align="center">
			<tr>
				<td style=""><label >이름</label></td>
				<td style=""><input type="text" name="name" id="myName2"class="form-control"></td>
			</tr>
			<tr>
				<td style=""><label >아이디</label></td>
				<td style=""><input type="text" name="userId" id="userId2" class="form-control"></td>
			</tr>
			<tr>
				<td style=""><label>이메일</label></td>
				<td style=""><input type="email" name="email" id="myEmail2" class="form-control"></td>
			</tr>
			<tr>
				<td colspan="2"><button type="button" style="width:400px; background:#ff0066;  border:1px solid #ff0066; color:white; font-size:17px;" class="form-control" id="findPwdBtn2" onclick="findPwdBtn()">찾기</button></td>
			</tr>
		</table>
	
	</div>
</body>
<script>
	function findIdBtn(){
		
		var name = $("#myName").val();
		var email = $("#myEmail").val();
		
		
		$.ajax({
			url:"findId.me",
			type:"post",
			data:{name:name,email:email},
			success:function(data){
				if(data =='FAIL'){
					alert("일치하는 정보가 없습니다.");
				}else{
					
					alert("회원님의 아이디는 "+data + "입니다.");
					location.href="loginMember.me";
				}
			},error:function(status){
				console.log("다시해라..");
			}
		});
	}
	
	function findPwdBtn(){
		
		var name = $("#myName2").val();
		var userId = $("#userId2").val();
		var email = $("#myEmail2").val();
		
		console.log("name: "+name);
		console.log(userId);
		console.log("email: "+email);
		
		$.ajax({
			url:"findPwd.me",
			type:"post",
			data:{name:name, userId:userId, email:email},
			success:function(data){
				if(data == "ok"){
					alert("본인 인증을 위한 이메일을 전송하였습니다.");
				var count = 0;	
				//document.location.href='updatePwd.me?name=' + name;  //폼으로 이동
				location.href="gotoRandomPwdWrite.ms";
				}else if(data == "fail"){
					alert("일치하는 정보가 없습니다.");
				}
			},error:function(status){
				console.log("다시");
			}
		})
	}
</script>
</html>