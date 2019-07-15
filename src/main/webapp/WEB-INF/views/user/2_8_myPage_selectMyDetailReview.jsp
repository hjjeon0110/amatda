<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
   .outerform {
      width:1100px;
      height:2000px;
      color:black;
      margin-left:auto;
      margin-right:auto;
      margin-top:50px;
      align:center;
   }
   .containaer{
   margin-left:15%;
   margin-right:150px;
   margin-top:50px;
   width:900px;
   height:800px;
   }
   table {
      border:1px solid black;
   }
   .insertArea {
      width:500px;
      height:550px;
      margin:0 auto;
   }
   .btnArea {
      width:250px;
      margin:0 auto;
   }
   #titleImgArea {
      width:300px;
      height:250px;
      /* border:2px dashed darkgray; */
      text-align:center;
       display:table-cell; 
      vertical-align:middle;
   }
   #contentImgArea1, #contentImgArea2, #contentImgArea3 {
      width:150px;
      height:100px;
      border:2px dashed darkgray;
      text-align:center;
      display:table-cell;
      vertical-align:middle;
   }
   #titleImgArea:hover, #contentImgArea11:hover,
   #contentImgArea2:hover, #contentImgArea3:hover {
      cursor:pointer;
   }
   #btn1Area{
      margin-right:2%;
      float:left;
   }
   .btnArea > button{
   padding: 10px 20px;
   margin-right: 20px;
   border-radius : 5px; 
   background-color:#ff0066; color:white; font-weight:bold; border:none;
   }
   .testImg {
   width:100%;
   }
   tbody th{
   background-color:#ffe6f3;
   }
   .btnArea{
   align:center;
   display:inline;
   }
   .secondTableLine{
   background:#ff0066; 
   width:800px; 
   height:2px; 
   margin-bottom:15px;
   align:center;
   }
   .contentTitle{
   align:center;
   }
   .outer h3{
   font-weight: bold;
   }
   .likecount {
   width: 60px;
   height: 30px;
   border: 1px solid #ff0066;
   border-radius: 10px;
   align:center;
   margin-left:700px;
   }
   #likeicon{
      width:30%;
      float:right;
   }
   #reviewPic1{
   width:50%;
   }
   #reviewPic2{
   width:60%;
   }
   #replybox{
   width:500px;
   height:100px;
   }
   .subMenuBar {
	width: 100%;
	height: 100%;
	font-family: 'Noto Sans KR', sans-serif;
	border-top:0.5px solid lightgray;
}

.subMenuBar1 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: #ff0066;
	margin-left: 2px;
	margin-right: -4px;
	color:white;
}

.subMenuBar2 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background:white;
	color:black;
}

.subMenuBar2:hover {
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
   
   <div class="outerform" align="center"> 
   <form action="selectOneReview.bo" method="post">   
      <table class="selectOneReview">
      <%-- <c:forEach var="selectOneReview" items="${ sessionScope.selectOneReview }" varStatus="status"><br> --%>
      <tr class="contentTitle">
      
      <br><br>
      <%-- <td>${selectOneReview.bTitle }</td> --%>
      
      <input type="hidden" id="bNo" value="${b.bNo }">
      <input type="hidden" id="mNo" name="mNo" value="${ sessionScope.loginUser.userId }" >
      <p>${b.bTitle }</p>
      <p></p>
      <p></p>
      
      <div class="secondTableLine"></div>
         <img id="reviewImgFile" src="${contextPath }/resources/uploadFiles/${a.modiName}${a.extension}" width="250" height="200">
         
      </tr>
         
         <div class="reviewPic">
      <p>${b.bContent }</p>
         
       <button type="button" class="btn btn-primary" data-toggle="modal" 
              data-target="#my80sizeCenterModal" onclick="location.href='updateMyReview.us?bno=${b.bNo }'">수정</button>
       <button type="button" class="btn btn-primary" data-toggle="modal"  onclick="deleteReview()"
              data-target="#my80sizeCenterModal">삭제</button>
       <button type="button" class="btn btn-primary" data-toggle="modal" 
              data-target="#my80sizeCenterModal" onclick="location.href='gotoMyReviewList.us?mno=${sessionScope.loginUser.mno}'"> 목록</button>
      <br><br><br><br>
      
      
      
      <%-- <form id="conmmentForm" name="commentForm" method="post">
         <input type="hidden" id="bno" name="bno" value="${b.bNo }">
         <input type="hidden" name="mNo" value="${sessionScope.loginUser.mNo }">
         
         <div class="area">
            <textarea id="repContent" name="repContent" cols="60" rows="2" placeholder="댓글을 입력하세요 " style="float:left"></textarea>
         <input type="button" id="replyInsert" value="등록" style="float:right">
         </div>
      
         <div id="commentList">
            <c:forEach items="${repList }" var="repList">
               <c:if test="${!empty repList.repContent }">
                  ${repList.member.name } 트레이너(<fmt:formatDate value="${repList.repDate }" pattern="yyyy-MM-dd hh:mm"/>):
                  ${repList.repContent} 
               </c:if>
            </c:forEach>
         </div>
      </form> --%>
      
      <!-- <input type="text" id="replybox" placeholder="내용을 입력하세요.">
      <button type="button" class="btn btn-primary" data-toggle="modal" 
        data-target="#my80sizeCenterModal">작성</button> -->
        </div>
   <%-- </c:forEach> --%>
   </table>
   </form>
   </div>
   
   <br><br><br><br><br><br><br><br><br>
<jsp:include page="../common/footer.jsp"/>

<script>
   function loadReviewImgFile(value){
      if(value.files && value.files[0]){
         var reader = new FileReader();
         reader.onload = function(e){
            $("#reviewImgFile").attr("src",e.target.result);
         }
         reader.readAsDataURL(value.files[0]);
      }
   }

   /* $("#replyInsert").click(function(){
      var content=$("#repContent").val();
      var bno="${b.bNo}";
      
      
   }) */

function deleteReview(){
	   
	var mno = ${ sessionScope.loginUser.mno};
	var bno = ${b.bNo};
	$.ajax({
		url:"deleteMyReview.us",
		type:"post",
		data:{mno:mno,bno:bno},
		success:function(){
			alert("등록하신 리뷰는 삭제되었습니다.");
			location.href="gotoMyReviewList.us?mno="+mno;
		},error:function(){
			alert('실패');
		}
	})
}

</script>
</body>
</html>