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

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
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
	<h1>신고 게시판</h1>
			<h2>Responsive Form</h2>
		<p>Resize the browser window to see the effect. When the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other.</p>
		
		<div class="container">
		  <form action="/action_page.php">
		  <div class="row">
		    <div class="col-25">
		      <label for="fname">First Name</label>
		    </div>
		    <div class="col-75">
		      <input type="text" id="fname" name="firstname" placeholder="Your name..">
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-25">
		      <label for="lname">Last Name</label>
		    </div>
		    <div class="col-75">
		      <input type="text" id="lname" name="lastname" placeholder="Your last name..">
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-25">
		      <label for="country">Country</label>
		    </div>
		    <div class="col-75">
		      <select id="country" name="country">
		        <option value="australia">Australia</option>
		        <option value="canada">Canada</option>
		        <option value="usa">USA</option>
		      </select>
		    </div>
		  </div>
		  <div class="row">
		    <div class="col-25">
		      <label for="subject">Subject</label>
		    </div>
		    <div class="col-75">
		      <textarea id="subject" name="subject" placeholder="Write something.." style="height:200px"></textarea>
		    </div>
		  </div>
		  <div class="row">
		    <input type="submit" value="Submit">
		  </div>
		  </form>
		</div>
	
	
	
	</div>	
	
	</div>

</body>
</html>