<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
 -->
<style type="text/css">

/* table{
border:1px solid black; 
} */


a:link {text-decoration: none; color:black;}
a:visited {text-decoration: none; color: black;}
a:hover {text-decoration: underline; color: black;}
/*
a:active {text-decoration: none; color: #333333;}
 */
 
 .firstTable hr{
 width:150px;
 size:5px;
 color:black;
 align:left;
 }
 
 .firstTable h6{
 cursor:pointer;
 }
 
 .SecondTable tr{
 cursor:pointer;
 }
 
 .csTable{
 height:1800px;
 
 }
 
 .firstTable{
 
 margin-top:5%;
 float:left;
 width:20%;
 margin-left:10%;
 }
 
 .secondTable{

 margin-top:5%;
 float:right;
 width: 60%;
 margin-right:10%;
 text-align: center;
/*  background:skyblue; */	
 }
 
/*  .secondTable tbody :hover{
 background-color: #ffe6f3; 
 } */
 
 .btn{
 	margin-right:10%;
 }

 table th{
	text-align: center;
}
 
 .checkboxgroup{
		margin-left:60%;
	}
	
	
	.testImg {
	width:100%;
	}
	
		
		.firstTable h6:hover{
	background:#ffe6f3;
	width:180px;
	}
		.firstTableLine1{
	background:#ff0066; 
	width:180px; 
	height:5px; 
	margin-bottom:15px;
	}
	
	.firstTableLine2{
	background:#ff0066; 
	width:180px; 
	height:1px; 
	margin-bottom:15px;
	}
	
	/*페이징 페이지 start*/
	
	.paging {
		margin-top: 15px;
		text-align: center;
		font-size: 0;
	}
	.paging a,
	.paging strong {
		display: inline-block;
		width: 20px;
		height: 20px;
		margin: 0 1px;
		border: 1px solid #dbdbdb;
		color: #767676;
		font-size: 15px;
		font-weight: bold;
		line-height: 20px;
		vertical-align: middle;
	  text-decoration: none;
	}
	.paging a:hover,
	.paging a:active,
	.paging a:focus {
		border: 1px solid #4c8500;	
	}
	.paging strong {
		color: #fff;
		background: #4c8500;
		border: 1px solid #4c8500;
	}
	.paging .direction {
		background: url('http://leroro.net/images/ui/sp_btn_paging.gif') no-repeat;
	}
	.paging .direction.first {
		background-position: left top;
	}
	.paging .direction.prev {
		margin: 0 12px 0 1px;
		background-position: -20px 0;
	}
	.paging .direction.next {
		margin: 0 1px 0 12px;
		background-position: -40px 0;
	}
	.paging .direction.last {
		background-position: right top;
	}
	.paging .direction span {
		position: absolute;
		display: block;
		width: 20px;
		height: 18px;
		overflow: hidden;
		z-index: -1;
	}
	
	#searchicon{
	width:20px;
	}
	
	#writeicon{
	width:20px;
	}
	
	#searchArea{
	width:300px;
	height:25px;
	}

	
	.bestReview h6{
	display:inline;
	padding: 20px;
	}
	
	.bestReview{
	float:right;
	/* margin-bottom:30px; */
	}
	
	.secondTableLine{
	background:#ff0066; 
	width:1200px; 
	height:2px; 
	margin-bottom:15px;
	align:center;
	}
	
	#bestReview h5{
	float:left;
	font-weight: bold;
	}
	
	.firstbestReviewLine{
	display:inline;
	padding: 20px;
	}
	
	#bestreviewpic1{
	width:20%;
	margin-right:50px;
	/* align:center; */
	}
	
	#bestreviewpic2{
	width:20%;
	}
	
	#bestreviewpic3{
	width:20%;
	}
	
	#normalReviewList h5{
	float:left;
	font-weight: bold;
	}
	
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/> 
	
	<img class="testImg" src="${ contextPath }/resources/images/sstestMain.jpg">
	
	<div class="csTable">
		 <div class="firstTable">
      
      <h2>고객센터</h2>
      <div class="firstTableLine1"></div>
      
      <h6><a href="selectNotice.bo">공지사항 / 이벤트</a></h6>
      <h6><a href="selectNoticeCate.bo">공지사항 </a></h6>
      <h6><a href="selectEventCate.bo">이벤트</a></h6>
      
     <div class="firstTableLine2"></div>
      <h6><a href="insertQnaFormView.bo">Q&A</a></h6>
      <div class="firstTableLine2"></div>
      <h6><a href="selectReview.bo">아맞다 후기리뷰</a></h6>
      <div class="firstTableLine2"></div>
      <h6><a href="selectFaq.bo">FAQ</a></h6>
      <div class="firstTableLine2"></div>
      <h6><a href="insertDeclarationFormView.de">신고</a></h6>
    <div class="firstTableLine1"></div>
      </div>
		
	
		<div class="secondTable">
			<h2>아맞다 후기리뷰</h2>
			<br>
			<div class="bestReview">
			<a href ="insertReview.bo"><h6>후기리뷰 작성
			<img id="writeicon"src="${ contextPath }/resources/images/writeicon.png"></h6></a>
			<input type="text" id="searchArea" value="" placeholder="검색하실 내용을 입력하세요.">
			<img id="searchicon"src="${ contextPath }/resources/images/searchicon.png">
  			</div>
  			<br>
  			<br>
  			<!-- <div class="secondTableLine"></div> -->
  			<div id="bestReview">
  			<h5>베스트 후기리뷰</h5> 
  			</div>
  			<br>
  			
  			<div class="secondTableLine"></div>
  			
		<br>
				<div class="firstbestReviewLine">
				<%-- 	<table class="review">
						<tr>
							<td><%= %></td>
							<td></td>
							<td></td>
							
						</tr>
					
					</table> --%>
		
		
		
		
		<%-- <a href ="selectOneReview.bo"><img id="bestreviewpic1"src="${ contextPath }/resources/images/bestreviewpic1.JPG"></a>
		<img id="bestreviewpic1"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic1"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic1"src="${ contextPath }/resources/images/bestreviewpic1.JPG"> --%>
				</div>
		<br>
		<br>
		
		<div id="normalReviewList">
  			<h5>전체보기</h5> 
  		</div><br>
		<div class="secondTableLine"></div> 
		
		
		<br>
		<br>
		<div class="firstbestReviewLine">
		<a href ="selectOneReview.bo"><img id="bestreviewpic2"src="${ contextPath }/resources/images/bestreviewpic1.JPG"></a>
		<img id="bestreviewpic2"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic2"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		</div>
		<br>
		<br>
		<br>
		
		<div class="firstbestReviewLine">
		<img id="bestreviewpic3"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic3"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic3"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		</div>
		<br>
		<br>
		<br>
		<div class="firstbestReviewLine">
		<img id="bestreviewpic2"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic2"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic2"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		</div>
		<br>
		<br>
		<br>
		
		<div class="firstbestReviewLine">
		<img id="bestreviewpic3"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic3"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		<img id="bestreviewpic3"src="${ contextPath }/resources/images/bestreviewpic1.JPG">
		</div>
		
		<br><br><br>
  			<div class="checkboxgroup">
				<input type="checkbox" name="chk_info" value="title" checked="checked">제목
				<input type="checkbox" name="chk_info" value="content">내용
				<input type="text">&nbsp;
				<button onclick="location.href='selectNotice.bo'">검색</button> 
			</div>
  			
	  		<!-- 페이징 시작 -->
	  		
	  		<div class="paging">
				<a href="#" class="direction fisrt"><span>처음</span></a>
				<a href="#" class="direction prev"><span>이전</span></a>
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<strong>5</strong>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#" class="direction next"><span>다음</span></a>
				<a href="#" class="direction last"><span>끝</span></a>
			</div>
				
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<jsp:include page="../common/footer.jsp"/> 
	<br>
	<br>
	<br>
	
	

</body>
</html>