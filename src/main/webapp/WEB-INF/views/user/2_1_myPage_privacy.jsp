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

	<br><br>
	
	<label class="subTitle">개인정보수정</label>	
	
	<br><br>
	
	<div class="privacyDiv">
		<form action="/action_page.php">
			<table class="privacyTable">
				<tr>
					<td rowspan="5" style="text-align:center; width:30%;">
						<div class="profileImgDiv">
							<img id="profileImg" src="${contextPath}/resources/images/profileImg3.PNG">
						</div>
						<br>
						<button type="button" class="checkBtn" data-toggle="modal" data-target="#memberpicture">사진 변경</button>
					</td>
				</tr>
				<tr>
					<td class="bigName" style="width:15%;">이메일</td>
					<td class="tdInput" style="width:45%;">
						<input type="email" name="email" id="email" class="form-control input">
					</td>
					<td class="tdBtn" style="width:10%;">
						<button onclick="return duplicationCheck()" class="checkBtn">중복확인</button>
					</td>
				</tr>
				<tr>
					<td class="bigName">인증번호</td>
					<td class="tdInput">
						<input type="text" name="email" id="email" class="form-control input">
					</td>
					<td class="tdBtn">
						<button class="checkBtn" onclick="checkEmail()">인증하기</button>
					</td>
				</tr>
				<tr>
					<td class="bigName">이름</td>
					<td class="tdInput">
						<input type="text" name="name" id="email" class="form-control input">
					</td>
				</tr>
				<tr>
					<td class="bigName">아이디</td>
					<td class="tdInput">
						<input type="text" name="userId" id="email" class="form-control input" readonly style="background:white !important;"></td>
				</tr>
				<tr>
					<td></td>
					<td class="bigName">비밀번호</td>
					<td class="tdInput">
						<input type="text" name="userPwd" id="userPwd" class="form-control input">
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="bigName">비밀번호 확인</td>
					<td class="tdInput">
						<input type="text" name="userPwd2" id="userPwd2" class="form-control input">
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="bigName">휴대폰 번호</td>
					<td class="tdInput">
						<input type="tel" name="phone" class="form-control input" placeholder="000-0000-0000">
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="bigName">성별</td>
					<td class="genderTd">
						<select name="gender" class="form-control input selectGender">
							<option value="남자">남자</option>
							<option value="여자">여자</option>
						</select>
					</td>
				</tr>
				<tr class="registerTr">
					<td></td>
					<td colspan="2">
					</td>
				</tr>
				<tr class="registerTr">
					<td></td>
					<td colspan="2">
						<button type="submit" id="registerBtn">수정하기</button>
					</td>
				</tr>
	
			</table>
		</form>
	</div>



	<!-- 모달영역 -->
	<div id="memberpicture" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- 모달 내용-->
			<div class="modal-content">
				<div class="modal-header">
					<label class="modal-title">사진 변경</label>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
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