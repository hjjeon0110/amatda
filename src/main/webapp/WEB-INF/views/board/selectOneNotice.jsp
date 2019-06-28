<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"import="java.util.*, com.kh.amd.board.model.vo.*,com.kh.amd.member.model.vo.*"%>
    

    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">



a:link {text-decoration: none; color:black;}
a:visited {text-decoration: none; color: black;}
a:hover {text-decoration: underline; color: black;}
/*
a:active {text-decoration: none; color: #333333;}
 */
 
/* table{
border:1px solid black; 
} */
 .selectOneTable{

	 margin-top:2%;
	 float:right;
	 width: 60%;
	 margin-right:10%;
	 text-align: center;
	/*  background:skyblue; */	
	 }
 
	 .contentTable{
	 	width:750px;
	 	margin-left: 100px;
	 }
	 	.btn{
	 	margin-right:10%;
	 }

	 table th{
	text-align: center;
	font-size:13px;
	}
	table td{
	white-space:normal;
	text-align:center;
	font-size:13px;
	}
	 
	 .boardBtn{
	align:center;
	 	
	 }
	 
	tr.bordered{
	 border-bottom:2px solid #000;
	 border-top:2px solid #000;
	
	 } 
	 
	 tr.bordered2{
	 border-top:2px solid #000;
	 } 
	 
  .contentTable hr{
	 width:150px;
	 size:5px;
	 color:black;
	 align:center;
	}
	.testImg {
	width:100%;
	}

 .bordered{
 align:center;
 }
 
tr.bordered2 td{
margin-left: 400px;
 }
 
</style>

</head>
<body>

<jsp:include page="../common/menubar.jsp"/> 
<img class="testImg" src="${ contextPath }/resources/images/sstestMain.jpg">
	<br>
		<div class="selectOneTable">
		<h2 align="left">공지사항/이벤트</h2>
		<br><br><br>
				
		<table class="contentTable">
		  	<tr></tr>
			<tr class="bordered" >
				<!-- <td width="10%"><h6>9</h6></td>
				<td width="10%"><h6>공지사항</h6></td>
				<td width="50%"><h6>공지사항입니다.</h6></td>
				<td width="20%"><h6>2019-06-05</h6></td>
				<td width="10%"><h6>100</h6></td>  -->
				
				<th width="10%"><%=b.getbNo()%></th>
				<th width="10%"><%=b.getbType() %></th>
				<th width="50%"><%=b.getbTitle() %></th>
				<th width="20%"><%=b.getbModifyDate() %></th>
				<th width="10%"><%=b.getbCount() %></th> 
				
			 <!-- <td width="100px">9</td>
				<td width="100px">공지사항</td>
				<td width="500px">공지사항입니다.</td>
				<td width="200px">2019-06-05</td>
				<td width="100">100</td> -->
				
			 	<!-- <td><h6 width="100px">9</h6></td>
				<td><h6 width="100px">공지사항</h6></td>
				<td><h6 width="500px">공지사항입니다.</h6></td>
				<td><h6 width="200px">2019-06-05</h6></td>
				<td><h6 width="100px">100</h6></td> -->
				
				<!-- <td><h6 width="10%">9</h6></td>
				<td><h6 width="10%">공지사항</h6></td>
				<td><h6 width="50%">공지사항입니다.</h6></td>
				<td><h6 width="20%">2019-06-05</h6></td>
				<td><h6 width="10%">100</h6></td> -->
				
			</tr>
			<tr class="bordered2">
				<td colspan="5">
					<div class="reviewPic">
						<%=b.getbContent() %>
					</div><br>
				</td>
			</tr>
			</table>
			
			<br><br><br>
		
	       <div class="boardBtn">
	         <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal" onclick="location.href='selectNotice.bo'">목록</button>
	        </div>
		</div>
		
		<br>
	
	
	<br>
	<br>
	<jsp:include page="../common/footer.jsp"/> 
	<br>
	<br>
	<br>
	
		
  



</body>
</html>