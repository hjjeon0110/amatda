<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/calendar/core/main.css">
<!-- <link href='../packages/core/main.css' rel='stylesheet' /> -->

<link href="${pageContext.request.contextPath}/resources/css/calendar/daygrid/main.css" rel='stylesheet' />
<!-- <link href='../packages/daygrid/main.css' rel='stylesheet' /> -->

<script src="${pageContext.request.contextPath}/resources/js/calendar/core/main.js"></script>
<!-- <script src='../packages/core/main.js'></script> -->

<script src="${pageContext.request.contextPath}/resources/js/calendar/interaction/main.js"></script>
<!-- <script src='../packages/interaction/main.js'></script> -->

<script src="${pageContext.request.contextPath}/resources/js/calendar/daygrid/main.js"></script>
<!-- <script src='../packages/daygrid/main.js'></script> -->


<script>


  document.addEventListener('DOMContentLoaded', function() {
	  
	  
	  
    var calendarEl = document.getElementById('calendar');
    
    
    calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      defaultDate: '2019-06-12',
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      
      
      
      events: [
        {
          title: '오늘의 식단',
          start: '2019-06-01'
        },
        {
          title: 'Long Event',
          start: '2019-06-07',
          end: '2019-06-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2019-06-09T16:00:00'
        },
        {
          groupId: 999,
          title: '안녕',
          start: '2019-06-16T16:00:00'
        },
        {
          title: 'Conference',
          start: '2019-06-11',
          end: '2019-06-13'
        },
        {
          title: 'Meeting',
          start: '2019-06-12T10:30:00',
          end: '2019-06-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2019-06-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2019-06-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2019-06-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2019-06-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2019-06-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'missionRegister.ca',
          start: '2019-06-28'
        }
      ],
     
      dateClick:function (date, allDay, jsEvent, view){
    	/*  var moment = $('#calendar').fullCalendar('getDate');
    	console.log(moment); */
    	console.log("date: " + date.dateStr);
    	$("#mDate2").val(date.dateStr);
    	alert("후");
    	/* $("#dialog").modal(); */
    	$("#myModal").modal();	
    	
    	var mno =  ${sessionScope.loginUser.mno};
    	var mDate2 = $("#mDate2").val();
    	
    	console.log("modal mission.jsp에서 mno: " + mno);
    	console.log("modal mission.jsp에서 mDate2: " + mDate2);
    	
    	//미션결과 여부 확인 ajax
    	
    	$.ajax({
    		url:"selectMissionResult.ms",
    		data:{mno:mno, mDate2:mDate2},
    		dataType:"json",
    		success:function(data){
    			alert("성공");
    			console.log(data);
    			console.log("data[0]: " + data[0]);
    			console.log("arr: "+ data[1].missionNo);
    			console.log("arr: "+ data[0].mDate);
				console.log("아침식단 내용 data[0].mContent : " + data[0].mContent);
				console.log("점심식단 내용 data[1].mContent: " + data[1].mContent);
    			$("#completeBreakfast2").val(data[0].mContent);
    			$("#completeLunch2").val(data[1].mContent);
    			$("#completeDinner2").val(data[2].mContent);
    			
    			$("#completeBreakEx2").val(data[3].mContent);
    			$("#completeLunchEx2").val(data[4].mContent);
    			$("#completeDinnerEx2").val(data[5].mContent);
    			
    			$("#completeBreakExLink2").val(data[3].mLink);
    			$("#completeLunchExLink2").val(data[4].mLink);
    			$("#completeDinnerExLink2").val(data[5].mLink);
    			
    			
    			
    			
    			
    			//결과여부 (성공,실패)
    			if((data[0].completeYN)=='Y'){ //아침식단
    				$("#completeYNBreak").text("성공");
    			}else{
    				$("#completeYNBreak").text("실패");
    			}
    			
    			if((data[1].completeYN)=='Y'){
    				$("#completeYNLunch").text("성공");
    			}else{
    				$("#completeYNLunch").text("실패");
    			}
    			
    			if((data[2].completeYN)=='Y'){
    				$("#completeYNDinner").text("성공");
    			}else{
    				$("#completeYNDinner").text("실패");
    			}
    			
    			if((data[3].completeYN)=='Y'){  //아침운동
    				$("#completeYNBreakEx").text("성공");
    			}else{
    				$("#completeYNBreakEx").text("실패");
    			}
    			
    			if((data[4].completeYN)=='Y'){ 
    				$("#completeYNLunchEx").text("성공");
    			}else{
    				$("#completeYNLunchEx").text("실패");
    			}
    			
    			if((data[5].completeYN)=='Y'){ 
    				$("#completeYNDinnerEx").text("성공");
    			}else{
    				$("#completeYNDinnerEx").text("실패");
    			}
    		}
    		
    		
    	})
    	
    	
     },
    
    

    
     
    });
	
   



    
    calendar.render();
   

  });
  $(function(){
	  var date2 = new Date();
	  console.log("date: " + date2.getDate());
	  var num1 = "0";
	  console.log(typeof date2.getDate());
	  
	  if(date2.getMonth()<10){
		var result = '0'+  (date2.getMonth()+1);
		console.log(result);
		if(date2.getDate()<10){
			  var result2 = num1 + date2.getDate();
			  console.log("Result2: " + result2);
		}else{
			  var result2 = date2.getDate();
		}
	  }else if(date2.getMonth()>=10){
		var result = date2.getMonth()+1;
		if(date2.getDate() < 10){
			  var result2 = num1 + date2.getDate();
		} else{
			  var result2 = date2.getDate();
		}
	  } 
	  var today = $('#month').text(date2.getFullYear()).append("-").append(result).append("-").append(result2);
   	 var event = {
   			 title:'오늘의 식단',
   			start: '2019-06-12T10:30:00',
            end: '2019-06-12T12:30:00'
   	 }
   	 calendar.addEvent(event);
   	  /* var now = new Date();
	  DateFormat format2 = DateFormat.getDateInstance(DateFormat.LONG);
	  console.log(format2.format(now)); */
	  
	 /*  var now = new Date();

	  SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
	  console.log(format.format(now));  */
  })
  
