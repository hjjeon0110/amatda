--------0707-18:10/ insertDeclaration -----------------------
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="css/layout.css" rel="stylesheet" type="text/css" />
 
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

/*여기부터 부트스트랩------------------------------------------*/

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
  height:650px;

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
color:#ff0066;

}

#subject{
height:200px;
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

    
/*아이디검색 모달창*/

/* .panel {
    background-color: #444;
    height: 34px;
    padding: 10px;
} */
/* .panel a#login_pop, .panel a#join_pop {
    border: 2px solid #aaa;
    color: #fff;
    display: block;
    float: left;
    margin-left: 10px;
    padding: 5px 10px;
    text-decoration: none;
    text-shadow: 1px 1px #000;

    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    -ms-border-radius: 10px;
    -o-border-radius: 10px;
    border-radius: 10px;
   font-family:'dotum';
} */
a#login_pop:hover, a#join_pop:hover {
    border-color: black;
}
.overlay {
    background-color: rgba(0, 0, 0, 0.6);
    bottom: 0;
    cursor: default;
    left: 0;
    opacity: 0;
    position: fixed;
    right: 0;
    top: 0;
    visibility: hidden;
    z-index: 1;

    -webkit-transition: opacity .5s;
    -moz-transition: opacity .5s;
    -ms-transition: opacity .5s;
    -o-transition: opacity .5s;
    transition: opacity .5s;
}
.overlay:target {
    visibility: visible;
    opacity: 1;
}
.popup {
    background-color: #fff;
    border: 3px solid #fff;
    display: inline-block;
    left: 50%;
    opacity: 0;
    padding: 15px;
    position: fixed;
    text-align: justify;
    top: 40%;
    visibility: hidden;
    z-index: 10;

    -webkit-transform: translate(-50%, -50%);
    -moz-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    -o-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);

    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    -ms-border-radius: 10px;
    -o-border-radius: 10px;
    border-radius: 10px;

    -webkit-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    -moz-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    -ms-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    -o-box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
    box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;

    -webkit-transition: opacity .5s, top .5s;
    -moz-transition: opacity .5s, top .5s;
    -ms-transition: opacity .5s, top .5s;
    -o-transition: opacity .5s, top .5s;
    transition: opacity .5s, top .5s;
}
.overlay:target+.popup {
    top: 50%;
    opacity: 1;
    visibility: visible;
}
.close {
    background-color: rgba(0, 0, 0, 0.8);
    height: 30px;
    line-height: 30px;
    position: absolute;
    right: 0;
    text-align: center;
    text-decoration: none;
    top: -15px;
    width: 30px;

    -webkit-border-radius: 15px;
    -moz-border-radius: 15px;
    -ms-border-radius: 15px;
    -o-border-radius: 15px;
    border-radius: 15px;
}
.close:before {
    color: rgba(255, 255, 255, 0.9);
    content: "X";
    font-size: 24px;
    text-shadow: 0 -1px rgba(0, 0, 0, 0.9);
}
.close:hover {
    background-color: rgba(64, 128, 128, 0.8);
}
.popup p, .popup div {
    margin-bottom: 10px;
}
.popup label {
    display: inline-block;
    text-align: left;
    width: 120px;
}
.popup input[type="text"], .popup input[type="password"] {
    border: 1px solid;
    border-color: #999 #ccc #ccc;
    margin: 0;
    padding: 2px;

    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    -ms-border-radius: 2px;
    -o-border-radius: 2px;
    border-radius: 2px;
}
.popup input[type="text"]:hover, .popup input[type="password"]:hover {
    border-color: #555 #888 #888;
}

