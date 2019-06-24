<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>갤러리 리스트</title>
<style>
.outer {
	width: 1000px;
	height: 700px;
	background: #ffe6f3;
	color: #ff0066;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}

.galleryArea {
	width: 760px;
	height: 550px;
	margin: 0 auto;
}
/* .searchArea{
		width:420px;
		margin:0 auto;
	} */
.galleryList {
	width: 220px;
	border: 1px solid #ff0066;
	display: inline-block;
	margin: 10px;
	align: center;
}

.galleryList:hover {
	opacity: 0.8;
	cursor: pointer;
}

#font {
	font-family: 'Noto Sans KR', sans-serif;
}

#fontEng {
	font-family: 'Montserrat', sans-serif;
}
</style>
</head>
<body>

	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<div class="outer">
		<br />
		<h2 id="fontEng" align="center">Gallery List</h2>

		<div class="galleryArea">
			<%-- <% for(int i=0; i< list.size(); i++){
				HashMap<String, Object> hmap = list.get(i);
				%> --%>

			<div class="galleryList" align="center">
				<div>
					<input type="hidden" value="<%-- <%= hmap.get("bid") %> --%>" /> <img
						src="${ contextPath }/resources/images/pushup.JPG<%-- <%=hmap.get("changeName")%> --%>"
						width="200px" height="150px" />
					<%-- <% 
						System.out.println(hmap.get("changeName"));
						%> --%>
				</div>
				<p id="font">
					제 목 :
					<%-- <%= hmap.get("bno")%> <%= hmap.get("btitle")%> --%>
					다이어트5일째! <br /> 등록일 :
					<%-- <%= hmap.get("bcount") %> --%>
					19/06/23
				</p>


			</div>
			<%-- <% } %> --%>

		</div>



	</div>

	<%-- <script>
			$(function(){
				$(".galleryList").click(function(){
					var num = $(this).children().children().eq(0).val();
					console.log(num);
					location.href="<%= request.getContextPath()%>/selectOne.tn?num=" + num;
				});
			});
		</script> --%>



	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>