</script>
<style>

  body {
    margin: 40px 10px;
    padding: 0;s
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 900px;
    margin: 0 auto;
  }

	tr{
		height:50px;
		
	}
	hr{
		width:300px;
	}
	
	td{
		width:100px;
	}
	
	#name{
		width:50px;
	}
	
	#selbreakfast{
		width:250px
	}
}


}

</style>
</head>
<body>
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }"
		scope="application" />
  <jsp:include page="../common/menubar.jsp"/>
  
  <div id="container">
  
  
  	
  	<!-- 사용자 미션 수행여부 체크 (체크박스o)-->
  	<c:if test="${sessionScope.loginUser.mtype =='U'}">   
  	<div id='calendar' style="margin-top:30px; float:left; width:70%; height:550px"></div>
  	<div id="selectToday" style="float:right; border:1px solid pink; width:30%; height:700px">
  		<div id="month" align="center"></div>
		
		<p style="float:right; font-size:12px">*기록완료시, 체크박스는 사라집니다.</p>
  		<label>오늘의 식단</label><hr>
  		<input type="hidden" value="식단" id="eating">
  		<table>
  		<tr>
  		<td><label id="morning">아침</label><br><label id="selbreakfast" style=""></label></td>
  		  
  		<td><input type="checkbox" id="breakCheck" name="breakCheck" style="margin-top:40px" value="N"></td>
  		
  		<td><input type="button" id="checkMission" value="기록하기"></td>
  		</tr>
  		<tr>
  		<td><label id="lunch">점심</label><br><label id="sellunch"></label></td>
  		<td><input type="checkbox" id="lunchCheck" style="margin-top:40px" value="N"></td>
  		<td><input type="button" id="checkMission2" value="기록하기"></td>
  		</tr>
  		<tr>
  		<td><label id="dinner">저녁</label><br><label id="seldinner"></label></td>
  		<td><input type="checkbox" id="dinnerCheck" style="margin-top:40px" value="N"></td>
  		<td><input type="button" id="checkMission3" value="기록하기"></td>
  		</tr>
  		</table>
  	
  		<label style="margin-top:30px">오늘의 운동</label><hr>
  		<input type="hidden" value="운동" id="exercising">
  		<table>
  		<tr>
  		<td><label id="morning2">아침</label><br><label id="selbreakEx" style="width:300px;"></label><a href="" id="selbreakExLink"></a></td>
  		<td><input type="checkbox" id="breakExCheck" style="margin-left:-50px" value="N"></td>
  		<td><input type="button" id="checkMission4" value="기록하기"></td>
  		</tr>
  		<tr>
  		<td><label id="lunch2">점심</label><br><label id="sellunchEx"></label><a href="" id="sellunchExLink"></a></td>
  		<td><input type="checkbox" id="lunchExCheck" style="margin-left:-50px" value="N"></td>
  		<td><input type="button" id="checkMission5" value="기록하기"></td>
  		</tr>
  		<tr>
  		<td><label id="dinner2">저녁</label><br><label id="seldinnerEx"></label><a href="" id="seldinnerExLink"></a></td>
  		<td><input type="checkbox" id="dinnerExCheck" style="margin-left:-50px" value="N"></td>
  		<td><input type="button" id="checkMission6" value="기록하기"></td>
  		</tr>
  		<tr>
  		
  		</tr>
  		</table>
  
  	</div>
  	</c:if>
  </div>
  
  
  
  
  
  
  
  <!-- 미션결과 확인(모달) -->
  <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
  			<h4 class="modal-title">미션결과 확인</h4>
      </div>
      <div class="modal-body">
      	<table align="center">
        	<tr>
        		<td><label  style="margin-left:50px;">날짜</label> <input type="text" id="mDate2" style="margin-left:100px;"></td>
        	</tr>
        	<tr style="height:50px;">
        		<td><label style="margin-left:80px; margin-top:40px" id="eating">식단</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="breakf">아침</label><input type="text" id="completeBreakfast2" style="margin-left:30px"><label style="margin-left:30px" id="completeYNBreak"></label></td>
        	</tr>
        	<tr>
        		<td><label id="lun">점심</label><input type="text" id="completeLunch2" style="margin-left:30px"><label style="margin-left:30px" id="completeYNLunch"></label></td>
        	</tr>
        	<tr>
        		<td><label id="din">저녁</label><input type="text" id="completeDinner2" style="margin-left:30px"><label style="margin-left:30px" id="completeYNDinner"></label></td>
        	</tr>
        	
        	
        	<tr>
        		<td><label style="margin-left:80px; margin-top:40px" id="exercise">운동</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="breakE">아침</label><input type="text" id="completeBreakEx2" style="margin-left:30px" ><label style="margin-left:30px" id="completeYNBreakEx"></label></td>
        		<td rowspan="2"></td>
        	</tr>
        	
        	<tr>
        		<td><input type="text" id="completeBreakExLink2" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="lunE">점심</label><input type="text" id="completeLunchEx2" style="margin-left:30px"><label style="margin-left:30px" id="completeYNLunchEx"></label></td>
        		<td rowspan="2"></td>
        	</tr>
        	<tr>	
        		<td><input type="text" id="completeLunchExLink2" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="dinE">저녁</label><input type="text" id="completeDinnerEx2" style="margin-left:30px"><label style="margin-left:30px" id="completeYNDinnerEx"></label></td>
        		<td rowspan="2"></td>
        	</tr>
        	<tr>
        		<td><input type="text" id="completeDinnerExLink2" style="margin-left:50px"></td>
        	</tr>
        	
        </table>
      </div>
  	</div>
   </div>
   </div>

