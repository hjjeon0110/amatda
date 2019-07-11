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
	
	<table class="privacyTable">
			<tr>
				<td><input type="hidden" name="mno" value="${sessionScope.loginUser.mno}"></td>
			</tr>
				<tr>
					<td rowspan="5" style="text-align:center; width:30%;">
						<div class="profileImgDiv">
							<img id="profileImg" src="${contextPath}/resources/images/profileImg3.PNG">
						</div>
						<br>
						<button type="button" class="checkBtn" data-toggle="modal" data-target="#memberpicture">사진 변경</button>
					</td>
				</tr>
				<!-- <tr>
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
						<button class="checkBtn" onclick="return checkEmail()">인증하기</button>
					</td>
				</tr>-->
				<tr>
					<td class="bigName">이름</td>
					<td class="tdInput">
						<input type="text" name="name" id="userName" class="form-control input">
					</td>
				</tr>
				<tr>
					<td class="bigName">아이디</td>
					<td class="tdInput">
						<input type="text" name="userId" id="userId" class="form-control input" readonly style="background:white !important;"></td>
				</tr>
				<tr>
					
					<td class="bigName">비밀번호</td>
					<td class="tdInput">
						<input type="password" name="userPwd" id="userPwd" class="form-control input">
					</td>
				</tr>
				<tr>
					
					<td class="bigName">비밀번호 확인</td>
					<td class="tdInput">
						<input type="password" name="userPwd2" id="userPwd2" class="form-control input">
					</td>
					<td>	
						<label id="Result"></label>
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="bigName">휴대폰 번호</td>
					<td class="tdInput">
						<input type="tel" name="phone" id="phone" class="form-control input" placeholder="000-0000-0000">
					</td>
				</tr>
				<tr>
					<td></td>
					<td class="bigName">성별</td>
					<td class="genderTd">
						<select name="gender" id="gender" class="form-control input selectGender">
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
						<button type="button" id="updateBtn">수정하기</button>
					</td>
				</tr>
	
			</table>
		
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
					<form action="insertMyImg.ms" method="post" encType="multipart/form-data">
						<input type="hidden" class="mnoNum" name="mno2" value="${ sessionScope.loginUser.mno }"/>
						<input type="file" name="modifypicture" onchange="loadMyImgFile(this)" />
						<input type="submit" value="저장하기">
					</form>
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
<script>
	
function loadMyImgFile(value) {
	if (value.files && value.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#profileImg").attr("src", e.target.result);
		}
		reader.readAsDataURL(value.files[0]);

	}
}
	
	$(function(){
		//$("button[type='submit']").attr("disabled", true);
		var mno = ${sessionScope.loginUser.mno};
		var userName = $("#userName").val();
		console.log("정보수정 mno: " + mno);
		$.ajax({
			url:"selectMyInfo.ms",
			type:"post",
			data:{mno:mno},
			
			success:function(data){
				
				
					
				
					console.log(data);
					console.log(data.mno);
					console.log(data.gender);
					$("#userName").val(data.name);
					$("#userId").val(data.userId);
					$("#phone").val(data.phone);
					$("#gender").val(data.gender);
					
				
					
					
			},error:function(data){
				alert("그냥 에러임");
			}
		})
	})
	
	
	
	
	
	$("#updateBtn").click(function(){
		
		var mno = ${sessionScope.loginUser.mno};
		var name = $("#userName").val();
		var userId = $("#userId").val();
		var userPwd = $("#userPwd").val();
		var phone = $("#phone").val();
		var gender = $("#gender").val();
		
		console.log("정보수정 mno: " + mno);
		console.log("정보수정 name: " + name);
		console.log("정보수정 userId: " + userId);
		console.log("정보수정 userPwd: " + userPwd);
		console.log("정보수정 phone: " + phone);
		console.log("정보수정 gedner: " + gender);
		
		$.ajax({
			url:"updateMyInfo.ms",
			type:"post",
			data:{mno:mno, name:name, userId:userId, userPwd:userPwd,phone:phone, gender:gender},
			success:function(data){
				if(data=="success"){
					alert("정보 수정 성공!");
					location.reload();
				}else if(data=="fail"){
					alert("정보 수정 실패!");
					
				}
			}
		})
	})
</script>
</html>