<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 두번째</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_2_myPage_dietSurvey.css">
<style>


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
    <div class="progress-bar" role="progressbar" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100" style="width:65%; background:#ff7e9d; ">
      <span class="sr-only">65% Complete</span>
    </div>
  </div>

	<div class="outer">
		<br />
		
		<h1 id="font" align="center">설문조사</h1>
		<br />
		<form action="insert2.su" method="post">
		<input type="hidden" name="mNo" value="${ sessionScope.loginUser.mno }" />
			<table align="center" id="font" class="surveyTable">

				<!-- <tr>
					<td>개인 기초 정보 입력 사항</td>
				</tr>
				<tr>
					<td>키(Cm)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="height"
						class="form-control" autofocus /></td>
				</tr>
				<tr>
					<td>몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="weight"
						class="form-control" /></td>
				</tr>
				<tr>
					<td>목표 몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요"
						name="hope_weight" class="form-control" /></td>
				</tr>
				<tr>
					<td>나이 연령대</td>
					<td><input type="radio" name="uage" value="18" />18세 미만 &nbsp;
						<input type="radio" name="uage" value="24" />18 ~ 24세 &nbsp; <input
						type="radio" name="uage" value="34" />25 ~ 34세 &nbsp; <input
						type="radio" name="uage" value="44" />35 ~ 44세 &nbsp; <input
						type="radio" name="uage" value="54" />45 ~ 54세 &nbsp; <input
						type="radio" name="uage" value="55" />55세 이상</td>
				</tr> -->
				<!-- <tr>
					<td>
						<h2 id="font" align="center">다이어트 정보 첫번째</h2>
					</td>
				</tr> -->
				<tr>
					<td colspan="2" style="background:white !important;">
						<label class="surveyTitleLabel2"><br><i class="fa fa-check"></i> 다이어트 정보 두번째</label><br><br>
					</td>
				</tr>
				<!-- <tr>
					<td>희망다이어트 기간</td>
					<td><input type="radio" name="hopePeriod" value="1개월" id="hopePeriod1"/><label for="hopePeriod1">1개월</label> &nbsp;&nbsp;&nbsp;&nbsp;
					    <input type="radio" name="hopePeriod" value="3개월" id="hopePeriod2"/><label for="hopePeriod2">3개월</label> &nbsp;&nbsp;&nbsp;&nbsp; 
					    <input type="radio" name="hopePeriod" value="6개월" id="hopePeriod3"/><label for="hopePeriod3">6개월 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
					    <input type="radio" name="hopePeriod" value="1년이상" id="hopePeriod4"/><label for="hopePeriod4">1년 이상</label></td>
				</tr>
				<tr>
					<td>가장빼고싶은신체부위</td>
					<td><input type="checkbox" name="hopeBody" value="팔부위" id="hopeBody1"/><label for="hopeBody1">팔 부위</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="다리부위" id="hopeBody2"/><label for="hopeBody2">다리 부위</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="배부위" id="hopeBody3"/><label for="hopeBody3">배 부위 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="전신" id="hopeBody4"/><label for="hopeBody4">전신</label></td>
				</tr>
				<tr>
					<td>선호하는다이어트방법</td>
					<td><input type="radio" name="hopeMethod" value="의학적방법" id="hopeMethod1"/><label for="hopeMethod1">의학적방법(약,주사)</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="식단조절" id="hopeMethod2"/><label for="hopeMethod2">식단조절</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="운동" id="hopeMethod3"/><label for="hopeMethod3">운동 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="식단과운동" id="hopeMethod4"/><label for="hopeMethod4">식단과운동 </label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="상관없음" id="hopeMethod5"/><label for="hopeMethod5">상관없음</label></td>
				</tr>
				<tr>
					<td>선호하는트레이너성별</td>
					<td><input type="radio" name="hopeGender" value="남자" id="hopeGender1"/><label for="hopeGender1">남자</label> 	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeGender" value="여자" id="hopeGender2"/><label for="hopeGender2">여자</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeGender" value="상관없음" id="hopeGender3"/><label for="hopeGender3">상관없음</label></td>
				</tr>
				<tr>
					<td>선호하는트레이너연령</td>
					<td><input type="radio" name="hopeAge" value="20대" id="hopeAge1"/><label for="hopeAge1">20대</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge"	value="30대" id="hopeAge2"/><label for="hopeAge2">30대</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="hopeAge" value="40대" id="hopeAge3"/><label for="hopeAge3">40대</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge" value="50대이상" id="hopeAge4"/><label for="hopeAge4">50대 이상</label>  &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge" value="상관없음" id="hopeAge5"/><label for="hopeAge5">상관없음</label></td>
				</tr> -->
				
				<tr>
					<td class="td1">희망 다이어트 기간</td>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="defaultInline1r2" name="hopePeriod" value="1개월">
							<label class="custom-control-label" for="defaultInline1r2">1개월</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline2r2" name="hopePeriod" value="3개월">
						  	<label class="custom-control-label" for="defaultInline2r2">3개월</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline3r2" name="hopePeriod" value="6개월">
						  	<label class="custom-control-label" for="defaultInline3r2">6개월</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline4r2" name="hopePeriod" value="1년이상">
						  	<label class="custom-control-label" for="defaultInline4r2">1년 이상</label>
						</div>
						<!-- <input type="radio" name="hopePeriod" value="1개월" id="hopePeriod1"/><label for="hopePeriod1">1개월</label> &nbsp;&nbsp;&nbsp;&nbsp;
					    <input type="radio" name="hopePeriod" value="3개월" id="hopePeriod2"/><label for="hopePeriod2">3개월</label> &nbsp;&nbsp;&nbsp;&nbsp; 
					    <input type="radio" name="hopePeriod" value="6개월" id="hopePeriod3"/><label for="hopePeriod3">6개월 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
					    <input type="radio" name="hopePeriod" value="1년이상" id="hopePeriod4"/><label for="hopePeriod4">1년 이상</label> -->
					</td>
				</tr>				
				<tr>
					<td class="td1">가장 빼고싶은 신체부위</td>
					<td>
					
					<div class="custom-control custom-checkbox custom-control-inline">
						<input type="checkbox" class="custom-control-input" id="defaultInline1"  name="hopeBody" value="팔부위">
					 	<label class="custom-control-label" for="defaultInline1">팔 부위</label>
					</div>
					
					<div class="custom-control custom-checkbox custom-control-inline">
					  	<input type="checkbox" class="custom-control-input" id="defaultInline2" name="hopeBody" value="다리부위">
					  	<label class="custom-control-label" for="defaultInline2">다리 부위</label>
					</div>
					
					<div class="custom-control custom-checkbox custom-control-inline">
					  	<input type="checkbox" class="custom-control-input" id="defaultInline3" name="hopeBody" value="배부위">
					  	<label class="custom-control-label" for="defaultInline3">배 부위</label>
					</div>
					
					<div class="custom-control custom-checkbox custom-control-inline">
					  	<input type="checkbox" class="custom-control-input" id="defaultInline4" name="hopeBody" value="전신">
					  	<label class="custom-control-label" for="defaultInline4">전신</label>
					</div>
						
						<!-- <input type="checkbox" name="hopeBody" value="팔부위" id="hopeBody1"/><label for="hopeBody1">팔 부위</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="다리부위" id="hopeBody2"/><label for="hopeBody2">다리 부위</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="배부위" id="hopeBody3"/><label for="hopeBody3">배 부위 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="전신" id="hopeBody4"/><label for="hopeBody4">전신</label> -->
					</td>
				</tr>
				<tr>
					<td class="td1">선호하는 다이어트 방법</td>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="defaultInline1r3" name="hopeMethod" value="의학적방법">
							<label class="custom-control-label" for="defaultInline1r3">의학적방법</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline2r3" name="hopeMethod" value="식단조절">
						  	<label class="custom-control-label" for="defaultInline2r3">식단조절</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline3r3" name="hopeMethod" value="운동">
						  	<label class="custom-control-label" for="defaultInline3r3">운동</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline4r3" name="hopeMethod" value="식단과운동">
						  	<label class="custom-control-label" for="defaultInline4r3">식단과운동</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline5r3" name="hopeMethod" value="상관없음">
						  	<label class="custom-control-label" for="defaultInline5r3">상관없음</label>
						</div>
						
						<!-- <input type="radio" name="hopeMethod" value="의학적방법" id="hopeMethod1"/><label for="hopeMethod1">의학적방법(약,주사)</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="식단조절" id="hopeMethod2"/><label for="hopeMethod2">식단조절</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="운동" id="hopeMethod3"/><label for="hopeMethod3">운동 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="식단과운동" id="hopeMethod4"/><label for="hopeMethod4">식단과운동 </label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="상관없음" id="hopeMethod5"/><label for="hopeMethod5">상관없음</label> -->
					</td>
				</tr>
				<tr>
					<td class="td1">선호하는 트레이너 성별</td>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="defaultInline1r4" name="hopeGender" value="남자">
							<label class="custom-control-label" for="defaultInline1r4">남자</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline2r4" name="hopeGender" value="남자">
						  	<label class="custom-control-label" for="defaultInline2r4">여자</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline3r4" name="hopeGender" value="상관없음">
						  	<label class="custom-control-label" for="defaultInline3r4">상관없음</label>
						</div>
						<!-- <input type="radio" name="hopeGender" value="남자" id="hopeGender1"/><label for="hopeGender1">남자</label> 	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeGender" value="여자" id="hopeGender2"/><label for="hopeGender2">여자</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeGender" value="상관없음" id="hopeGender3"/><label for="hopeGender3">상관없음</label> -->
					</td>
				</tr>
				<tr>
					<td class="td1">선호하는 트레이너 연령</td>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" class="custom-control-input" id="defaultInline1r5" name="hopeAge" value="20대">
							<label class="custom-control-label" for="defaultInline1r5">20대</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline2r5" name="hopeAge" value="30대">
						  	<label class="custom-control-label" for="defaultInline2r5">30대</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline3r5" name="hopeAge" value="40대">
						  	<label class="custom-control-label" for="defaultInline3r5">40대</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline4r5" name="hopeAge" value="50대이상">
						  	<label class="custom-control-label" for="defaultInline4r5">50대이상</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
						  	<input type="radio" class="custom-control-input" id="defaultInline5r5" name="hopeAge" value="상관없음">
						  	<label class="custom-control-label" for="defaultInline5r5">상관없음</label>
						</div>
						<!-- <input type="radio" name="hopeAge" value="20대" id="hopeAge1"/><label for="hopeAge1">20대</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge"	value="30대" id="hopeAge2"/><label for="hopeAge2">30대</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="hopeAge" value="40대" id="hopeAge3"/><label for="hopeAge3">40대</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge" value="50대이상" id="hopeAge4"/><label for="hopeAge4">50대 이상</label>  &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge" value="상관없음" id="hopeAge5"/><label for="hopeAge5">상관없음</label> -->
					</td>
				</tr>
				
				<!-- <tr>
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
					<td colspan="2" style="background:white !important;"><input type="submit" id="editSurveyBtn" value="다음 설문으로 " /></td>
					<td></td>
				</tr>
			</table>

		</form>

	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>