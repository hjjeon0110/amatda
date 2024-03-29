<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 첫번째</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_2_myPage_dietSurvey.css">
<style>
/* .outer {
	width: 1000px;
	height: 600px;
	background-image: url(${ contextPath }/resources/images/pink.jpg);
	background-repeat: no-repeat;
	background-position: top center;
	background-size: 100% 1400px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px; 
	padding-left: 50px;
	padding-right: 50px;
} */

.outer {
	width: 100%;
	height: 1150px;
	background-repeat: no-repeat;
	background-position: top center;
	background-size: 100% 1400px;
	padding-left: 50px;
	padding-right: 50px;
	margin-left: auto;
	margin-right: auto;
}

/* 
td {
	height: 80px;
	
}

#font {
	font-family: 'Noto Sans KR', sans-serif;
}

.progress{
	margin:0 auto; 
	margin-top:20px;
	
}
.surveySubmitBtn {
	margin-left:auto;
	margin-right:auto;
	color:white;
	background:#ff0066;
	border: 1px solid #ff0066;
	border-radius: 5px;
}
 */
.surveyTable {
	width: 100%;
}
td {
	height:40px;
	font-family: 'Noto Sans KR', sans-serif;
	font-size:14px;
	border-bottom:0.5px solid lightgray;
	padding-left: 20px;
	padding-right: 20px;
}
.td1 {
	background:#f9f9f9;
}
label {
	font-family: 'Noto Sans KR', sans-serif;
}

.surveyTitleLabel2 {
	font-size:18px !important;
	color:#ff0066;
	font-weight:bold;
}

.form-control {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px !important;
	height:30px !important;
	background:white !important;
}

#editSurveyBtn{
	width:100px;
	height:30px;
	background:#ff0066;
	border-style:none;
	color:white;
}
#editSurveyBtn:hover{
	width:100px;
	height:30px;
	background:white;
	border:0.5px solid #ff0066;
	color:#ff0066;
	cursor:pointer;
}



</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"></jsp:include>

