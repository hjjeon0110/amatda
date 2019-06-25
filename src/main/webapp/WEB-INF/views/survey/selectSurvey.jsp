<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문조사 조회</title>
<style>
.outer {
	width: 1000px;
	height: 1400px;
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
	height: 50px;
	/* border: 1px solid #ff0066; */
}

#font {
	font-family: 'Noto Sans KR', sans-serif;
}

/* .progress{
	margin:0 auto; 
	margin-top:20px;
	
} */


</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<!-- <div class="progress" style=" height:30px">
    <div class="progress-bar" role="progressbar" aria-valuenow="33" aria-valuemin="0" aria-valuemax="100" style="width:33%; background:pink;">
      <span class="sr-only">33% Complete</span>
    </div>
  </div> -->

	<div class="outer">
		<br />
		
		<h1 id="font" align="center">설문조사 조회</h1>
		<br />
		<form action="update.su" method="post">
			<table align="center" id="font">

				<tr>
					<td>
						<h1 align="center">개인 기초 정보</h1>
					</td>
				</tr>
				<tr>
					<td>키(Cm)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="height" class="form-control" autofocus /></td>
				</tr>
				<tr>
					<td>몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="weight" class="form-control" /></td>
				</tr>
				<tr>
					<td>목표 몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="hopeWeight" class="form-control" /></td>
				</tr>
				<tr>
					<td>나이 연령대</td>
					<td><input type="radio" class="uAge" name="uAge" value="18세미만" />18세 미만 &nbsp;
						<input type="radio" class="uAge" name="uAge" value="18~24세" />18 ~ 24세 &nbsp; 
						<input type="radio" class="uAge" name="uAge" value="25~34세" />25 ~ 34세 &nbsp; 
						<input type="radio" class="uAge" name="uAge" value="35~44세" />35 ~ 44세 &nbsp; 
						<input type="radio" class="uAge" name="uAge" value="45~54세" />45 ~ 54세 &nbsp; 
						<input type="radio" class="uAge" name="uAge" value="55세이상" />55세 이상</td>
				</tr>
				<tr>
					<td>
						<h1 align="center">다이어트 정보</h1>
					</td>
				</tr>
				<tr>
					<td>희망다이어트 기간</td>
					<td><input type="radio" name="hopePeriod" value="1개월" />1개월 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopePeriod" value="3개월" />3개월 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopePeriod" value="6개월" />6개월 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopePeriod" value="1년이상" />1년 이상
					</td>
				</tr>
				<tr>
					<td>가장빼고싶은신체부위</td>
					<td><input type="checkbox" name="hopeBody" value="팔부위" />팔 부위 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="다리부위" />다리 부위 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="배부위" />배 부위 	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="checkbox" name="hopeBody" value="전신" />전신
					</td>
				</tr>
				<tr>
					<td>선호하는다이어트방법</td>
					<td><input type="radio" name="hopeMethod" value="의학적방법" />의학적방법(약,주사) &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="식단조절" />식단조절 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="hopeMethod" value="운동" />운동 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="식단과운동" />식단과운동	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeMethod" value="상관없음" />상관없음
					</td>
				</tr>
				<tr>
					<td>선호하는트레이너성별</td>
					<td><input type="radio" name="hopeGender" value="남자" />남자	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeGender" value="여자" />여자 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="hopeGender" value="상관없음" />상관없음
					</td>
				</tr>
				<tr>
					<td>선호하는트레이너연령</td>
					<td><input type="radio" name="hopeAge" value="20대" />20대 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge"	value="30대" />30대 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="hopeAge" value="40대" />40대 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge" value="50대이상" />50대 이상	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="hopeAge"	value="상관없음" />상관없음
					</td>
				</tr>
				<tr>
					<td>앞선다이어트실패원인</td>
					<td><input type="checkbox" name="dietFail" value="다이어트정보부족" />다이어트정보부족 &nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="운동부족" />운동부족 &nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="과식" />과식/야식 &nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="음주" />음주문화	&nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="의지박약" />의지박약 &nbsp;&nbsp; 
						<input type="checkbox" name="dietFail" value="경험없음" />다이어트경험없음 &nbsp;&nbsp;
					</td>
				</tr>
				<tr>
					<td>운동시작희망일자</td>
					<td><input type="date" name="hopeStart" class="form-control" /></td>
				</tr>
				<tr>
					<td>다이어트를하고싶은이유</td>
					<td><input type="radio" name="dietReason" value="미모" />미모	&nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="dietReason" value="다이어트" />다이어트 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="dietReason" value="건강" />건강 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="dietReason" value="체형교정" />체형교정 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="dietReason" value="상관없음" />상관없음
					</td>
				</tr>
				<tr>
					<td>선호운동유형</td>
					<td><input type="checkbox" name="hopeExercise" value="요가" />요가 &nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise"	value="필라테스" />필라테스 &nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise" value="웨이트" />웨이트 &nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise" value="맨몸운동" />맨몸운동 &nbsp;&nbsp; 
						<input type="checkbox" name="hopeExercise"	value="상관없음" />상관없음
					</td>
				</tr>
				<tr>
					<td>하루운동가능량</td>
					<td><input type="radio" name="datExercise" value="1시간" />1시간 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="datExercise"	value="2시간" />2시간 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="datExercise" value="3~5시간" />3~5시간 &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="datExercise" value="상관없음" />상관없음
					</td>
				</tr>
				<tr>
					<td>하루식사량</td>
					<td><input type="radio" name="datFood" value="1끼" />1끼  &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="datFood"	value="2끼" />2끼 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio"	name="datFood" value="3끼" />3끼 &nbsp;&nbsp;&nbsp;&nbsp; 
						<input type="radio" name="datFood" value="상관없음" />상관없음
					</td>
				</tr>
				<tr>
					<td>장애및질병여유</td>
					<td><input type="text" placeholder="장애 및 병명을 입력하세요" name="disease" class="form-control" /></td>
				</tr>
				<tr>
					<td>일일운동시간</td>
					<td><input type="text" placeholder="시간을 입력하세요" name="dayTime" class="form-control" /></td>
				</tr>
				<tr align="center">
					<td><input type="submit" value="수 정" /></td>
				</tr>
			</table>
		</form>
	</div>
	
	
	
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>