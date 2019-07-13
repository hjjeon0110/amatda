<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

 .secondTable{

 margin-top:5%;
 float:right;
 width: 80%;
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
      margin-left:60%;
   }
   ul{
   align:center;
   }
   


.testImg {
   width:100%;
   }
   
/*여기부터 부트스트랩------------------------*/

* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}



.container1 {
  border-radius: 5px;
  background-color: #ffe6f3;
  padding: 20px;
  height:300px;
}


.sub {
  border-radius: 5px;
  background-color: #ffe6f3;
  padding: 20px;
  height:160px;
  margin-top:50px;
}

.col-25 {
  float: left;
  width: 30%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 55%;
  margin-top: 6px;
}





    

/*여기까지 부트스트랩------------------------*/

	
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
	
	

.subMenuBar1 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: white;
	margin-left: 2px;
	margin-right: -4px;
}

.subMenuBar2 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background:#ff0066;
	color:white;
}

.subMenuBar1:hover {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: white;
	color: #ff0066;
	margin-left: 2px;
	margin-right: -4px;
	cursor:pointer;
}


    
    





</style>
</head>
<body>

   <jsp:include page="../common/menubar.jsp"/> 
   
   <jsp:include page="../user/2_myPageMenubar.jsp"/>
   
	<div class="subMenuBar">
		<div class="subMenuBar1" onclick="location.href='gotoMyReviewList.us?mno=${sessionScope.loginUser.mno}'">REVIEW 내역</div>
		<div class="subMenuBar2" onclick="location.href='showMyPageMyWriting.us?mno=${sessionScope.loginUser.mno}'">Q&A 내역</div>
	</div>
   
   
   <div class="csTable">
     
   
   
   <div class="secondTable">
      <!-- <table class="qnaBoard"> -->
         <h1>Q&A</h1>
   <!--                 여기부터 부트스트랩                 -->
   

<br>


<div class="container1" style="margin:0 auto">
  <div class="row">
    <div class="col-25">
      <label for="fname">문의 제목</label>
    </div>
    <div class="col-75">
      <input type="text" id="bTitle" name="bTitle" placeholder="문의 제목을 입력하세요." value="${myQnaDetail.bTitle }">
    </div>
  </div>
  
  
  <input type="hidden" name="bType" value="4"/>
  <div class="row">
    <div class="col-25">
      <label for="subject">문의 내용</label>
    </div>
    <div class="col-75">
      <textarea id="subject" name="bContent" placeholder="문의 내용을 입력하세요." style="height:200px" >${myQnaDetail.bContent}</textarea>
    </div>
  </div>
 
 	<div class="row">
 		<div class="sub">
 		<c:if test="${re.repWriter==1 }">
 			<label>관리자댓글</label>
 		</c:if>
 			<label>${re.repContent }</label>
 			
 		</div>
 	</div>
</div>
   
   
   
   
   
   
   </div>   
   
   </div>
   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
   <br>
   <br>
   <br>
   <hr>
   <jsp:include page="../common/footer.jsp"/> 
   <br>
   <br>
   <br>


</body>
</html>