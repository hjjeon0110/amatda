<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아맞다-회원찾기페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/trainer/1_userFindPage.css">
</head>
<body>

 
	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	
	<!-- 키워드 검색 영역 ------------------------------------------------------------------------------------------------------ -->
	<div class="searchKeywordDiv">
		<label class="searchKeywordLabel">키워드</label>&nbsp;&nbsp;&nbsp;
		<input class="searchKeywordInput" type="text">&nbsp;&nbsp;&nbsp;
		<button class="searchKeywordBtn"><i class="fa fa-search"></i></button>
		<br><br>
		<div class="keywordDiv">
			<span class="badge badge-pill badge-danger"> #키워드1 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드2 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드3 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드4 </span>&nbsp;
			<span class="badge badge-pill badge-danger"> #키워드5 </span>
		</div>
	</div>


	<!-- 회원 리스트 영역 ---------------------------------------------------------------------------------------------------- -->
	<div class="searchUserListDiv">
		<br> <select class="userSelect">
			<option class="option">- 선택 -</option>
			<option>신규가입순</option>
		</select> <br>
		<br>
		<div class="userListDiv">
			<table class="userListTable">
				<tr>
					<td rowspan="3" class="userListTableTd1">
						<div class="profileImg">
							<img class="profileImage"
								src="${ contextPath }/resources/images/profileImg.PNG">
						</div>
					</td>
					<td class="userListTableTd2"><label class="userName">회원1</label>
						<label class="userGender">(남)</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userKeyword">#키워드</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userSurvey">운동 시작가능일 : 19/06/13, 운동
							가능 시간 : 18:00 - 22:00, 키 : 180cm, 몸무게 : 100kg, 목표감량치 : 20kg</label></td>
					<td class="userListTableTd1"><button type="button"
							class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModalScrollable">회원 정보 보기</button></td>
				</tr>
			</table>
		</div>
		<br>
		<div class="userListDiv">
			<table class="userListTable">
				<tr>
					<td rowspan="3" class="userListTableTd1">
						<div class="profileImg">
							<img class="profileImage"
								src="${ contextPath }/resources/images/profileImg.PNG">
						</div>
					</td>
					<td class="userListTableTd2"><label class="userName">회원2</label>
						<label class="userGender">(남)</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userKeyword">#키워드</label></td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userSurvey">운동 시작가능일 : 19/06/13, 운동
							가능 시간 : 18:00 - 22:00, 키 : 180cm, 몸무게 : 100kg, 목표감량치 : 20kg</label></td>
					<td class="trainerListTableTd1"><button
							class="showUserServeyDetail">회원 정보 보기</button></td>
				</tr>
			</table>
		</div>

		<br>
		<br>
	</div>


	<!-- Modal ---------------------------------------------------------------------------------------------------------- -->
	<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-scrollable" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<label class="modalHeader">회원1님의 다이어트 정보</label>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<label class="index">I</label>&nbsp;&nbsp;<label>PT를 받는 목적이 무엇인가요?</label><br>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value="체중 감량" readonly><br><br>
					<label class="index">I</label>&nbsp;&nbsp;<label>PT를 받는 목적이 무엇인가요?</label><br>
					&nbsp;&nbsp;&nbsp;&nbsp;<input class="answer" type="text" value="체중 감량" readonly>
					<br><br><br><br><br>
					<br><br><br><br><br>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-primary">견적서 보내기</button>
				</div>
			</div>
		</div>
	</div>


	<!-- footer -------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>