<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 리스트</title>
<style>
.outer {
	width: 1000px;
	height: 800px;
	/* background:#ffe6f3; */
	background-image: url(${ contextPath }/resources/images/background.jpg);
	background-repeat: no-repeat;
	background-position: top center;
	background-size: 100% 800px;
	margin-left: auto; margin-right : auto;
	margin-top: 50px;
	margin-bottom: 50px;
	margin-right: auto;
}

.listArea {
	width: 900px;
	height: 350px;
	margin: 0 auto;
	border-spacing: 10px;
}
</style>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<div class="outer">
		<br>
		<h1 id="fontEng" align="center">Diary Insert</h1>
		<br /> <br /> <br />

		<div class="listArea">
			<table class="table table-hover">
				<thead>
					<tr>
						<th></th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>참견</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox" name="checkList" value="" /></td>
						<td>10</td>
						<td>10일째 다이어트</td>
						<td>2019/06/23</td>
						<td></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="checkList" value="" /></td>
						<td>10</td>
						<td>9일째 다이어트</td>
						<td>2019/06/22</td>
						<td>0</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="checkList" value="" /></td>
						<td>10</td>
						<td>8일째 다이어트</td>
						<td>2019/06/21</td>
						<td>0</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- <div class="paging" align="center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div> -->
	</div>


	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>