/*아이디검색 모달창 끝*/
    
    
    
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
   <h1>신고 게시판</h1>
        
      <p>저희 아맞다를 이용하시는 도중 불편한 사항이 있으시면 언제든지 신고해주십시요. 보내주신 사항은 검토후 시정하도록 하겠습니다. 감사합니다. </p>
      
      <div class="container1">
        <form action="insertDeclaration.de" method="post">
        
        <input type="hidden" id="mNo" name="mNo" value="${ sessionScope.loginUser.mno }" />
       
        
        
       <!--  <input type="hidden" name="" value="로그인한 아이디의 mno"/> -->
        <div class="row">
          <div class="col-25">
            <label for="alldeclaration">신고대상</label>
          </div>
          <div class="col-75">
            <select id="declaration1" name="decl_category">
              <option value="트레이너">트레이너</option>
              <option value="회원">회원</option>
              <option value="기타">기타</option>
            </select>
          </div>
        </div>
        
        <div class="row">
          <div class="col-25">
            <label for="declaration2">신고분류</label>
          </div>
          <div class="col-75">
            <select id="declaration2" name="decl_classification">
              <option value="욕설/비매너">욕설/비매너</option>
              <option value="부적절한 행위">부적절한 행위</option>
              <option value="기타">기타</option>
            </select>
          </div>
        </div>
        
        
        <!-- 신고대상자 id검색란  -->
        <!-- <div class="row">
           <div class="col-25">
              <label for="declaration3">신고대상자</label>
           </div>
         <div class="col-75"> -->
         
         
         <!-- 
          <div class="panel">
                <a href="#login_form" id="login_pop">아이디 검색 : 여기를 클릭하세요.</a>
                
                 <a href="#x" class="overlay" id="login_form"></a>
              
              <div class="popup">
                  <h2>신고대상자 검색</h2>
                  <p>신고할 대상의 아이디를 조회하세요.</p>
                  <div>
                      <label for="login">아이디 입력란</label>
                      <input type="text" id="login" value="" placeholder="아이디를 입력하세요." />
                  </div>
                  <div>
                      <label for="password">Password</label>
                      <input type="password" id="password" value="" />
                  </div>
                  <input type="button" value="검색" />
      
                  <a class="close" href="#close"></a>
              </div>
            </div> -->
         
            <!-- <button onclick="location.href='#'">아이디 검색</button>  -->
         
        
        <div class="row">
          <div class="col-25">
            <label for="fname">신고 제목</label>
          </div>
          <div class="col-75">
            <input type="text" id="bTitle" name="decl_title" placeholder="신고 제목을 입력하세요.">
          </div>
        </div>
        
        <div class="row">
          <div class="col-25">
            <label for="subject">신고 내용</label>
          </div>
          <div class="col-75">
            <textarea id="bContent" name="decl_content" placeholder="신고 내용을 입력하세요."></textarea>
          </div>
        </div>
        
        <input type="submit" value="신고" class="btn btn-primary">
        </form>
         
           </div>
         </div>
       </div>
          
        
        <!-- 파일첨부 -->
       <!--  <div class="col-25">
           <label for="subject">파일 첨부</label>
        </div> -->
     
           <!-- 파일첨부 시작 -->
        <!-- <div class="col-75">
           <div class="filebox preview-image"> 
              <input class="upload-name" value="파일선택" disabled="disabled" > 
              <label for="input-file">업로드</label> 
              <input type="file" id="input-file" class="upload-hidden"> 
           </div>
        </div> -->
        <!-- 파일첨부 끝 -->
        
        
      <br><br>
        <!-- <div class="row">
          <input class="submitBtn" type="submit" value="신고">
        </div> -->
        
        <br>
        
        <!-- <button type="button" class="btn btn-primary" data-toggle="modal" 
        data-target="#my80sizeCenterModal">
  신고
</button> -->



<!-- 신고버튼 클릭 후 뜨는 모달창--> 
<!-- 80%size Modal at Center -->
<!-- <div class="modal modal-center fade" id="my80sizeCenterModal" tabindex="-1" role="dialog" aria-labelledby="my80sizeCenterModalLabel">
  <div class="modal-dialog modal-80size modal-center" role="document">
    <div class="modal-content modal-80size">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">신고해주셔서 감사합니다.</h4>
      </div>
      <div class="modal-body">
       <p>신고가 접수되었습니다.</p>
       <p>빠른시일내에 답변 드리겠습니다.</p>
      <p>감사합니다.</p>
      <br><br>
      
       <p>아맞다</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='insertDeclaration.bo'">닫기</button>
      </div>
    </div>
  </div>
</div> -->
       <!-- 80%size Modal at Center --> 
        
        
       
    
   
   

   
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
$(function(){
   var mno = $("#mNo").val();
   if(mno > 0){
      /* alert("로그인이 됐다는것") */
      
   
      
   }else{
      alert("로그인을 하셔야 작성이 가능합니다.")
      /* location.href="http://www.naver.com"; */
      location.href="loginMember.me";
   }
   
         
   })
//preview image 
/* var imgTarget = $('.preview-image .upload-hidden'); 
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
   
      
   }) */



</script>
</body>
</html>