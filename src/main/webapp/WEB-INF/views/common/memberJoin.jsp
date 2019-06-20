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
<div class="container">
  <h2 align="center">Join</h2>
  <form action="/action_page.php">
    <table align="center">
    	<tr>
    		<td style="width:80px;font-size:17px;">이메일</td>
    		<td style="width:80px; height:60px;"><input type="email" name="email" id="email" class="form-control" style="width:300px;"></td> 
    		<td style="width:180px;"><button onclick="return duplicationCheck()" style=" margin-left:10px; background:hotpink; width:100px; height:30px; font-size:17px; border-radius:5px; border:1px solid hotpink; color:white">중복확인</button></td>
    	</tr>
    	<tr>
    		<td style="width:80px;font-size:17px;">인증번호</td>
    		<td style="width:80px; height:60px;"><input type="text" name="email" id="email" class="form-control" style="width:300px;"></td>
    		<td style="width:180px;"><button style="margin-left:10px; width:100px; height:30px; font-size:17px; background:hotpink; border-radius:5px; border:1px solid hotpink; color:white"onclick="checkEmail()">인증하기</button></td> 
    	</tr>
    	<tr>
    		<td style="width:80px;font-size:17px;">이름</td>
    		<td style="width:80px; height:60px;"><input type="text" name="name" id="email" class="form-control" style="width:300px"></td>
    	</tr>
    	<tr>
    		<td style="width:80px;font-size:17px;">아이디</td>
    		<td style="width:80px; height:60px;"><input type="text" name="userId" id="userId" class="form-control" style="width:300px"></td>
    	</tr>
    	<tr>
    		<td style="width:80px;font-size:17px;">비밀번호</td>
    		<td style="width:80px;"><input type="text" name="userPwd" id="userPwd" class="form-control" style="width:300px"></td>
    	</tr>
    	<tr>
    		<td style="width:80px;font-size:17px;">비밀번호 확인</td>
    		<td style="width:80px; height:60px;"><input type="text" name="userPwd2" id="userPwd2" class="form-control" style="width:300px"></td>
    	</tr>
    	<tr>
    		<td style="width:80px;font-size:17px;">휴대폰 번호</td>
    		<td><input type="tel" name="phone" class="form-control" placeholder="000-0000-0000"></td>
    	</tr>
    	<tr>
    		<td style="width:80px;font-size:17px;">성별</td>
    		<td style="height:60px;">
    			<select name="gender" style="width:80px;" class="form-control">
    				<option value="남자">남자</option>
    				<option value="여자">여자</option>
    			</select>
    		</td>
    	</tr>
    	<tr>
    		<td colspan="3" style="font-size:17px">이용약관</td>
    	</tr>
    	<tr style="height:40px;">
    		<td colspan="3"><textarea class="form-control" cols="67" rows="5"style="height:160px;"></textarea></td>
    	</tr>
    	<tr>
    		<td colspan="3"><input type="checkbox" style="float:right; width:30px;"><p style="float:right">동의함</p></td>
    	</tr>
    	<tr style="height:40px;">
    		<td colspan="3" style="font-size:17px">개인정보 처리 방침</td>
    	</tr>
    	<tr style="height:40px;">
    		<td colspan="3"><textarea class="form-control" cols="67" rows="5"></textarea></td>
    	</tr>
    	<tr>
    		<td colspan="3"><input type="checkbox" style="float:right; width:30px;"><p style="float:right">동의함</p></td>
    	</tr>
    	 <tr style="height:70px;">
    		<td colspan="3"><button type="submit" class="form-control" style="width:600px; background:hotpink; border:1px solid hotpink; color:white; font-size:17px;">가입하기</button></td>
    	</tr>
    </table>
  </form>
  
  
</div>
	
</body>
</html>