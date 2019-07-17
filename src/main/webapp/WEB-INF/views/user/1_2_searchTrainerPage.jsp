<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아맞다-셀프트레이너검색페이지</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user/1_2_searchTrainerPage.css">
</head>
<body>


	<!-- 메뉴바 include ----------------------------------------------------------------------------------------------------- -->
	<jsp:include page="../common/menubar.jsp"></jsp:include>
	
	
	<!-- 서브메뉴 영역 -------------------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1" onclick="location.href='showRecommendTrainerPageView.us?mno=${sessionScope.loginUser.mno}'">맞춤 트레이너 추천</div>
		<div class="subMenuBar2">셀프 트레이너 검색</div>
	</div>
	
	
	<!-- 키워드 검색 영역 ------------------------------------------------------------------------------------------------------ -->
	<div class="searchConditionDiv">
		<br><br>
		
		<table class="searchConditionTable">
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">서비스 키워드</td>
				<td class="searchConditionTableTd2">
					<input class='form-control' id="keywordInput" type="text">
				</td>
				<td class="searchConditionTableTd3">
					<button class="searchKeywordBtn"><i class="fa fa-search"></i></button>
				</td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">연령대</td>
				<td class="searchConditionTableTd2">
					<input id="searchTrainerAge" type="radio" name="hogeAge" value="전체" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="searchTrainerAge" type="radio" name="hogeAge" value="20대">&nbsp;20대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="searchTrainerAge" type="radio" name="hogeAge" value="30대">&nbsp;30대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="searchTrainerAge" type="radio" name="hogeAge" value="40대">&nbsp;40대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="searchTrainerAge" type="radio" name="hogeAge" value="50대">&nbsp;50대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<td class="searchConditionTableTd3"></td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">성별</td>
				<td class="searchConditionTableTd2">
					<input id="searchTrainerGender" type="radio" name="hogeGender" value="전체" checked="checked">&nbsp;전체&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="searchTrainerGender" type="radio" name="hogeGender" value="남자">&nbsp;남자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input id="searchTrainerGender" type="radio" name="hogeGender" value="여자">&nbsp;여자&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</td>
				<td class="searchConditionTableTd3"></td>
			</tr>
			<tr class="searchConditionTableTr">
				<td class="searchConditionTableTd1">이름</td>
				<td class="searchConditionTableTd2">
					<input class='form-control' id="searchTrainerName" type="text">
				</td>
				<td class="searchConditionTableTd3"></td>
			</tr>
		</table>
		<br><br>
	</div>


	<!-- 트레이너 리스트 영역 ---------------------------------------------------------------------------------------------------- -->
		
	<%-- <c:if test="${ empty searchTrainerList }">

		<div class="searchTrainerListNullDiv">
			<br><br>
			<label class="searchTrainerListNullLabel">검색된 트레이너 리스트가 없습니다.</label><br>
			<label class="searchTrainerListNullLabel" style="color:#ff0066;">다른 키워드를 통해 마음에 드는 트레이너를 찾아보세요!</label>
			<br><br><br>
		</div>
	
	</c:if> --%>
	
	<div class="searchTrainerListDiv"></div>
		
	<%-- <c:if test="${ !empty searchTrainerList }">
	
		<div class="searchTrainerListDiv">
			<br> 
			<select class="trainerSelect">
				<option>신규가입순</option>
				<option>매칭횟수순</option>
				<option>평점높은순</option>
				<option>최근활동순</option>
			</select> 
			<br><br>
			
			<c:forEach var="i" begin="0" end="${fn:length(searchTrainerList)-1}" varStatus="st">
		
				<div class="trainerListDiv">
					<table class="trainerListTable">
						<tr>
							<td rowspan="3" class="trainerListTableTd1">
								<div class="profileImg">
									<img class="profileImage" src="${ contextPath }/resources/images/profileImg.PNG">
								</div>
							</td>
							<td class="trainerListTableTd2">
								<label class="trainerName">${ searchTrainerList[i].name }</label>
								<label class="trainerGender">(${ searchTrainerList[i].trainerInfo.tage}, ${ searchTrainerList[i].gender})</label>
							</td>
							<td></td>
						</tr>
						<tr>
							<td><label class="trainerKeyword">${ searchTrainerList[i].profile.keyword }</label></td>
							<td></td>
						</tr>
						<tr>
							<td><label class="simpleProfile">${ searchTrainerList[i].profile.lineProfile}</label></td>
							<td class="trainerListTableTd1">
								<input type="hidden" value="${ searchTrainerList[i].mno }"/>
								<input type="hidden" value="${ searchTrainerList[i].name }"/>
								<button class="goProfileDetail">프로필 보기</button>
							</td>
						</tr>
					</table>
				</div>
				<br>
			</c:forEach>
		</div>
	
	</c:if>
 --%>

	<!-- footer -------------------------------------------------------------------------------------------------------- -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
	
	<script>
	
		$(".searchKeywordBtn").click(function() {
						
			var mno = ${ sessionScope.loginUser.mno };
			var searchServiceKeyword = $("#keywordInput").val();
			var searchTrainerAge = $("#searchTrainerAge:checked").val();
			var searchTrainerGender = $("#searchTrainerGender:checked").val();
			var searchTrainerName = $("#searchTrainerName").val();
			
			$.ajax({
				url:"selectSearchTrainerList.us",
				data:{mno:mno, searchServiceKeyword:searchServiceKeyword, searchTrainerAge:searchTrainerAge, searchTrainerGender:searchTrainerGender, searchTrainerName:searchTrainerName},
				success:function(data) {
					
					
					if(data[0] == null) {
						
						$(".searchTrainerListDiv").children().remove();
						$br = "<br>";
						$searchTrainerListNullDiv = $("<div class='searchTrainerListNullDiv'>");
						$searchTrainerListNullLabel1 = $("<label class='searchTrainerListNullLabel'>").text("검색된 트레이너 리스트가 없습니다.");
						$searchTrainerListNullLabel2 = $("<label class='searchTrainerListNullLabel' style='color:#ff0066;'>").text("다른 키워드를 통해 마음에 드는 트레이너를 찾아보세요!");
						
						$(".searchConditionDiv").append($searchTrainerListNullDiv);
						$searchTrainerListNullDiv.append($br);
						$searchTrainerListNullDiv.append($br);
						$searchTrainerListNullDiv.append($searchTrainerListNullLabel1);
						$searchTrainerListNullDiv.append($br);
						$searchTrainerListNullDiv.append($searchTrainerListNullLabel2);
						$searchTrainerListNullDiv.append($br);
						$searchTrainerListNullDiv.append($br);
						$searchTrainerListNullDiv.append($br);
						
											
					}else {
						
						$(".searchTrainerListDiv").children().remove();
						
						$br = "<br>";
						$searchTrainerListDiv = $(".searchTrainerListDiv");
						$trainerSelect = $("<select class='trainerSelect'>");
						$option1 = $("<option>").text("신규가입순");
						$option2 = $("<option>").text("매칭횟수순");
						$option3 = $("<option>").text("평점높은순");
						$option4 = $("<option>").text("최근활동순");
						
						$searchTrainerListDiv.append($br);
						$searchTrainerListDiv.append($trainerSelect);
						$trainerSelect.append($option1);
						$trainerSelect.append($option2);
						$trainerSelect.append($option3);
						$trainerSelect.append($option4);
						$searchTrainerListDiv.append($br);
						$searchTrainerListDiv.append($br);
						
						for(var i in data) {
							
							var src1 = "${ contextPath }/resources/uploadFiles/";
							var src2 = data[i].attachment.modiName;
							var src3 = data[i].attachment.extension;
							
							$br = "<br>";
							$nbsp = "&nbsp;";
							$searchTrainerListDiv = $(".searchTrainerListDiv");
							$trainerListDiv = $("<div class='trainerListDiv'>");
							$trainerListTable = $("<table class='trainerListTable'>")
							$trainerListTableTr1 = $("<tr>");
							$trainerListTableTd1 = $("<td class='trainerListTableTd1' rowspan='3'>");
							$trainerListTableTd11 = $("<td class='trainerListTableTd11'>");
							$profileImgDiv = $("<div class='profileImg'>");
							//$profileImage = $("<img class='profileImage' style='border-radius: 50%;' src='${ contextPath }/resources/uploadFiles/data[i].attachment.modiNamedata[i].attachment.extension'>");

							$profileImage = $("<img class='profileImage' style='border-radius: 50%;' src=''>");
							$profileImage.attr('src', src1 + src2 + src3);
							$trainerListTableTr2 = $("<tr>");
							$trainerListTableTd2 = $("<td class='trainerListTableTd2'>");
							$trainerName = $("<label class='trainerName'>").text(data[i].name);
							$trainerGender = $("<label class='trainerGender'>").text("( "+ data[i].trainerInfo.tage + ", " + data[i].gender + ")");
							$trainerListTableTd3 = $("<td class='trainerListTableTd3'>");
							$trainerListTableTr3 = $("<tr>");
							$trainerListTableTd4 = $("<td class='trainerListTableTd4'>");
							$trainerKeyword = $("<label class='trainerKeyword'>").text(data[i].profile.keyword);
							$trainerListTableTd5 = $("<td class='trainerListTableTd5'>");
							$simpleProfile = $("<label class='simpleProfile'>").text(data[i].profile.lineProfile);
							$tno = $("<input type='hidden'>").text(data[i].mno);
							$tname = $("<input type='hidden'>").text(data[i].name);
							$goProfileDetailBtn = $("<button class='goProfileDetail' id='tt' onclick='goProfileDetail(this)'>").text("프로필 보기");
																					
							$(".searchTrainerListNullDiv").remove();
							
							$searchTrainerListDiv.append($trainerListDiv);
							$trainerListDiv.append($trainerListTable);
							
							$trainerListTable.append($trainerListTableTr1);
							
								$trainerListTableTr1.append($trainerListTableTd1);
								$trainerListTableTd1.append($profileImgDiv);
								$profileImgDiv.append($profileImage);
								
								$trainerListTableTr1.append($trainerListTableTd2);
								$trainerListTableTd2.append($trainerName);
								$trainerName.after($nbsp);
								$trainerListTableTd2.append($trainerGender);
								
								$trainerListTableTr1.append($trainerListTableTd3);
							
							$trainerListTable.append($trainerListTableTr2);
							
								$trainerListTableTr2.append($trainerListTableTd4);
								$trainerListTableTd4.append($trainerKeyword);
								
								$trainerListTableTr2.append($trainerListTableTd3);
							
							$trainerListTable.append($trainerListTableTr3);
							
								$trainerListTableTr3.append($trainerListTableTd5);
								$trainerListTableTd5.append($simpleProfile);
								$trainerListTableTr3.append($trainerListTableTd11);
								$trainerListTableTd11.append($tno);
								$trainerListTableTd11.append($tname);
								$trainerListTableTd11.append($goProfileDetailBtn);
							
							$searchTrainerListDiv.append($br); 

						}	
					}
				}
			});
		}); 
		
		function goProfileDetail(value) {
						
			var mno = ${ sessionScope.loginUser.mno };
			var tno = $(value).parent().children().eq(0).text();
			var tname = $(value).parent().children().eq(1).text();
			console.log(tno);
			console.log(tname);
			
			location.href='showProfileDetailPageView.us?mno=' + mno + "&tno=" + tno + '&tname=' + tname;
		}


	</script>
</body>
</html>