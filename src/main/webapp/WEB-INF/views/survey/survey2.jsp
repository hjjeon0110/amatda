<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 두번째</title>
<style>
.outer {
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
}

td {
	height: 60px;
	
	/* border: 1px solid #ff0066; */
}

#font {
	font-family: 'Noto Sans KR', sans-serif;
}

.progress{
	margin:0 auto; 
	margin-top:20px;
}

</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
			<table align="center" id="font">

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
				<tr>
					<td>
						<h2 id="font" align="center">다이어트 정보 첫번째</h2>
					</td>
				</tr>
				<tr>
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
					<td colspan="2"><input type="submit" value="다음 설문으로 이동" /></td>
					<td></td>
				</tr>
			</table>

		</form>

	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>