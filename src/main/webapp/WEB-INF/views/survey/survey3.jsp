<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 세번째</title>
<style>
.outer {
	width: 1000px;
	height: 750px;
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
    <div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width:100%; background:#ff0066;">
      <span class="sr-only">100% Complete</span>
    </div>
  </div>

	<div class="outer">
		<br />
		
		<h1 id="font" align="center">설문조사</h1>
		<br />
		<form action="insert3.su" method="post">
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
						<h2 id="font" align="center">다이어트 정보 두번째</h2>
					</td>
				</tr>
				<tr></tr>
				<!-- <tr>
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
				</tr> -->
				<tr>
					<td>앞선다이어트실패원인</td>
					<td><input type="checkbox" name="dietFail" value="다이어트정보부족" id="dietFail1"/><label for="dietFail1">다이어트정보부족 </label>&nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="운동부족" id="dietFail2"/><label for="dietFail2">운동부족</label> &nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="과식" id="dietFail3"/><label for="dietFail3">과식/야식 </label>&nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="음주" id="dietFail4"/><label for="dietFail4">음주문화</label>	&nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="의지박약" id="dietFail5"/><label for="dietFail5">의지박약 </label>&nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="경험없음" id="dietFail6"/><label for="dietFail6">다이어트경험없음</label>	&nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td>운동시작희망일자</td>
					<td><input type="date" name="hopeStart" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>다이어트를하고싶은이유</td>
					<td><input type="radio" name="dietReason" value="미모" id="dietReason1"/><label for="dietReason1">미모</label>	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="dietReason" value="다이어트" id="dietReason2"/><label for="dietReason2">다이어트</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="dietReason" value="건강" id="dietReason3"/><label for="dietReason3">건강</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="dietReason" value="체형교정" id="dietReason4"/><label for="dietReason4">체형교정 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="dietReason" value="상관없음" id="dietReason5"/><label for="dietReason5">상관없음</label>
					</td>
				</tr>
				<tr>
					<td>선호운동유형</td>
					<td><input type="checkbox" name="hopeExercise" value="요가" id="hopeExercise1"/><label for="hopeExercise1">요가</label> &nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise"	value="필라테스" id="hopeExercise2"/><label for="hopeExercise2">필라테스</label> &nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise" value="웨이트" id="hopeExercise3"/><label for="hopeExercise3">웨이트 </label>&nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise" value="맨몸운동" id="hopeExercise4"/><label for="hopeExercise4">맨몸운동 </label>&nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise"	value="상관없음" id="hopeExercise5"/><label for="hopeExercise5">상관없음</label>
					</td>
				</tr>
				<tr>
					<td>하루운동가능량</td>
					<td><input type="radio" name="datExercise" value="1시간" id="datExercise1"/><label for="datExercise1">1시간</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="datExercise" value="2시간" id="datExercise2"/><label for="datExercise2">2시간</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="datExercise" value="3~5시간" id="datExercise3"/><label for="datExercise3">3~5시간 </label>&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="datExercise" value="상관없음" id="datExercise4"/><label for="datExercise4">상관없음</label></td>
				</tr>
				<tr>
					<td>하루식사량</td>
					<td><input type="radio" name="datFood" value="1끼" id="datFood1"/><label for="datFood1">1끼</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="datFood"	value="2끼" id="datFood2"/><label for="datFood2">2끼</label> &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="datFood" value="3끼" id="datFood3"/><label for="datFood3">3끼 </label>&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="datFood" value="상관없음" id="datFood4"/><label for="datFood4">상관없음</label>
					</td>
				</tr>
				<tr>
					<td>장애및질병여유</td>
					<td>
						<input type="text" placeholder="장애 및 병명을 입력하세요" name="disease" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>일일운동시간</td>
					<td>
						<input type="text" placeholder="시간을 입력하세요" name="dayTime" class="form-control" />
					</td>
				</tr>
				<tr></tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="등록" /></td>
					<td></td>
				</tr>
			</table>

		</form>

	</div>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>