<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

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
 
 
 
 .csTable{
 height:470px;
 }
 
 .firstTable{
 margin-top:5%;
 float:left;
 width:20%;
 margin-left:10%;
 
 
 }
 
 .SecondTable{
 margin-top:5%;
 float:right;
 width: 60%;
 margin-right:10%;
 text-align: center;
/*  background:skyblue; */	
 }
 
 .btn{
 	margin-right:10%;
 }

 table th{
	text-align: center;
}
 
 .checkboxgroup{
		margin-left:70%;
		
	}
 
</style>

</head>
<body>
	<%-- <jsp:include page="../common/menubar.jsp"/> --%>
	
	
	<div class="csTable">
	
		<div class="firstTable">
		<hr width="200px" size="5px" color="black" align="left">
			<h5><a href="http://www.naver.com">공지사항 / 이벤트</a></h5>
			<h5><a href="http://www.naver.com">공지사항 </a></h5>
			<h5><a href="http://www.naver.com">이벤트</a></h5>
		
		
		<hr width="200px" size="1px" color="gray" align="left">
		<h5><a href="http://www.naver.com">Q&A</a></h5>
		
		<hr width="200px" size="1px" color="gray" align="left">
		<h5><a href="http://www.naver.com">아맞다 후기리뷰</a></h5>
		
		<hr width="200px" size="1px" color="gray" align="left">
		<h5><a href="http://www.naver.com">FAQ</a></h5>
		
		<hr width="200px" size="1px" color="gray" align="left">
		<h5><a href="http://www.naver.com">신고</a></h5>
		
		<hr width="200px" size="5px" color="black" align="left">
		</div>
		
	
		<div class="SecondTable">
			<table class="table table-hover">
			    <thead>
			      <tr>
			        <th>글번호</th>
			        <th>카테고리</th>
			        <th>제목</th>
			        <th>등록일</th>
			        <th>조회수</th>
			      </tr>
			    </thead>
			    <tbody>
			        <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>
               
               <tr>
                  <td>10</td>
                  <td>공지사항</td>
                  <td>10번째 공지사항입니다.</td>
                  <td>2019.6.10</td>
                  <td>10</td>
               </tr>

			    </tbody>
  			</table>
  			
  			<div class="checkboxgroup">
				<input type="checkbox" name="chk_info" value="title" checked="checked">제목
				<input type="checkbox" name="chk_info" value="content">내용
				<input type="text">&nbsp;
				<button onclick="location.href='<%=request.getContextPath()%>/views/notice/noticeList.jsp'">검색</button>
			</div>
  			
	  			<ul class="pagination">
				<li><a href="<%=request.getContextPath()%>">이전</a></li>
				<li><a href="<%=request.getContextPath()%>">1</a></li>
				<li><a href="<%=request.getContextPath()%>">2</a></li>
				<li><a href="<%=request.getContextPath()%>">3</a></li>
				<li><a href="<%=request.getContextPath()%>">4</a></li>
				<li><a href="<%=request.getContextPath()%>">5</a></li>
				<li><a href="<%=request.getContextPath()%>">다음</a></li>
				</ul>
		</div>
	</div>
	<br>
	
		
	
	
	

	
</body>
</html>