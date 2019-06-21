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
.checkIdBtn , .checkEmailBtn, .checkBtn{
	margin-left:10px; 
	background:#CC3366; 
	width:100px; 
	height:30px;
	font-size:17px; 
	border-radius:5px;
	 border:1px solid #CC3366; 
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
	background:#CC3366;  
	border:1px solid #CC3366;; 
	color:white; 
	font-size:17px;
}
table{
	margin-top:20px;
}
.phone{
	font-size:15px !important;
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
  <h2 align="center" style="color:#CC3366; font-size:40px; margin-top:30px;">JOIN</h2>
  <form action="/action_page.php">
    <table align="center">
    	<tr>
    		<td class="bigName">이메일</td>
    		<td class="tdInput"><input type="email" name="email" id="email" class="form-control input"></td> 
    		<td class="tdBtn"><button onclick="return duplicationCheck()" class="checkEmailBtn">중복확인</button></td>
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
    		<td class="tdBtn"><button onclick="checkId()" class="checkIdBtn">중복확인</button></td>
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
    		<td><input type="tel" name="phone" class="form-control phone" placeholder="000-0000-0000"></td>
    	</tr>
    	
    	<tr>
    		<td class="bigName">예금주</td>
    		<td class="tdInput"><input type="text" name="accountName" class="form-control">
    	</tr>
    	<tr>
    	<td class="bigName">은행</td>
    		<td>
    			<select name="bank" class="form-control" style="font-size:15px;">
    				<option  value="신한은행" >신한은행</option>
    				<option  value="국민은행">국민은행</option>
    				<option  value="기업은행">기업은행</option>
    				<option  value="농협은행">농협은행</option>
    			</select>
    		</td>
    	</tr>
    	<tr>
    	<td class="bigName">계좌번호</td>
    		
    			<td class="tdInput">
    				<input type="text" name="accountName" class="form-control">
    			</td>
    	</tr>
    	<tr>
    		<td class="bigName">성별</td>
    		<td class="genderTd">
    			<select name="gender"  class="form-control selectGender" style="font-size:15px;">
    				<option class="gender" value="남자" style="font-size:15px;">남자</option>
    				<option class="gender" value="여자">여자</option>
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