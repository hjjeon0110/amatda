<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    
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
	align: center;
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
	margin-left:20%;
	 	
	 }
	 
	tr.bordered{
	 border-bottom:2px solid #000;
	 border-top:2px solid #000;
	
	 } 
	 
	 tr.bordered2{
	 border-top:2px solid #000;
	 } 

	 tr.bordered3{
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
 
 .divv{
 	width:100%;
 	height:400px;
 }
</style>

</head>
<body>

<jsp:include page="../common/menubar.jsp"/> 
<img class="testImg" src="${ contextPath }/resources/images/sstestMain.jpg">
	<br>
		<div class="selectOneTable">
		<h2 align="left">이벤트</h2>
		<br><br><br>
				
		<table class="contentTable">
		  	<tr></tr>
		  <%-- 	<c:forEach var="selectOneNotice" items="${ requestScope.selectOneNotice }" varStatus="status"> --%>
			<tr class="bordered" >
				
				<td scope="row">
			    	<input type="hidden" id="bNo" value="${ Board.bNo }">
			    	</td>
			    	<td>${ Board.bsCategory }</td>
			    	
			    	<td>${ Board.bTitle }</td>
			    	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${ Board.bWriteDate }"/></td>
			    	<%-- <td>${selectNotice.bWriteDate }</td> --%>
			    	<td>${ Board.bCount }</td>
				
				
				<%-- <th width="10%"><%=b.getbNo()%></th>
				<th width="10%"><%=b.getbType() %></th>
				<th width="50%"><%=b.getbTitle() %></th>
				<th width="20%"><%=b.getbModifyDate() %></th>
				<th width="10%"><%=b.getbCount() %></th>  --%>
				
			</tr>
			
			
			 
			<tr class="bordered2">
				<td colspan="5">
				 <br><br>
					${ Board.bContent }
					 <br><br> <br>
				</td>
			</tr>
			
			<tr class="bordered3">
          <td colspan="5"></td>
         </tr>
			
			<%--  </c:forEach> --%>
			</table>
			
			
		<br>
	       <div class="boardBtn">
	         <button type="button" class="btn btn-primary" data-toggle="modal" 
		        data-target="#my80sizeCenterModal" onclick="location.href='selectEventCate.bo'">목록</button>
	        </div>
		</div>
		
		<div class="divv">
		</div>
		
		<br><br><br><br><hr><br>
	<jsp:include page="../common/footer.jsp"/> 
	<br>
	<br>
	<br>
	
		
		
		
  



</body>
</html>