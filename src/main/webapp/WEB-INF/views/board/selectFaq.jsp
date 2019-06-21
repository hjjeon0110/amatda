<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

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
 height:470px;
 
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
  background-color: #eee;
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
  background-color: #ccc;
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
	
	
</style>

</head>
<body>
	<jsp:include page="../common/menubar.jsp"/> 
	
	<img class="testImg" src="${ contextPath }/resources/images/testMain.jpg">
	
	<div class="csTable">
		<div class="firstTable">
		<hr>
		<h5><a href="selectNotice.bo">공지사항 / 이벤트</a></h5>
		<h5><a href="selectNotice.bo">공지사항 </a></h5>
		<h5><a href="selectNotice.bo">이벤트</a></h5>
		<hr>
		<h5><a href="insertQna.bo">Q&A</a></h5>
		<hr>
		<h5><a href="selectReview.bo">아맞다 후기리뷰</a></h5>
		<hr>
		<h5><a href="selectFaq.bo">FAQ</a></h5>
		<hr>
		<h5><a href="insertDeclaration.bo">신고</a></h5>
		<hr>
		</div>
		
	
		<div class="secondTable">
			<h2>FAQ</h2>
			<br>
			<br>

			<button class="accordion">Q. 회원가입은 어떻게 하나요?</button>
			<div class="panel">
			  <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
			</div>
			
			<button class="accordion">Q. 지불은 어떻게 하나요?</button>
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
	
	


</head>
<body>

</body>
</html>