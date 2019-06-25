

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

input[type=submit] {
  background-color: #ff0066;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;

}

input[type=submit]:hover {
  background-color: pink;
}

.container1 {
  border-radius: 5px;
  background-color: #ffe6f3;
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



/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

<!--파일업로드 시작-->


/* imaged preview */ .filebox .upload-display {
 /* 이미지가 표시될 지역 */ margin-bottom: 5px; 
 } 
 
 @media(min-width: 768px) {
  .filebox .upload-display {
   display: inline-block; margin-right: 5px; margin-bottom: 0; 
   } 
   } 
   
   .filebox .upload-thumb-wrap {
    /* 추가될 이미지를 감싸는 요소 */ 
    display: inline-block; 
    width: 54px; 
    padding: 2px; 
    vertical-align: middle; 
    border: 1px solid #ddd; 
    border-radius: 5px; 
    background-color: #fff; 
    } 
    
    .filebox .upload-display img { 
    /* 추가될 이미지 */ 
    display: block; 
    max-width: 100%; 
    width: 100% \9; 
    height: auto; 
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
	
	
.submitBtn{
margin:0 auto;

}


/*모달창*/
    .modal.modal-center {
 	 text-align: center;
	}

	@media screen and (min-width: 768px) { 
	  .modal.modal-center:before {
	    display: inline-block;
	    vertical-align: middle;
	    content: " ";
	    height: 100%;
	  }
	}
	
	.modal-dialog.modal-center {
	  display: inline-block;
	  text-align: left;
	  vertical-align: middle; 
	}

/*---------------*/

.modal-dialog.modal-80size {
  width: 80%;
  height: 80%;
  margin: 0;
  padding: 0;
}

.modal-content.modal-80size {
  height: auto;
  min-height: 80%;
}

.modal.modal-center {
  text-align: center;
}

@media screen and (min-width: 768px) {
  .modal.modal-center:before {
    display: inline-block;
    vertical-align: middle;
    content: " ";
    height: 100%;
  }
}

.modal-dialog.modal-center {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
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
      <h6><a href="selectFaq.bo">FAQ</a></h6>
      <div class="firstTableLine2"></div>
      <h6><a href="insertDeclaration.bo">신고</a></h6>
    <div class="firstTableLine1"></div>
      </div>
   
   
   <div class="secondTable">
      <!-- <table class="qnaBoard"> -->
         <h1>Q&A</h1>
   <!--                 여기부터 부트스트랩                 -->
   
<p>저희 아맞다를 이용하시던 중 질문사항이 있으시면 언제든지 문의해주시기 바랍니다. 감사합니다.</p>
<br>
<div class="container1">
  <form action="insertQna.bo" method="post">
  <div class="row">
    <div class="col-25">
      <label for="fname">문의 제목</label>
    </div>
    <div class="col-75">
      <input type="text" id="bTitle" name="bTitle" placeholder="문의 제목을 입력하세요.">
    </div>
  </div>
  
  
  <input type="hidden" name="bType" value="4"/>
  <div class="row">
    <div class="col-25">
      <label for="subject">문의 내용</label>
    </div>
    <div class="col-75">
      <textarea id="subject" name="bContent" placeholder="문의 내용을 입력하세요." style="height:200px"></textarea>
    </div>
  </div>
  
  
  <!-- <div class="row">
  
  	<div class="col-25">
  		<label for="subject">파일 첨부</label>
  	</div> -->
  	
  	<!-- 파일첨부 시작 -->
  	<!-- <div class="col-75">
  		<div class="filebox preview-image"> 
  			<input class="upload-name" value="파일선택" disabled="disabled" > 
  			<label for="input-file">업로드</label> 
  			<input type="file" id="input-file" class="upload-hidden"> 
  		</div>
  	</div>
  </div> -->
  
  	<!-- 파일첨부 끝 -->
  <br>
 <!--  <div class="row">
    <input class="submitBtn" type="submit" value="전송" >
  </div> -->
  
  
    <br>
    	<input type="submit" value="전송" class="btn btn-primary">
    	
       <!--  <button type="button" class="btn btn-primary" data-toggle="modal" 
        data-target="#my80sizeCenterModal">
  전송
</button> -->



<!-- <!-- 80%size Modal at Center -->
<!-- <div class="modal modal-center fade" id="my80sizeCenterModal" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">질문해주셔서 감사합니다.</h4>
      </div>
      <div class="modal-body">
       <p>질문 접수되었습니다.</p>
       <p>빠른시일내에 답변 드리겠습니다.</p>
      <p>감사합니다.</p>
      <br><br>
      
       <p>아맞다</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='insertQna.bo'">닫기</button>
      </div>
    </div>
  </div>
</div> --> 
       <!-- 80%size Modal at Center --> 
        
        
  
  
  
  
  
  
  </form>
</div>
   
   
   
   
   
   <!--                 여기까지 부트스트랩                 -->
      <!-- </table> -->
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
//preview image 
var imgTarget = $('.preview-image .upload-hidden'); 
imgTarget.on('change', function(){
	var parent = $(this).parent(); 
	parent.children('.upload-display').remove(); 
	
	if(window.FileReader){
		//image 파일만 
		if (!$(this)[0].files[0].type.match(/image\//)) return;
		
		var reader = new FileReader(); 
		reader.onload = function(e){
			var src = e.target.result;
			parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img src="'+src+'" class="upload-thumb"></div></div>'); 
			
		} 
		reader.readAsDataURL($(this)[0].files[0]); 
			} 
	
	else { 
		$(this)[0].select(); 
		$(this)[0].blur(); 
		var imgSrc = document.selection.createRange().text;
		parent.prepend('<div class="upload-display"><div class="upload-thumb-wrap"><img class="upload-thumb"></div></div>');
		
		var img = $(this).siblings('.upload-display').find('img'); 
		img[0].style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(enable='true',sizingMethod='scale',src=\""+imgSrc+"\")"; 
		
	} 
	
	});



</script>

</body>
</html>