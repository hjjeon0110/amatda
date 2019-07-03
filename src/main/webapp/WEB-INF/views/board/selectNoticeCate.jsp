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
 height:600px;
 
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

.

	
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
		<h2>공지사항</h2>
		<br>
		
			<table id="boardTable" class="table table-hover" >
			   <thead> 
			    	
			      <tr>
			        <th scope="col">글번호 </th>
			        <th scope="col">카테고리</th>
			        <th scope="col">제목</th>
			        <th scope="col">등록일</th>
			        <th scope="col">조회수</th>
			      </tr>
			    
			    </thead>
			    <tbody>
			    
		<c:forEach var="selectNoticeCate" items="${ requestScope.selectNoticeCate }" varStatus="status">
			    <tr>
			    	<td scope="row">${ status.count }
			    	<input type="hidden" id="bNo" value="${selectNoticeCate.bNo }">
			    	</td>
			    	<td>${selectNoticeCate.bsCategory }</td>
			    	
			    	<td>${selectNoticeCate.bTitle }</td>
			    	<td><fmt:formatDate pattern="yyyy-MM-dd" value="${selectNoticeCate.bWriteDate }"/></td>
			    	<%-- <td>${selectNotice.bWriteDate }</td> --%>
			    	<td>${selectNoticeCate.bCount }</td>
			    </tr>
			    </c:forEach> 
			    </tbody>
  			</table>
  			<br><br><br>
  			
  			<div class="checkboxgroup">
				<select id="searchType">
					<option value="content">내용</option>
					<option value="title">제목</option>
				</select>
				
				
				<input type="text" name="searchCon">&nbsp;
				<button id="searchResult">검색</button> 
			</div>
  			
	  		<!-- 페이징 시작 -->
	  		
	  		<!-- <div class="paging">
				<a href="#" class="direction fisrt"><span>처음</span></a>
				<a href="#" class="direction prev"><span>이전</span></a>
				<a href="#">1</a> -->
				<!-- <a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<strong>5</strong>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#" class="direction next"><span>다음</span></a>
				<a href="#" class="direction last"><span>끝</span></a>
			</div> -->
				
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
	
	<script>
	$(".table td").mouseenter(function(){
		$(this).css("cursor", "pointer")
	}).click(function(){
		var bNo= $(this).parent().children().children().eq(0).val();
		console.log(bNo);
		location.href="selectOneNoticeCate.bo?bNo=" + bNo;
	});
	
	
	$("#searchResult").click(function(){
		var searchType = $("#searchType").children("option:selected").val();
		var searchCon = $("input[name=searchCon]").val();
		console.log(searchType);
		console.log(searchCon);
		
		$.ajax({
			url:"searchResult.bo",
			data:{searchType:searchType, searchCon:searchCon, bType : 1},
			type:"get",
			dataType:"json",
			success:function(data){
				console.log(data);
			
			$("#boardTable > tbody").children().remove();
			
			for(var key in data){
				var date = new Date(data[key].bWriteDate);
				date = getFormatDate(date);
				var table = "<tr><td>" + data[key].bNo + "</td><td>" + data[key].bTitle + "</td><td>" + date + "</td><td>" + data[key].bCount + "</td><tr>";
				
				$("#boardTable > tbody").append(table);
			}
			
		},
		error : function(data){
			alert("연결실패");
		}
			
		})
		
	})
	
	
	function getFormatDate(date){
		var year = date.getFullYear()+'';
		var month=(1 + date.getMonth());
		month = month >= 10? month : '0' + month;
		var day = date.getDate();
		day=day >= 10? day : '0' + day;
		return year + '-' + month + '-'
	}

	</script>
	
	

</body>
</html>