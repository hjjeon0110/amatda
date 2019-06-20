<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
.tdBtn{
	width:180px;
}
.checkBtn{
	margin-left:10px; 
	background:hotpink; 
	width:100px; 
	height:30px;
	font-size:17px; 
	border-radius:5px;
	 border:1px solid hotpink; 
	 color:white 
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
	background:hotpink;  
	border:1px solid hotpink; 
	color:white; 
	font-size:17px;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2 align="center">Join</h2>
  <form action="/action_page.php">
    <table align="center">
    	<tr>
    		<td class="bigName">이메일</td>
    		<td class="tdInput"><input type="email" name="email" id="email" class="form-control input"></td> 
    		<td class="tdBtn"><button onclick="return duplicationCheck()" class="checkBtn">중복확인</button></td>
    	</tr>
    	<tr>
    		<td class="bigName">인증번호</td>
    		<td class="tdInput"><input type="text" name="email" id="email" class="form-control input"></td>
    		<td class="tdBtn"><button class="checkBtn" onclick="checkEmail()">인증하기</button></td> 
    	</tr>
    	<tr>
    		<td class="bigName">이름</td>
    		<td class="tdInput"><input type="text" name="name" id="email" class="form-control input"></td>
    	</tr>
    	<tr>
    		<td class="bigName">아이디</td>
    		<td class="tdInput"><input type="text" name="userId" id="userId" class="form-control input"></td>
    	</tr>
    	<tr>
    		<td class="bigName">비밀번호</td>
    		<td style="width:80px;"><input type="text" name="userPwd" id="userPwd" class="form-control input"></td>
    	</tr>
    	<tr>
    		<td class="bigName">비밀번호 확인</td>
    		<td class="tdInput"><input type="text" name="userPwd2" id="userPwd2" class="form-control input"></td>
    	</tr>
    	<tr>
    		<td class="bigName">휴대폰 번호</td>
    		<td><input type="tel" name="phone" class="form-control" placeholder="000-0000-0000"></td>
    	</tr>
    	<tr>
    		<td class="bigName">성별</td>
    		<td class="genderTd">
    			<select name="gender"  class="form-control selectGender">
    				<option value="남자">남자</option>
    				<option value="여자">여자</option>
    			</select>
    		</td>
    	</tr>
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
    		<td colspan="3"><button type="submit" class="form-control" id="registerBtn">가입하기</button></td>
    	</tr>
    </table>
  </form>
  
  
</div>
	
</body>
</html>