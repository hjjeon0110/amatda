<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1 align="center">공지사항/이벤트</h1>
		<br>
		  <div class="outer">
		  
		  <form action="" id="noticeForm">
		      <table class="detail" align="center" >
		     
		         <tr>
		         	<td colspan="1" style="display:none;"><input type="hidden" value=<%=%> name="bid">제목</td>
		            <td colspan="10"><h3><%=  %></h3></td>
		         </tr>
		         <tr>
		            
		            <td>조회수</td>
		            <td><label><%= %></label></td>
		            <td>작성일</td>
		            <td><label><%=%></label></td>
		         </tr>
		         

		         <tr>
		         	<td colspan="4">
		         	<br>
		           
		           	 <textarea rows="5" style="width: 100%; height:100%; border: 0; text-align: center; font-size:2em; ; resize: none;"><%= %></textarea>
		           	 </td>
		         </tr>

		         
		      </table>
	      </form>
   </div>





</body>
</html>