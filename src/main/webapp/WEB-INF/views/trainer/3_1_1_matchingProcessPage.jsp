<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
.btn {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 14px;
	border-style: none;
	background: #ff0066;
	color: white;
	border-radius:0 !important;
}

.btn btn-primary:hover {
	background: white;
	color: #ff0066;
	border: 1px solid #ff0066;
}

label {
	font-weight:100;
	margin-bottom:0px;
}
.menubarLi3 {
	color: #ff0066;
}

.subMenuBarDiv {
	width: 100%;
	height: 72px;
	font-family: 'Noto Sans KR', sans-serif;
	border-top: 1px solid lightgray;
}

.subMenuBar1 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: #ff0066;
	color: white;
	margin-left: 2px;
	margin-right: -4px;
}

.subMenuBar2 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
}

.subMenuBar2:hover {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	color: #ff0066;
	cursor: pointer;
}

.subTitle {
	font-size:16px;
	font-family: 'Noto Sans KR', sans-serif;
}
.searchUserListDiv {
	width: 100%;
	height: 100%;
	text-align: center;
}

.matchingTitle {
	font-family: 'Noto Sans KR', sans-serif;
}

.userList {
	width: 90%;
	border: 1px solid lightgray;
	margin-left: auto;
	margin-right: auto;
	padding: 10px;
	background: white;
	text-align: left;
}

.userListTable {
	width: 100%;
	margin-left: auto;
	margin-right: auto;
	background: white;
	font-family: 'Noto Sans KR', sans-serif;
}

.profileImg {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	border: 2px solid white;
	margin-left: auto;
	margin-right: auto;
}

.profileImage {
	width: 100%;
	height: 100%;
}

.userListTable td {
	padding: 5px;
	font-size: 14px;
}

.trainerListTableTd1 {
	width: 15%;
	align: center;
}

.trainerListTableTd2 {
	width: 70%;
}

.userName {
	font-weight: bold;
}

.userGender {
	color: lightgray;
}

.userKeyword {
	color: #ff0066;
}

.showSurveyBtn {
	border-style: none;
	background: #ffe6f3;
	color: #ff0066;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
}

.showSurveyBtn:hover {
	border-style: none;
	background: white;
	color: #ff0066;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
	border: 1px solid #ff0066;
	cursor: pointer;
}

.goMatchingProcessBtn {
	border-style: none;
	background: #ff0066;
	color: white;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
}

.goMatchingProcessBtn:hover {
	border-style: none;
	background: white;
	color: #ff0066;
	border: 1px solid #ff0066;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
	cursor: pointer;
}

.matchingStepNum {
	font-size: 30px;
	font-family: 'Montserrat', sans-serif;
	font-weight: 800;
}

@import url(http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700);

body {
    margin:40px;
    font-family: 'Roboto Condensed', sans-serif;
    background: #16A085;
    
}

.head {
    color: #ECF0F1;
}

.board {
    width: 100%;
    height: auto;
    margin: 20px auto;
    background: #fefefe;
    border-radius: 8px 8px 0 0;
}

.board .nav-tabs {
    position: relative;
    margin: 40px auto;
    margin-bottom: 0;
    box-sizing: border-box;
}

.liner {
    height: 2px;
    background: #ff0066;
    position: absolute;
    width: 80%;
    margin: 0 auto;
    left: 0;
    right: 0;
    top: 50%;
    z-index: 1;
}

.nav-tabs > li {
    width: 25%;
    border-bottom:0.5px solid white;
}

.nav-tabs > li:after {
    content: " ";
    position: absolute;
    opacity: 0;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #ff0066;
    transition: left 1s;
}

.nav-tabs > li.active:after {
    left: calc(50% - 10px);
    opacity: 1;
}

.nav-tabs > li[rel-index="-1"]:after {
    left: calc(50% + 100% - 10px);
}

.nav-tabs > li[rel-index="-2"]:after {
    left: calc(50% + 200% - 10px);
}

.nav-tabs > li[rel-index="-3"]:after {
    left: calc(50% + 300% - 10px);
}

.nav-tabs > li[rel-index="1"]:after {
    left: calc(50% - 100% - 10px);
}

.nav-tabs > li[rel-index="2"]:after {
    left: calc(50% - 200% - 10px);
}

.nav-tabs > li[rel-index="3"]:after {
    left: calc(50% - 300% - 10px);
}

.nav-tabs > li a {
    width: 70px;
    height: 70px;
    line-height: 70px;
    margin: 20px auto;
    border-radius: 100%;
    padding: 0;
    background:white;
	border-style:none;
}

.nav-tabs > li a:hover{
    background: transparent;
}

.nav-tabs > li span {
    width: 70px;
    height: 70px;
    line-height: 70px;
    display: inline-block;
    border-radius: 100px;
    background: white;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
    font-family: 'Montserrat', sans-serif;
}

.nav-tabs > li:nth-of-type(1) span {
    color: #ff0066;
    border: 1.5px solid #ff0066;
}

.nav-tabs > li:nth-of-type(1).active span {
    color: #ff0066;
    background: white;
}

.nav-tabs > li:nth-of-type(2) span {
    color: #ff0066;
    border: 1.5px solid #ff0066;
}

.nav-tabs > li:nth-of-type(2).active span {
    color: #fff;
    background: #ff0066;
}

.nav-tabs > li:nth-of-type(3) span {
    color: #ff0066;
    border: 1.5px solid #ff0066;
}

.nav-tabs > li:nth-of-type(3).active span {
    color: #fff;
    background: #ff0066;
}