</body>
<script>
console.log("mno: "+${sessionScope.loginUser.mno});


$(function(){
	var mno =  ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	
	console.log("mission.jsp에서 mno: " + mno);
	console.log("mission.jsp에서 mDate2: " + mDate2);
	

})


//아침식단 기록
$("#breakCheck").on('change', function() {
    breakCheck();
   
 });



function breakCheck() {
	if($("input:checkbox[id='breakCheck']").is(":checked")){
		 $("#breakCheck").attr('value', 'Y');
		 console.log("Y일까 N일까: " + $("#breakCheck").val());
	alert("Y로 바뀜");
 }
}



 $("#checkMission").click(function(){
	
	 
	
	 
	 var breakCheck = $("#breakCheck").val();
	 var mno =  ${sessionScope.loginUser.mno};
	 var month = $("#month").text();
	 var morning = $("#morning").text(); //아침
	 var selbreakfast = $("#selbreakfast").text(); //내용
	 var eating = $("#eating").val(); //식단
	 
	 console.log("selbreakfast 내용: " + selbreakfast);
	 console.log("month: " + month);
	 $.ajax({
		 
		url:"checkBreak.ms",
		type:"post",
		data:{breakCheck:breakCheck, mno:mno, month:month, morning:morning , selbreakfast:selbreakfast, eating:eating},
		success:function(data){
			if(data=="success"){
				alert("기록 완료!");
				
				$("#breakCheck").hide();
				
			}
		},error:function(data){
			if(data=="fail"){
				alert("실패!");
			}
		}
	})  
	
});


 
 
 
 
 
 
