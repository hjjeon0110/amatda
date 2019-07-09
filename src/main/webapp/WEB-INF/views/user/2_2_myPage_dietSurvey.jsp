<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/2_2_myPage_dietSurvey.css">
<style>
.outer {
	width: 1000px;
	height: 1150px;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
	
	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<jsp:include page="../user/2_myPageMenubar.jsp"/>
	
	
	<!-- 설문조사 -->
	<div class="outer">
		<br />
		
		<h1 id="font" align="center">설문조사 조회</h1>
		<br />
		<form action="update.su" method="post">
			<input type="hidden" name="mNo" value="${ sessionScope.loginUser.mno }" />
			<table align="center" id="font">
			<tbody>
			
			<c:forEach var="list" items="${ requestScope.list }">

				<tr>
					<td colspan="2">
						<h2 id="font" align="center">개인 기초 정보 입력 사항</h2>
					</td>
					<td></td>
				</tr>
				<tr>
					<td>키(Cm)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="height" class="form-control" value="${ list.height }"/></td>
					
				</tr>
				<tr>
					<td>몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="weight" class="form-control" value="${ list.weight }"/></td>
					
				</tr>
				<tr>
					<td>목표 몸무게(Kg)</td>
					<td><input type="text" placeholder="숫자만 입력하세요" name="hopeWeight" class="form-control" value="${ list.hopeWeight }"/></td>
					
				</tr>
				<tr>
					<td>나이 연령대</td>
					<td><input type="radio" class="uAge" name="uAge" value="18세미만" id="uAge1"/><label for="uAge1">18세 미만</label> &nbsp;
						<input type="radio" class="uAge" name="uAge" value="18~24세" id="uAge2"/><label for="uAge2">18 ~ 24세</label> &nbsp; 
						<input type="radio" class="uAge" name="uAge" value="25~34세" id="uAge3"/><label for="uAge3">25 ~ 34세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="35~44세" id="uAge4"/><label for="uAge4">35 ~ 44세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="45~54세" id="uAge5"/><label for="uAge5">45 ~ 54세 </label>&nbsp; 
						<input type="radio" class="uAge" name="uAge" value="55세이상" id="uAge6"/><label for="uAge6">55세 이상</label></td>
				</tr>
				<tr>
					<td colspan="2">
						<h2 id="font" align="center">다이어트 정보 </h2>
					</td>
					<td></td>
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
					<td><input type="date" name="hopeStart" class="form-control" value="${ list.hopeStart }"/></td>
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
					<td><input type="text" placeholder="장애 및 병명을 입력하세요" name="disease" class="form-control" value="${ list.disease }"/></td>
				</tr>
				<tr>
					<td>일일운동시간</td>
					<td><input type="text" placeholder="시간을 입력하세요" name="dayTime" class="form-control" value="${ list.dayTime }"/></td>
				</tr>
				</c:forEach>
				<%-- </c:forEach> --%>
				</tbody>
				<tr align="center">
					<td colspan="2"><input type="submit" value="수 정" /></td>
					<td></td>
				</tr>
				
			</table>
		</form>
	</div>

	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<script>
		//나이 연령대
		$(function(){
			$("input[name='uAge']").each(function(){
				if($(this).val() == "${requestScope.list[0].uAge}"){
					console.log("${requestScope.list[0].uAge}");
					console.log("성공!");
					$(this).attr("checked", true);
				}
			});
		});
		
		//희망기간
		$(function(){
			$("input[name='hopePeriod']").each(function(){
				if($(this).val() == "${requestScope.list[0].hopePeriod}"){
					console.log("오키");
					$(this).attr("checked", true);
				}
			});
		});		
		
		
		//신체부위
		$(function(){
			
			$("input[name='hopeBody']").each(function(index){
			
				//console.log("each문 실행");
				//console.log("지금 : " + $(this).val());
				
				var hopeBody = "${requestScope.list[0].hopeBody}".split(',');
				
				for(var i = 0; i < hopeBody.length; i++) {
					
					if($(this).val() == hopeBody[i]){
						console.log("체크체크");
						$(this).attr("checked", true);
					}
				}				
				
			});
		});
				
		
		//선호하는 다이어트 방법
		$(function(){				
			$("input[name='hopeMethod']").each(function(){
				if($(this).val() == "${requestScope.list[0].hopeMethod}") {
					console.log("성공2");
					$(this).attr("checked", true);
				} 
			});						
		});
		
	
		//선호하는 트레이너 성별
		$(function(){				
			$("input[name='hopeGender']").each(function(){
				if($(this).val() == "${requestScope.list[0].hopeGender}") {
					console.log("성공2");
					$(this).attr("checked", true);
				} 
			});						
		});
		
		//선호하는 트레이너 나이
		$(function(){				
			$("input[name='hopeAge']").each(function(){
				if($(this).val() == "${requestScope.list[0].hopeAge}") {
					console.log("성공2");
					$(this).attr("checked", true);
				} 
			});						
		});
				
		//다이어트 실패원인
		$(function(){			
			$("input[name='dietFail']").each(function(index){
			
				//console.log("each문 실행");
				//console.log("지금 : " + $(this).val());
				
				var dietFail = "${requestScope.list[0].dietFail}".split(',');
				
				for(var i = 0; i < dietFail.length; i++) {
					
					if($(this).val() == dietFail[i]){
						console.log("성공~");
						$(this).attr("checked", true);
					}
				}				
				
			});
		});
		
		
		//다이어트 이유
		$(function(){				
			$("input[name='dietReason']").each(function(){
				if($(this).val() == "${requestScope.list[0].dietReason}") {
					console.log("성공2");
					$(this).attr("checked", true);
				} 
			});						
		});
		
		//선호하는 운동 유형		
		$(function(){			
			$("input[name='hopeExercise']").each(function(index){
			
				//console.log("each문 실행");
				//console.log("지금 : " + $(this).val());
				
				var hopeExercise = "${requestScope.list[0].hopeExercise}".split(',');
				
				for(var i = 0; i < hopeExercise.length; i++) {
					
					if($(this).val() == hopeExercise[i]){
						console.log("성공~");
						$(this).attr("checked", true);
					}
				}				
				
			});
		});
		
		//하루 운동 가능량
		$(function(){				
			$("input[name='datExercise']").each(function(){
				if($(this).val() == "${requestScope.list[0].datExercise}") {
					console.log("성공2");
					$(this).attr("checked", true);
				} 
			});						
		});
		
		//하루식사량
		$(function(){				
			$("input[name='datFood']").each(function(){
				if($(this).val() == "${requestScope.list[0].datFood}") {
					console.log("성공2");
					$(this).attr("checked", true);
				} 
			});						
		});
		
		
	</script>
	
</body>
</html>