.nav-tabs > li:nth-of-type(4) span {
    color: #ff0066;
    border: 1.5px solid #ff0066;
}

.nav-tabs > li:nth-of-type(4).active span {
    color: #fff;
    background: #ff0066;
}

.nav-tabs > li > a.disabled {
    opacity: 1;
}

.nav-tabs > li > a.disabled span {
    border-color: #ddd;
    color: #aaa;
}

div#step-1 {
    background: #fff;
}

div[role="tabpanel"]:after {
    content: "";
    display: block;
    clear: both;
}

.matchingStepDiv {
	width:100%;
	text-align:center;
	margin-top:-20px;
}
.matchingStep {
	width:150px;
	text-align:center;
	background:#ff0066;
	display:inline-block;
	color:white;
	padding:10px;
}

.matchingProcessDetail {
	width:100%;
	height:250px;
	background:#ffe6f3;
	text-align:center;
}
.goNextProcessBtn {
	width:200px;
	height:30px;
	background:#ff0066;
	color:white;
	font-size:14px;
	font-family: 'Noto Sans KR', sans-serif;
	border-style:none;
}
</style>
</head>
<body>
	
	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<div class="subMenuBarDiv">
		<div class="subMenuBar1">매칭 진행 회원</div>
		<div class="subMenuBar2" onclick="location.href='goMatchingCompletePage.tr'">매칭 완료 회원</div>
	</div>
	
	<div class="searchUserListDiv">
		<br>
		<label class="subTitle">회원1님과의 매칭 단계</label>
		<br><br>
		<div class="userList">
			<table class="userListTable" >
				<tr>
					<td rowspan="3" class="userListTableTd1">
						<div class="profileImg"><img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG"></div>
					</td>
					<td class="trainerListTableTd2">
						<label class="userName">회원1</label>
						<label class="userGender">(남)</label>
					</td>
					<td></td>
				</tr>
				<tr>
					<td><label class="userKeyword">#키워드</label></td>
					<td><button class="showSurveyBtn">요청서 보기</button></td>
				</tr>
				<tr>
					<td><label class="userSurvey">운동 시작가능일 : 19/06/13, 운동 가능 시간 : 18:00 - 22:00, 키 : 180cm, 몸무게 : 100kg, 목표감량치 : 20kg</label></td>
					<td class="trainerListTableTd1"><button class="goMatchingProcessBtn">매칭 진행중</button></td>
				</tr>
			</table>
		</div>
		<br>	
	</div>
		
		
		
	<!-- 매칭 프로세스 영역 -------------------------------------------------------------------------------------------------------------------- -->

	<div class="board">
		<ul class="nav nav-tabs">
			<div class="liner"></div>
			<li rel-index="0" class="active">
				<a href="#step-1" class="btn" aria-controls="step-1" role="tab" data-toggle="tab">
					<span>1</span>
				</a>
			</li>
			<li rel-index="1">
				<a href="#step-2" class="btn disabled" aria-controls="step-2" role="tab" data-toggle="tab"> 
					<span>2</span>
				</a>
			</li>
			<li rel-index="2">
				<a href="#step-3" class="btn disabled" aria-controls="step-3" role="tab" data-toggle="tab">
					<span>3</span>
				</a>
			</li>
			<li rel-index="3">
				<a href="#step-4" class="btn disabled" aria-controls="step-4" role="tab" data-toggle="tab">
					<span>4</span>
				</a>
			</li>
		</ul>
	</div>
	<div class="matchingStepDiv">
		<div class="matchingStep">견적서 보내기</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="matchingStep">매칭 수락하기</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="matchingStep">입금 확인하기</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="matchingStep">PT 시작하기</div>
	</div>
	
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="step-1">
			<button id="step-1-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
		</div>
		<div role="tabpanel" class="tab-pane" id="step-2">
			<button id="step-2-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
		</div>
		<div role="tabpanel" class="tab-pane" id="step-3">
			<button id="step-3-next" class="btn btn-lg btn-primary nextBtn pull-right">Next</button>
		</div>
		<div role="tabpanel" class="tab-pane" id="step-4">
			<button id="step-4-next" class="btn btn-lg btn-primary pull-right">Next</button>
		</div>
	</div>
	<br><br>
	
	
	<div class="matchingProcessDetail">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<button class="goNextProcessBtn">다음 단계</button>
	</div>
	

	
	<!-- footer ----------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	
	<script>
	$(function() {
	    // Nav Tab stuff

	    
	    
	    $('.nav-tabs > li > a').click(function() {
	        if($(this).hasClass('disabled')) {
	            return false;
	        } else {
	            var linkIndex = $(this).parent().index() - 1;
	            $('.nav-tabs > li').each(function(index, item) {
	                $(this).attr('rel-index', index - linkIndex);
	            });
	        }
	    });
	    $('#step-1-next').click(function() {
	        // Check values here
	        var isValid = true;
	        
	        if(isValid) {
	            $('.nav-tabs > li:nth-of-type(2) > a').removeClass('disabled').click();
	        }
	    });
	    $('#step-2-next').click(function() {
	        // Check values here
	        var isValid = true;
	        
	        if(isValid) {
	            $('.nav-tabs > li:nth-of-type(3) > a').removeClass('disabled').click();
	        }
	    });
	    $('#step-3-next').click(function() {
	        // Check values here
	        var isValid = true;
	        
	        if(isValid) {
	            $('.nav-tabs > li:nth-of-type(4) > a').removeClass('disabled').click();
	        }
	    });
	});
	</script>
	
</body>
</html>