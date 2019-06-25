<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
.bigName{
	width:100px;
	font-size:17px;
}
.input{
	width:300px;
}
.tdInput{
	width:300px; 
	height:60px;
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
	
}
.genderTd{
	height:60px;
}
.selectGender{
	width:80px;
}
p{
	float:right;
}
.checkbox{
	float:right; 
	width:30px;
}

.trHeight{
	height:40px;
}



.privateInfo{
	font-size:17px;
}

.registerTr{
	height:70px;
}

#registerBtn{
	width:600px; 
	background:#ff0066;  
	border:1px solid #ff0066; 
	color:white; 
	font-size:17px;
}
table{
	margin-top:20px;
}

label{
	width:70px;
	margin-left:30px;
}

body{
	font-family: 'Noto Sans KR', sans-serif;
	
}
.eng{
	font-family: 'Montserrat', sans-serif;
}

.checkBtn2{
	margin-top:5px; 
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>
<div class="container">
<hr style="margin-top:100px;">
  <h2 align="center" class="eng" style="color:#ff0066; font-size:40px; margin-top:30px;">JOIN</h2>
  
    <table align="center">
    	<tr>
    		<td class="bigName">이메일</td>
    		<td class="tdInput"><input type="email" name="email" id="email" class="form-control input"></td> 
    		<td class="tdBtn">
    			<button onclick="return duplicationEmailCheck()" class="checkBtn2 checkBtn">중복확인</button>
    			<button type="button" class="checkBtn2 checkBtn" onclick="emailConfirm()">이메일인증</button>
    			
    		</td>
    		<td>
    			<label class="mailCheck checkBtn2" id="clearMail" style="margin-left:30px;"></label>
    		</td>
    		
    	</tr>
    	
    	<tr>
    		<td class="bigName">이름</td>
    		<td class="tdInput"><input type="text" name="name" id="name" class="form-control input"></td>
    	</tr>
    	<tr>
    		<td class="bigName">아이디</td>
    		<td class="tdInput"><input type="text" name="userId" id="userId" class="form-control input"></td>
    		<td class="tdBtn"><button  class="checkBtn" onclick="return checkId()" class="checkIdBtn">중복확인</button></td>
    	</tr>
    	<tr>
    		<td class="bigName">비밀번호</td>
    		<td style="width:80px;"><input type="password" name="userPwd" id="userPwd" class="form-control input"></td>
    	</tr>
    	<tr>
    		<td class="bigName">비밀번호 확인</td>
    		<td class="tdInput"><input type="password" name="userPwd2" id="userPwd2" class="form-control input"></td>
    		<td class="tdInput"><label id="passwordResult"></label></td>
    	</tr>
    	<tr>
    		<td class="bigName">휴대폰 번호</td>
    		<td><input type="tel" name="phone" id="phone" class="form-control" placeholder="000-0000-0000"></td>
    	</tr>
    	<tr>
    		<td class="bigName">성별</td>
    		<td class="genderTd">
    			<select name="gender" id="gender"  class="form-control selectGender">
    				<option value="남자">남자</option>
    				<option value="여자">여자</option>
    			</select>
    		</td>
    	</tr>
    	
    	 <tr class="registerTr">
    		<td colspan="3"><button type="submit" id="submit"class="form-control" onclick="register()">가입하기</button></td>
    	</tr>
    </table>

  
</div>
	
</body>
<script>

function register(){
    var email = $("#email").val();
	var name = $("#name").val();
	var userId = $("#userId").val();
	var userPwd = $("#userPwd").val();
	var phone = $("#phone").val();
	var gender = $("#gender option:selected").text();
	console.log(phone);
	console.log(gender);
	
	$.ajax({
		url:"insertMember.me",
		type:"post",
		data:{email:email, name:name, userId:userId, userPwd:userPwd, phone:phone, gender:gender},
		success:function(data){
			
				alert("회원가입 완료! 설문조사 하러가기");
				document.location.href="survey1.su";
			
		},error:function(status){
			console.log(status);
		}
	})
}

$(function(){
	$("button[type='submit']").attr("disabled", true);
	$("#userPwd2").change(function(){
		
		var password = $("#userPwd").val();
		var password2 = $("#userPwd2").val();
		var clearMail = $("#clearMail").text("인증완료");
		console.log(clearMail);
		
		if(password == password2){
			$("#passwordResult").text("일치").css("color", "yellowgreen");
			$("#submit").attr("disabled", false).css({"background":"#ff0066", "color":"white","font-size":"15px"});
		}else if (password != password2){
			$("#passwordResult").text("불일치").css("color", "red");
			$("#submit").attr("disabled", true);
		}
	});
		

})



//아이디 중복체크
	function checkId(){
		var userId = $("#userId").val();
		
		$.ajax({
			url:"checkId.me",
			type:"post",
			data:{userId:userId},
			success:function(data){
				if(data =='FAIL'){
					alert("사용할 수 없는 아이디입니다.");
					$("#userId").val(""); //텍스트값 비우기
				}else{
					alert("사용 가능한 아이디입니다.");
				}
			},error:function(status){
				alert(status);
			}
		});
		return false;
	}
	
//이메일중복체크	
	function duplicationEmailCheck(){
		var email = $("#email").val();
		
		$.ajax({
			url:"checkEmail.me",
			type:"post",
			data:{email:email},
			success:function(data){
				if(data =='FAIL'){
					alert("사용할 수 없는 이메일입니다.");
					$("#email").val(""); 
				}else{
					alert("사용 가능한 이메일입니다.");
				}
			},error:function(status){
				alert(status);
			}
			
		});
		return false;
	}
	
	//이메일인증
	function emailConfirm(){
		var email = $("input[name='email']").val();
		console.log(email);
		
		window.open('emailCheckNumSend.me?email=' + email, '_blank', 'width=650 height=250');
		window.resizeTo(650,250);
		return false;
		
	
	}
</script>
</html>