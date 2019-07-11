<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
.menubarLi5 {
	color: #ff0066;
}

#myPageMenu3 {
	background: #ff0066;
	color: white;
}
.trainerListDiv {
	width: 90%;
	border: 0.5px solid darkgray;
	margin-left: auto;
	margin-right: auto;
	padding: 10px;
	background: white;
}

.trainerListTable {
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

.trainerListTable td {
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

.trainerName {
	font-weight: bold;
}

.trainerGender {
	color: darkgray;
}

.trainerKeyword {
	color: #ff0066;
}

.simpleProfile {
	font-size: 13px;
}

.goProfileDetail {
	border-style: none;
	background: #ffe6f3;
	color: #ff0066;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
}

.goProfileDetail:hover {
	border:0.5px solid #ff0066;
	background:white;
	color:#ff0066;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
	cursor:pointer;
}
.matchingStartBtn {
	border-style: none;
	background: #ff0066;
	color: white;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
}
.matchingStartBtn:hover {
	border:0.5px solid #ff0066;
	background:white;
	color:#ff0066;
	margin-left: auto;
	margin-right: auto;
	width: 100px;
	cursor:pointer;
}
</style>
</head>
<body>

	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<jsp:include page="../user/2_myPageMenubar.jsp"/>
	
	<br><br><br>
	
	<div class="trainerListDiv">
					<input type="hidden" class="tname">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg">
									<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
								</div>
							</td>
							<td class="trainerListTableTd2">
								<label class="trainerName">${ selectOneMyTrainer.name }</label>
								<label class="trainerGender">(${ selectOneMyTrainer.trainerInfo.tage}, ${ selectOneMyTrainer.gender})</label>
							</td>
							<td></td>
						</tr>
						<tr>
							<td><label class="trainerKeyword">${ selectOneMyTrainer.profile.keyword }</label></td>
							<td><button class="goProfileDetail">매칭 시작하기</button></td>
						</tr>
						<tr>
							<td><label class="simpleProfile">${ selectOneMyTrainer.profile.lineProfile}</label></td>
							<td class="trainerListTableTd1">
								<input type="hidden" value="${ selectOneMyTrainer.mno }">
								<input type="hidden" value="${ selectOneMyTrainer.name }">
								<button class="matchingStartBtn">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>

</body>
</html>