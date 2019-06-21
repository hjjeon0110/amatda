<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<style>
#myPageMenu1 {
	background: #ff0066;
	color: white;
}

.profile {
	width: 100%;
	height: 300px;
	background: #ffe6f3;
}

.test {
	width: 100%;
	height: 1000px;
}

.subTitle {
	font-size: 20px;
	font-family: 'Noto Sans KR', sans-serif;
	color: black;
}

.traineProfile {
	width: 100%;
	height: 100%;
	position: relative;
}

.traineProfileTable {
	width: 100%;
	height: 100%;
	margin-left: auto;
	margin-right: auto;
	position: relative;
	font-family: 'Noto Sans KR', sans-serif;
}

.traineProfileTable td {
	padding: 5px;
}

.traineProfileTableTd1 {
	width: 30%;
	text-align: center;
}

.traineProfileTableTd2 {
	width: 40%;
	font-weight:bold;
}

.traineProfileTableTd2Label {
	font-size:30px;
	
}

.goProfileDetail {
	border-style: none;
	background: #ff0066;
	color: white;
	margin-left: auto;
	margin-right: auto;
	width: 130px;
}

.profileImg {
	margin-left:30px; 
	width:80%; 
	height:80%; 
	border-radius:50%; 
	background:white; 
	border: 2px solid white;
}

.badge {
	font-family: 'Noto Sans KR', sans-serif;
	background:#ffe6f3;
}

</style>
</head>
<body>


	<jsp:include page="../common/menubar.jsp"/>
	
	<jsp:include page="../trainer/trainerMyPageMenubar.jsp"/>
	
	<div class="container-fluid text-center">
		<div class="row content">
			
			<!-- 왼쪽 빈공간 -->
			<div class="col-sm-1 sidenav" id="leftNav">
			</div>

			<div class="col-sm-10 text-left">
			<%-- ---------------------------------------------- 여기만 작성하세요 ---------------------------------------------- --%>
				<br><br><br>
				<label class="subTitle">트레이너3님의 프로필</label>
				<br><br>
				<div class="profile">
				
					<div class="traineProfile">
						<table class="traineProfileTable" >
							<tr>
								<td rowspan="3" class="traineProfileTableTd1">
									<div class="profileImg"></div>
								</td>
								<td class="traineProfileTableTd2"><br><label class="traineProfileTableTd2Label">프로필 제목</label></td>
								<td></td>
							</tr>
							<tr>
								<td><br>평점 5.0 | 리뷰 10<br><br>한 줄 프로필</td>
								<td class="traineProfileTableTd1"><br><br><br><button class="goProfileDetail">프로필 수정하기</button></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
							</tr>
						</table>
					</div>
					
				</div>
				
				
				<br><br><br>
				<label class="subTitle">미디어</label>
				
				
				<br><br><br>
				<label class="subTitle">서비스 키워드</label><br>
				<span class="badge badge-pill badge-danger"> #키워드1 </span>&nbsp;
				<span class="badge badge-pill badge-danger"> #키워드2 </span>&nbsp;
				<span class="badge badge-pill badge-danger"> #키워드3 </span>&nbsp;
				<span class="badge badge-pill badge-danger"> #키워드4 </span>&nbsp;
				<span class="badge badge-pill badge-danger"> #키워드5 </span>
				
				
				<br><br><br>
				<label class="subTitle">트레이너 소개</label>
				
				
				<br><br><br>
				<label class="subTitle">자격증 및 사업등록증</label>
				
				
				<br><br><br>
				<label class="subTitle">리뷰</label>
				
				
				<div class="test"></div>
				
				
				
				
			</div>
			
			<!-- 오른쪽 빈공간 -->
			<div class="col-sm-1 sidenav"></div>
			
		</div>

	</div>
</body>
</html>