<div class="progress" style=" height:30px">
    <div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width:33%; background:pink;">
      <span class="sr-only">33% Complete</span>
    </div>
  </div>

	<div class="outer">
		<br />
		
		<h1 id="font" align="center">설문조사</h1>
		<br />
		<form action="insert1.su" method="post">
		<input type="hidden" name="mNo" value="${ sessionScope.loginUser.mno }" />

			<table align="center" id="font" class="surveyTable">
				<!-- <tr>
					<h2 id="font" align="center">개인 기초 정보 입력 사항</h2>
				</tr> -->
				
				<tr>
					<td colspan="2" style="background:white !important;">
						<label class="surveyTitleLabel2"><br><i class="fa fa-check"></i> 개인 기초 정보 입력 사항</label><br><br>
					</td>
				</tr>
				
				<br />
				<tr>
					<td class="td1">키(Cm)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="height"
						class="form-control" autofocus /></td>
				</tr>
				<tr>
					<td class="td1">몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="weight"
						class="form-control" /></td>
				</tr>
				<tr>
					<td class="td1">목표 몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요"
						name="hopeWeight" class="form-control" /></td>
				</tr>
				<!-- <tr>
					<td>나이 연령대</td>
					<td><input type="radio" class="uAge" name="uAge" value="18세미만" id="uAge1"/><label for="uAge1">18세 미만</label> &nbsp;
						<input type="radio" class="uAge" name="uAge" value="18~24세" id="uAge2"/><label for="uAge2">18 ~ 24세</label> &nbsp; 
						<input type="radio" class="uAge" name="uAge" value="25~34세" id="uAge3"/><label for="uAge3">25 ~ 34세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="35~44세" id="uAge4"/><label for="uAge4">35 ~ 44세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="45~54세" id="uAge5"/><label for="uAge5">45 ~ 54세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="55세이상" id="uAge6"/><label for="uAge6">55세 이상</label></td>
				</tr> -->
				
				<tr>
					<td class="td1">나이 연령대</td>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="defaultInline1r" name="uAge" value="18세미만">
							<label class="custom-control-label" for="defaultInline1r">18세 미만</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline2r" name="uAge" value="18~24세">
						  	<label class="custom-control-label" for="defaultInline2r">18-24세</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline3r" name="uAge" value="25~34세">
						  	<label class="custom-control-label" for="defaultInline3r">25-34세</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline4r" name="uAge" value="35~44세">
						  	<label class="custom-control-label" for="defaultInline4r">35-44세</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline5r" name="uAge" value="45~54세">
						  	<label class="custom-control-label" for="defaultInline5r">45-54세</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline6r" name="uAge" value="55세이상">
						  	<label class="custom-control-label" for="defaultInline6r">55세 이상</label>
						</div>
					
						<!-- <input type="radio" class="uAge" name="uAge" value="18세미만" id="uAge1"/><label for="uAge1">18세 미만</label> &nbsp;
						<input type="radio" class="uAge" name="uAge" value="18~24세" id="uAge2"/><label for="uAge2">18 ~ 24세</label> &nbsp; 
						<input type="radio" class="uAge" name="uAge" value="25~34세" id="uAge3"/><label for="uAge3">25 ~ 34세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="35~44세" id="uAge4"/><label for="uAge4">35 ~ 44세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="45~54세" id="uAge5"/><label for="uAge5">45 ~ 54세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="55세이상" id="uAge6"/><label for="uAge6">55세 이상</label> -->
					</td>
				</tr>
				
				<!-- <tr>
					<td>
						<h2>다이어트 정보</h2>
					</td>
				</tr>
				<tr>
					<td>희망다이어트 기간</td>
					<td><input type="radio" name="hope_period" value="1개월" />1개월
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="hope_period"
						value="3개월" />3개월 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="hope_period" value="6개월" />6개월 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="hope_period" value="1년이상" />1년 이상</td>
				</tr>
				<tr>
					<td>가장빼고싶은신체부위</td>
					<td><input type="checkbox" name="hope_body" value="팔부위" />팔
						부위 &nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox"
						name="hope_body" value="다리부위" />다리 부위 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="checkbox" name="hope_body" value="배부위" />배 부위
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="checkbox" name="hope_body"
						value="전신" />전신</td>
				</tr>
				<tr>
					<td>선호하는다이어트방법</td>
					<td><input type="radio" name="hope_method" value="의학적방법" />의학적방법(약,주사)
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="hope_method"
						value="식단조절" />식단조절 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="hope_method" value="운동" />운동 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="hope_method" value="식단과운동" />식단과운동
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="hope_method"
						value="상관없음" />상관없음</td>
				</tr>
				<tr>
					<td>선호하는트레이너성별</td>
					<td><input type="radio" name="hope_gender" value="남자" />남자
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="hope_gender"
						value="여자" />여자 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="hope_gender" value="상관없음" />상관없음</td>
				</tr>
				<tr>
					<td>선호하는트레이너연령</td>
					<td><input type="radio" name="hope_age" value="20대" />20대
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="hope_age"
						value="30대" />30대 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="hope_age" value="40대" />40대 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="hope_age" value="50대이상" />50대 이상
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="hope_age"
						value="상관없음" />상관없음</td>
				</tr>
				<tr>
					<td>앞선다이어트실패원인</td>
					<td><input type="checkbox" name="diet_fail" value="다이어트정보부족" />다이어트정보부족
						&nbsp;&nbsp; <input type="checkbox" name="diet_fail" value="운동부족" />운동부족
						&nbsp;&nbsp; <input type="checkbox" name="diet_fail" value="과식" />과식/야식
						&nbsp;&nbsp; <input type="checkbox" name="diet_fail" value="음주" />음주문화
						&nbsp;&nbsp; <input type="checkbox" name="diet_fail" value="의지박약" />의지박약
						&nbsp;&nbsp; <input type="checkbox" name="diet_fail" value="경험없음" />다이어트경험없음
						&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td>운동시작희망일자</td>
					<td><input type="date" name="hope_start" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>다이어트를하고싶은이유</td>
					<td><input type="radio" name="diet_reason" value="미모" />미모
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="diet_reason"
						value="다이어트" />다이어트 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="diet_reason" value="건강" />건강 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="diet_reason" value="체형교정" />체형교정
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="diet_reason"
						value="상관없음" />상관없음</td>
				</tr>
				<tr>
					<td>선호운동유형</td>
					<td><input type="checkbox" name="hope_exercise" value="요가" />요가
						&nbsp;&nbsp; <input type="checkbox" name="hope_exercise"
						value="필라테스" />필라테스 &nbsp;&nbsp; <input type="checkbox"
						name="hope_exercise" value="웨이트" />웨이트 &nbsp;&nbsp; <input
						type="checkbox" name="hope_exercise" value="맨몸운동" />맨몸운동
						&nbsp;&nbsp; <input type="checkbox" name="hope_exercise"
						value="상관없음" />상관없음</td>
				</tr>
				<tr>
					<td>하루운동가능량</td>
					<td><input type="radio" name="dat_exercise" value="1시간" />1시간
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="dat_exercise"
						value="2시간" />2시간 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="dat_exercise" value="3~5시간" />3~5시간 &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="dat_exercise" value="상관없음" />상관없음</td>
				</tr>
				<tr>
					<td>하루식사량</td>
					<td><input type="radio" name="dat_food" value="1끼" />1끼
						&nbsp;&nbsp;&nbsp;&nbsp; <input type="radio" name="dat_food"
						value="2끼" />2끼 &nbsp;&nbsp;&nbsp;&nbsp; <input type="radio"
						name="dat_food" value="3끼" />3끼 &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" name="dat_food" value="상관없음" />상관없음</td>
				</tr>
				<tr>
					<td>장애및질병여유</td>
					<td><input type="text" placeholder="장애 및 병명을 입력하세요"
						name="disease" class="form-control" /></td>
				</tr>
				<tr>
					<td>일일운동시간</td>
					<td><input type="text" placeholder="시간을 입력하세요" name="day_time"
						class="form-control" /></td>
				</tr> -->
				<tr></tr>
				<tr align="center">
					<td colspan="2" style="background:white !important;"><input type="submit" id="editSurveyBtn" value="다음 설문으로"/></td>
					<td></td>
				</tr>
			</table>

		</form>

	</div>
	
	
	
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>