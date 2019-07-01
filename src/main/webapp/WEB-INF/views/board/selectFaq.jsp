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
 
 .firstTable h5{
 cursor:pointer;
 }
 
 .SecondTable tr{
 cursor:pointer;
 }
 
 .csTable{
 
 height:900px;
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
   
   .accordion {
  background-color: #ffe6f3;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
  background-color: #ff0066;
}

.accordion:after {
  content: '\002B';
  color: #777;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

.active:after {
  content: "\2212";
}

.panel {
  padding: 0 18px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}
  
  /* 검색란 */ 
/*  input[type=text] {
  width: 100%;
  box-sizing: border-box;
  border: 2px solid #ccc;
  border-radius: 4px;
  font-size: 16px;
  background-color: white;
  background-image: url('searchicon.png');
  background-position: 10px 10px; 
  background-repeat: no-repeat;
  padding: 12px 20px 12px 40px;
}
 */

/* .container-1{
  width: 300px;
  vertical-align: middle;
  white-space: nowrap;
  position: relative;
}  */

.searchBox{
height:40px;
width:500px;
border: 1px solid black;
background:#ffffff;
align:center;

}

#searchBox1{
 font-size:16px;
 width:325px;
 /* padding:10px; */
 border:0px;
 outline:none;
 /* margin :auto; */
/*  float:left; */

}

#searchBox2{
width:50px;
height:100%;
border:0px;
background:#1b5ac2;
outline:none;
/* float:right; */
color:#ffffff;

}

.faqcategory h6{
display:inline;
padding: 20px;

}

.faqcategory :hover{
background:#ffe6f3; 
width:180px;
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

.searchBox{
margin:0 auto;
}

		input:-ms-input-placeholder {color:#a8a8a8;}
		input::-webkit-input-placeholder {color:#a8a8a8;}
		input::-moz-placeholder{color:#a8a8a8;}
   
   
   #searchicon{
width:20px;
cursor:pointer;
}

#searchArea{
width:400px;

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
      <h6><a href="selectFaqFormView.bo">FAQ</a></h6>
      <div class="firstTableLine2"></div>
      <h6><a href="insertDeclarationFormView.de">신고</a></h6>
    <div class="firstTableLine1"></div>
      </div>
      
   
      <div class="secondTable">
         <h2>FAQ</h2>
         <br>
        
        
        <div class="faqcategory">
        	<h6><a href="#">회원가입</a></h6>
        	<h6><a href="#">결제/환불</a></h6>
        	<h6><a href="#">서비스이용</a></h6>
        	<h6><a href="#">서비스이용</a></h6>
        	<h6><a href="#">서비스이용</a></h6>
        	
        </div>
        <br>
        <!-- <form>
 		 <input type="text" name="search" placeholder="Search..">
		</form> -->
		
	<!-- 	<div class="box">
	  		<div class="container-1">
	      	<span class="icon"><i class="fa fa-search"></i></span>
	      	<input type="search" id="search" placeholder="Search..." />
	  		</div>
		</div> -->
		
		
		<!-- <div class="searchBox">
			<input id="searchBox1" type="text" placeholder="검색어 입력">
			<button id="seachBox2">검색</button>
		</div> -->
		
		<div class="searchBox">
		<input type="text" id="searchArea" value="" placeholder="검색하실 내용을 입력하세요.">
			<img id="searchicon"src="${ contextPath }/resources/images/searchicon.png">
		</div>
		
		<br>
				
		

         
         <div>
         
         <c:forEach var="selectFaq" items="${ requestScope.selectFaq }" varStatus="status">

		<input type="hidden" id="bNo" value="${selectFaq.bNo }">
		<input type="hidden" id="bmCategory" value="${selectFaq.bmCategory }">
		
		
         <button class="accordion">${selectFaq.bTitle }</button>
         <div class="panel">
           <p>${selectFaq.bContent }</p>
         </div>
         
        <!--  <button class="accordion">Q. 지불은 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div>
         
         <button class="accordion">Q. 탈퇴는 어떻게 하나요?</button>
         <div class="panel">
           <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
         </div> -->
         </c:forEach>
      </div>
   </div>
   

   
   <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>

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
  
   
   
   


</head>
<body>

</body>
</html>