//점심식단 기록
 $("#lunchCheck").on('change', function() {
     breakCheck2();
  });



 function breakCheck2() {
 	if($("input:checkbox[id='lunchCheck']").is(":checked")){
 		 $("#lunchCheck").attr('value', 'Y');
 		 console.log("Y일까 N일까: " + $("#lunchCheck").val());
 	alert("Y로 바뀜");
  }
 }



  $("#checkMission2").click(function(){
 	 alert("기록버튼");
 	 
 	
 	 
 	 var lunchCheck = $("#lunchCheck").val();
 	 var mno =  ${sessionScope.loginUser.mno};
 	 var month = $("#month").text();
 	 var lunch = $("#lunch").text(); //점심
 	 var sellunch = $("#sellunch").text(); //내용
 	 var eating = $("#eating").val(); //식단
 	 
 	 console.log("sellunch 내용: " + sellunch);
 	 console.log("month: " + month);
 	 $.ajax({
 		 
 		url:"checkLunch.ms",
 		type:"post",
 		data:{lunchCheck:lunchCheck, mno:mno, month:month, lunch:lunch , sellunch:sellunch, eating:eating},
 		success:function(data){
 			if(data=="success"){
 				alert("기록 완료!");
 				$("#lunchCheck").hide();
 			}
 		},error:function(data){
 			if(data=="fail"){
 				alert("실패!");
 			}
 		}
 	})  
 });

 
  
  
  
  
