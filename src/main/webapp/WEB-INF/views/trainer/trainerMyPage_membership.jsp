<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<style>
	#myPageMenu4 {
		background:#ff0066;
		color:white;
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
				


			</div>
			
			<!-- 오른쪽 빈공간 -->
			<div class="col-sm-1 sidenav"></div>
			
		</div>

	</div>
</body>
</html>