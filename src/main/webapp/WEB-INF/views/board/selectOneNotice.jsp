<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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
 
 .selectOneTable{

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
 
 .boardBtn{
 	
 }
</style>

</head>
<body>

<h1 align="center">공지사항/이벤트</h1>
	<br>
		<div class="selectOneTable">
			<hr>
			<h5>9 공지사항 	공지사항입니다.2019-06-05 100</h5>
			<hr>
			<h6>글내용입니다.</h6>
			<h6>동해물과 백두산이 마르고 닳도록</h6>
			
			
			<hr>
			
	       <div class="boardBtn">
	         <button onclick="location.href='<%=request.getContextPath()%>/selectList.bo'">목록</button>
	         <button onclick="updateNotice();">수정</button>
	         <button onclick="review_delete();">삭제</button>
	        </div>

			<hr>
		</div>
	
		
  



</body>
</html>