//저녁식단 기록
  $("#dinnerCheck").on('change', function() {
      breakCheck3();
   });



  function breakCheck3() {
  	if($("input:checkbox[id='dinnerCheck']").is(":checked")){
  		 $("#dinnerCheck").attr('value', 'Y');
  		 console.log("Y일까 N일까: " + $("#dinnerCheck").val());
  	alert("Y로 바뀜");
   }
  }



   $("#checkMission3").click(function(){
  	 alert("기록버튼");
  	 
  	
  	 
  	 var dinnerCheck = $("#dinnerCheck").val();
  	 var mno =  ${sessionScope.loginUser.mno};
  	 var month = $("#month").text();
  	 var dinner = $("#dinner").text(); //저녁
  	 var seldinner = $("#seldinner").text(); //내용
  	 var eating = $("#eating").val(); //식단
  	 
  	 console.log("seldinner 내용: " + seldinner);
  	 console.log("month: " + month);
  	 $.ajax({
  		url:"checkDinner.ms",
  		type:"post",
  		data:{dinnerCheck:dinnerCheck, mno:mno, month:month, dinner:dinner , seldinner:seldinner, eating:eating},
  		success:function(data){
  			if(data=="success"){
  				alert("기록 완료!");
  				$("#dinnerCheck").hide();
  			}
  		},error:function(data){
  			if(data=="fail"){
  				alert("실패!");
  			}
  		}
  	})  
  });
  
  
  
  
   
   
   
   
 //아침 운동  기록
   $("#breakExCheck").on('change', function() {
       breakCheck4();
    });



   function breakCheck4() {
   	if($("input:checkbox[id='breakExCheck']").is(":checked")){
   		 $("#breakExCheck").attr('value', 'Y');
   		 console.log("Y일까 N일까: " + $("#breakExCheck").val());
   		 alert("Y로 바뀜");
    }
   }



    $("#checkMission4").click(function(){
   	 alert("기록버튼");
   	 
   	
   	 
   	 var breakExCheck = $("#breakExCheck").val();
   	 var mno =  ${sessionScope.loginUser.mno}; //날짜
   	 var month = $("#month").text();
   	 var morning2 = $("#morning2").text(); //아침
   	 var selbreakEx = $("#selbreakEx").text(); //내용
   	 var exercising = $("#exercising").val(); //운동
   	 var selbreakExLink = $("#selbreakExLink").text();
	 
	 console.log("selbreakExLink: " + selbreakExLink);
   	 console.log("selbreakEx 내용: " + selbreakEx);
   	 console.log("month: " + month);
   	 console.log("exercising: " + exercising);
   	
   	 $.ajax({
   		url:"checkBreakEx.ms",
   		type:"post",
   		data:{breakExCheck:breakExCheck, mno:mno, month:month, morning2:morning2 , selbreakEx:selbreakEx, exercising:exercising, selbreakExLink:selbreakExLink},
   		success:function(data){
   			if(data=="success"){
   				alert("기록 완료!");
   				$("#breakExCheck").hide();
   			}
   		},error:function(data){
   			if(data=="fail"){
   				alert("실패!");
   			}
   		}
   	})  
   });
   
  
  
  
 
    
    
  //점심 운동  기록
    $("#lunchExCheck").on('change', function() {
        breakCheck5();
     });



    function breakCheck5() {
    	if($("input:checkbox[id='lunchExCheck']").is(":checked")){
    		 $("#lunchExCheck").attr('value', 'Y');
    		 console.log("Y일까 N일까: " + $("#lunchExCheck").val());
    		 alert("Y로 바뀜");
     }
    }



     $("#checkMission5").click(function(){
    	 alert("기록버튼");
    	 
    	
    	 
    	 var lunchExCheck = $("#lunchExCheck").val();
    	 var mno =  ${sessionScope.loginUser.mno}; //날짜
    	 var month = $("#month").text();
    	 var lunch2 = $("#lunch2").text(); //아침
    	 var sellunchEx = $("#sellunchEx").text(); //내용
    	 var exercising = $("#exercising").val(); //운동
    	 var sellunchExLink = $("#sellunchExLink").text();
 	 
 	 	 console.log("sellunchExLink: " + sellunchExLink);
    	 console.log("sellunchEx 내용: " + sellunchEx);
    	 console.log("month: " + month);
    	 console.log("exercising: " + exercising);
    	
    	 $.ajax({
    		url:"checkLunchEx.ms",
    		type:"post",
    		data:{lunchExCheck:lunchExCheck, mno:mno, month:month, lunch2:lunch2 , sellunchEx:sellunchEx, exercising:exercising, sellunchExLink:sellunchExLink},
    		success:function(data){
    			if(data=="success"){
    				alert("기록 완료!");
    				$("#lunchExCheck").hide();
    			}
    		},error:function(data){
    			if(data=="fail"){
    				alert("실패!");
    			}
    		}
    	})  
    });
    
     
     
     
     
     
     
     
   //저녁 운동  기록
     $("#dinnerExCheck").on('change', function() {
         breakCheck6();
      });



     function breakCheck6() {
     	if($("input:checkbox[id='dinnerExCheck']").is(":checked")){
     		 $("#dinnerExCheck").attr('value', 'Y');
     		 console.log("Y일까 N일까: " + $("#dinnerExCheck").val());
     		 alert("Y로 바뀜");
      }
     }



      $("#checkMission6").click(function(){
     	 alert("기록버튼");
     	 
     	
     	 
     	 var dinnerExCheck = $("#dinnerExCheck").val();
     	 var mno =  ${sessionScope.loginUser.mno}; //날짜
     	 var month = $("#month").text();
     	 var dinner2 = $("#dinner2").text(); //아침
     	 var seldinnerEx = $("#seldinnerEx").text(); //내용
     	 var exercising = $("#exercising").val(); //운동
     	 var seldinnerExLink = $("#seldinnerExLink").text();
  	 
  	 	 console.log("seldinnerExLink: " + seldinnerExLink);
     	 console.log("seldinnerEx 내용: " + seldinnerEx);
     	 console.log("month: " + month);
     	 console.log("exercising: " + exercising);
     	
     	 $.ajax({
     		url:"checkDinnerEx.ms",
     		type:"post",
     		data:{dinnerExCheck:dinnerExCheck, mno:mno, month:month, dinner2:dinner2 , seldinnerEx:seldinnerEx, exercising:exercising, seldinnerExLink:seldinnerExLink},
     		success:function(data){
     			if(data=="success"){
     				alert("기록 완료!");
     				$("#dinnerExCheck").hide();
     			}
     		},error:function(data){
     			if(data=="fail"){
     				alert("실패!");
     			}
     		}
     	})  
     });
     



	//트레이너->미션등록
	function registerMission(){
		var mno = ${sessionScope.loginUser.mno};
		var mDate=$("#mDate").val();
		console.log("mDate: " + mDate);
		
		var breakfast=$("#breakfast").val();
		console.log("breakfast: "+ breakfast);
		
		var lunch=$("#lunch").val();
		var dinner=$("#dinner").val();
		
		var breakEx = $("#breakEx").val();
		var lunchEx = $("#lunchEx").val();
		var dinnerEx = $("#dinnerEx").val();
		
		
		var breakExLink=$("#breakExLink").val();
		var lunchExLink=$("#lunchExLink").val();
		var dinnerExLink=$("#dinnerExLink").val();
		var everything={mno:mno,mDate:mDate,breakfast:breakfast, lunch:lunch, dinner:dinner, breakEx:breakEx, lunchEx:lunchEx, dinnerEx:dinnerEx , breakExLink:breakExLink, lunchExLink:lunchExLink, dinnerExLink:dinnerExLink}
		console.log(everything);
		$.ajax({
			url:"insert.ms",
			type:"post",
			data:everything, 
			success:function(data){
				alert("미션등록 완료");
				location.href="matching.ms";
			},error:function(status){
				alert("미션등록 실패");
			}
		})
	}
	
	
	//오늘의 아침운동 조회
	$(function(){
		
		var today = $("#month").text();
		$.ajax({
			url:"select.ms",
			type:"post",
			data:{today:today},
			success:function(data){
				
				var mContent = decodeURIComponent(data.mContent);
				console.log("data: " + mContent);
				 $("#selbreakEx").append(mContent); 
				var mLink = data.mLink;
				console.log("mLink: " + mLink);
				
				var rLink= mLink.split(",");
				console.log(rLink);
				var completeYN = data.completeYN;
				if(completeYN == 'Y'){
					$("#breakExCheck").hide();
				}else{
					$("#breakExCheck").show();

				}
				
				var $link;
				
				rLink.forEach(function(element){
					
					
					  
					 var link = $("<a>").attr("href", rLink[0]).text(rLink[0]);
					 console.log("아침운동 link: "+rLink[0]);
					 console.log(link);
					 $("#selbreakExLink").append(link);
					 
					 
					
				})
				
				
				
				
				 
				
			},error:function(stauts){
				
			}
		});
		
		
		//오늘의 점심운동 조회
		$.ajax({
			url:"selectLunch.ms",
			type:"post",
			data:{today:today},
			success:function(data){
				
				
				var mContent = decodeURIComponent(data.mContent);
				console.log("data: " + mContent);
				 $("#sellunchEx").append(mContent); 
				
				 var mLink = data.mLink;
				
				var rLink= mLink.split(",");
				
				var completeYN = data.completeYN;
				if(completeYN == 'Y'){
					$("#lunchExCheck").hide();
				}else{
					$("#lunchExCheck").show();

				}
				
				var $link;
				
				rLink.forEach(function(element){
			
					 var link = $("<a>").attr("href", rLink[0]).text(rLink[0]);
					 $("#sellunchExLink").append(link);
					
					
				})
			},error:function(stauts){
				
			}
		});
		
		
		//오늘의 저녁운동 조회
		$.ajax({
			url:"selectDinner.ms",
			type:"post",
			data:{today:today},
			success:function(data){
				
				
				var mContent = decodeURIComponent(data.mContent);
				console.log("data: " + mContent);
				 $("#seldinnerEx").append(mContent); 
				
				 var mLink = data.mLink;
				
				var rLink= mLink.split(",");
				
				var completeYN = data.completeYN;
				if(completeYN == 'Y'){
					$("#dinnerExCheck").hide();
				}else{
					$("#dinnerExCheck").show();

				}
				
				
				
				
				rLink.forEach(function(element){
			
					 var link = $("<a>").attr("href", rLink[0]).text(rLink[0]);
					
					 $("#seldinnerExLink").append(link);
					
					
				})
			},error:function(stauts){
				
			}
		});
		
		
		
		//오늘의 아침식사 조회
		$.ajax({
			url:"selectEatBreak.ms",
			type:"post",
			data:{today:today},
			success:function(data){
				
				
				var mContent = decodeURIComponent(data.mContent);
			
				 $("#selbreakfast").append(mContent); 
				
				 var completeYN = data.completeYN;
					if(completeYN == 'Y'){
						$("#breakCheck").hide();
					}else{
						$("#breakCheck").show();

					}
					
				
			},error:function(stauts){
				
			}
		});
		
		//오늘의 점심식사 조회
		$.ajax({
			url:"selectEatLunch.ms",
			type:"post",
			data:{today:today},
			success:function(data){
				
				var mContent = decodeURIComponent(data.mContent);
				console.log("data: " + mContent);
				 $("#sellunch").append(mContent); 
				
				 var completeYN = data.completeYN;
					if(completeYN == 'Y'){
						$("#lunchCheck").hide();
					}else{
						$("#lunchCheck").show();

					}
					
				
			},error:function(stauts){
				
			}
		});
		
		
		
		//오늘의 저녁식사 조회
		$.ajax({
			url:"selectEatDinner.ms",
			type:"post",
			data:{today:today},
			success:function(data){
				
				
				var mContent = decodeURIComponent(data.mContent);
				console.log("data: " + mContent);
				 $("#seldinner").append(mContent); 
				
				 var completeYN = data.completeYN;
					if(completeYN == 'Y'){
						$("#dinnerCheck").hide();
					}else{
						$("#dinnerCheck").show();

					}
					
				
			},error:function(stauts){
				
			}
		});
		
	})
	
		
</script>

</html>
