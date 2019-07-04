<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_1_myPage_privacy.css">
</head>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	<jsp:include page="../user/2_myPageMenubar.jsp" />



	<div class="container">
		<h2 align="center">회원 정보 수정</h2>
		<form action="/action_page.php">
			<table align="center">
				<tr>
					<td rowspan="9" style="text-align: center; padding: 20px;"><img
						src="https://pbs.twimg.com/media/DdXz9qUVAAAfW65.jpg"
						class="img-circle"> <br />
					<br /> <!-- 모달과 연결된 버튼입니다 -->
						<button type="button" class="btn btn-info" data-toggle="modal"
							data-target="#memberpicture">사진변경</button></td>
				</tr>
				<tr>
					<td class="bigName">이메일</td>
					<td class="tdInput"><input type="email" name="email"
						id="email" class="form-control input"></td>
					<td class="tdBtn"><button onclick="return duplicationCheck()"
							class="checkBtn">중복확인</button></td>
				</tr>
				<tr>
					<td class="bigName">인증번호</td>
					<td class="tdInput"><input type="text" name="email" id="email"
						class="form-control input"></td>
					<td class="tdBtn"><button class="checkBtn"
							onclick="checkEmail()">인증하기</button></td>
				</tr>
				<tr>
					<td class="bigName">이름</td>
					<td class="tdInput"><input type="text" name="name" id="email"
						class="form-control input"></td>
				</tr>
				<tr>
					<td class="bigName">아이디</td>
					<td class="tdInput"><input type="text" name="userId"
						id="userId" class="form-control input" readonly></td>
				</tr>
				<tr>
					<td class="bigName">비밀번호</td>
					<td style="width: 80px;"><input type="text" name="userPwd"
						id="userPwd" class="form-control input"></td>
				</tr>
				<tr>
					<td class="bigName">비밀번호 확인</td>
					<td class="tdInput"><input type="text" name="userPwd2"
						id="userPwd2" class="form-control input"></td>
				</tr>
				<tr>
					<td class="bigName">휴대폰 번호</td>
					<td><input type="tel" name="phone" class="form-control"
						placeholder="000-0000-0000"></td>
				</tr>
				<tr>
					<td class="bigName">성별</td>
					<td class="genderTd"><select name="gender"
						class="form-control selectGender">
							<option value="남자">남자</option>
							<option value="여자">여자</option>
					</select></td>
				</tr>
				<tr class="registerTr">
					<td></td>
					<td colspan="2"><button type="submit" class="form-control"
							id="registerBtn">수정하기</button></td>
				</tr>

			</table>
		</form>
	</div>
	<br>
	<br>
	<br>


	<!-- 모달영역 -->
	<div id="memberpicture" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- 모달 내용-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">사진 변경</h4>
				</div>
				<div class="modal-body">
					<input type="file" name="modifypicture" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>

		</div>
	</div>




	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>