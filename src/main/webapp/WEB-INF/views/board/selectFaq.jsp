<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
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
 margin-right:5%;
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

#searchCon{
width:450px;

}

/* ----------------------- */



</style>

</head>
<body>
   <jsp:include page="../common/menubar.jsp"/> 
   
  <img class="testImg" src="${ contextPath }/resources/images/sstestMain.jpg">
   
   <div class="csTable">
      <div class="firstTable">
      
      <h1>고객센터</h1>
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
      
         <h1>FAQ</h1>
         <br>
        
        
        <div class="faqcategory">
        	<h6><a href="selectFaq.bo">전체</a></h6>
        	<h6><span class="category">회원가입</span></h6>
        	<h6><span class="category">회원정보</span></h6>
        	<h6><span class="category">결제/환불</span></h6>
        	<h6><span class="category">서비스</span></h6>
        	<h6><span class="category">기타</span></h6>
        	
        </div>
        <br>
       
		<%-- <div class="searchBox">
		<input type="text" id="searchCon" name="searchCon" placeholder="검색하실 내용을 입력하세요.">
			<button type="button" id="searchicon"><img src="${ contextPath }/resources/images/searchicon.png"></button>
			 <img id="searchicon" src="${ contextPath }/resources/images/searchicon.png"> 
			
			
		</div> --%>
		
		<br>
				
		
		<!-- ------------아코디언 시작----------------------- -->
		 <div class="faqList">
			<c:forEach var="selectFaq" items="${ requestScope.selectFaq }" varStatus="status">
				<div class = "accordionTable">
					<input type="hidden" id="bNo" value="${ selectFaq.bNo }">
					<button class="accordion"><b>${selectFaq.bTitle }</b></button>
					
					<div class="panel">
						<br><br><p>${selectFaq.bContent }</p><br><br>
					</div>
				</div>
			</c:forEach>
		</div> 
		
		<!-- -------------------------------------------------------------------------- -->
		<%-- <div class="faqList" align="center">
		<c:forEach var="selectFaq" items="${ requestScope.selectFaq }" varStatus="status">	
			<div class = "accordionTable">
			<input type="hidden" id="bNo" value="${ selectFaq.bNo }">
				<ul id="faq1">
				  <li>
				    <b>${selectFaq.bTitle }</b>
				    <p>${selectFaq.bContent }</p>
				  </li>
				 
				</ul>
			</div>
		</c:forEach>
		</div> --%>
	<!-- -------------------------------------------------------------------------- -->
		<!-- -----------------------------아코디언 끝----------------- -->
      	
      	
      </div>
   </div>
   

   
   <script>
   
   /*  --------------------------------------마우스커서------------------------------------------------- */
   $(".faqList").mouseenter(function(){
		$(this).css("cursor", "pointer")
	/* }).click(function(){
		var bNo= $(this).parent().children().children().eq(0).val();
		console.log(bNo);
		location.href="selectFaq.bo?bNo=" + bNo; */
	});
   
   /*  ------------------------------------검색기능--------------------------------------------------- */
   
   
    $("#searchicon").click(function(){
		//var searchType = $("#searchType").children("option:selected").val();
		var searchCon = $("input[name=searchCon]").val();
		console.log(searchType);
		console.log(searchCon);
		$.ajax({
			url:"searchResultFaq.bo",
			data:{searchCon:searchCon},
			type:"get",
			dataType:"json",
			success:function(data){
				console.log(data);
				$(".faqList").children().remove();
				
				//-----------------------------------------------------------------------
				for(var key in data){
					
					console.log(data[key].bNo );
					
					var table = "<div class = 'accordionTable'><input type ='hidden' id='bNo' value='" + data[key].bNo 
								+ "'><button class='accordion'><b>" + data[key].bTitle + "</b></button>"
								+"<div class='panel'><br><br><p>" + data[key].bContent + "</p><br><br></div></div>";
				//--------------------------------------------------------------------------
					$(".faqList").append(table);
				}
			},
			error : function(data) {
				
			}
			
		})
		
		});
   /*  --------------------------------------아코디언 에니메이션------------------------------------------------- */
   
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
 /*  -----------------------------------------카테고리별 ---------------------------------------------- */
$(".category").click(function() {
	var bmCate = $(this).text();
	
	$.ajax({
		url : "cateResult.bo",
		data : {bmCate : bmCate},
		dataType:"json",
		success : function(data) {
			console.log(data);
			
			$(".faqList").children().remove();
			
			//-----------------------------------------------------------------------
			for(var key in data){
				
				console.log(data[key].bNo );
				
				var table = "<div class = 'accordionTable'><input type ='hidden' id='bNo' value='" + data[key].bNo 
							+ "'><button class='accordion'><b>" + data[key].bTitle + "</b></button>"
							+"<div class='panel'><br><br><p>" + data[key].bContent + "</p><br><br></div></div>";
			//--------------------------------------------------------------------------
				$(".faqList").append(table);
			}
		},
		error : function(data) {
			
		}
		
	})
	
	});
	
	
/*  $(".accordion").click(function() {
$(this).toggle("active");
this.classList.toggle("active");
var panel = this.nextElementSibling;
if (panel.style.maxHeight){
  panel.style.maxHeight = null;
} else {
  panel.style.maxHeight = panel.scrollHeight + "px";
} 
})   */

/* ------------------------새로운 아코디언 시작 -------------------- */
/* $(document).ready(function(){
	$("p").hide();
	// $("ul > li:first-child a").next().show();
	$("#faq1 li b").click(function(){
		$(this).next().slideToggle(50);
		// $(this).next().slideDown(300);
		$("#faq1 li b").not(this).next().slideUp(50);
		return false;
	});
	$("#faq1 li a").eq(0).trigger("click");
}); */
/* ------------------------새로운 아코디언 끝 -------------------- */
	

	
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