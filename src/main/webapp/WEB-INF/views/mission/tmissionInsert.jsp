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
    	$("#mDate").val(date.dateStr);
    	alert("후");
    	/* $("#dialog").modal(); */
    	$("#insertModal").modal();	
    	
    	
    	
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
   	 console.log(date2.getMonth()+1);
   	 console.log(date2.getDate());
   	 console.log(date2.getFullYear());
   	 console.log("날짜0 : " + cfSetAddZero(date2.getDate()));
   	 var event = {
   			 title:'오늘의 식단',
   			start: '2019-06-12T10:30:00',
            end: '2019-06-12T12:30:00'
   	 }
   	 calendar.addEvent(event);
   	 
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
  
  <!-- 트레이너만 보이는 오늘의 미션(체크박스x) -->
  <c:if test="${sessionScope.loginUser.mtype =='T'}">   
  	<div id='calendar' style="margin-top:30px; float:left; width:70%; height:550px"></div>
  	<div id="selectToday" style="float:right; border:1px solid pink; width:30%; height:700px">
  		<div id="month" align="center"></div>
  	
  		<label>오늘의 식단</label><hr>
  		<table>
  		<tr>
  		<td><label>아침</label><br><label id="selbreakfast" style="margin-left:20px"></label></td>
  		</tr>
  		<tr>
  		<td><label>점심</label><br><label id="sellunch" style="margin-left:20px"></label></td>
  		</tr>
  		<tr>
  		<td><label>저녁</label><br><label id="seldinner" style="margin-left:20px"></label></td>
  		</tr>
  		</table>
  	
  		<label style="margin-top:30px">오늘의 운동</label><hr>
  		<table>
  		<tr>
  		<td><label>아침</label><br><label id="selbreakEx" style="margin-left:20px;"></label><a href="" id="selbreakExLink" style="margin-left:20px;"></a></td>
  		</tr>
  		<tr>
  		<td><label>점심</label><br><label id="sellunchEx" style="margin-left:20px"></label><a href="" id="sellunchExLink" style="margin-left:20px;"></a></td>
  		</tr>
  		<tr>
  		<td><label>저녁</label><br><label id="seldinnerEx" style="margin-left:20px"></label><a href="" id="seldinnerExLink" style="margin-left:20px;"></a></td>
  		</tr>
  		
  		</table>
  		
  		
  	
  	</div>
  	</c:if>
  	
  	
  </div>
  
  
  
  

  

<!-- 트레이너 미션등록 모달 --> 
<div id="insertModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <!-- <button type="button" class="close" data-dismiss="modal">&times;</button> -->
        <h4 class="modal-title">미션등록</h4>
      </div>
      <div class="modal-body">
 
        <table align="center">
        	<tr>
        		<td>날짜 <input type="text" id="mDate"></td>
        	</tr>
        	<tr style="height:50px;">
        		<td><label style="margin-left:80px; margin-top:40px">오늘의 식단</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="break">아침</label><input type="text" id="breakfast"></td>
        	</tr>
        	<tr>
        		<td><label id="lun">점심</label><input type="text" id="lunch"></td>
        	</tr>
        	<tr>
        		<td><label id="din">저녁</label><input type="text" id="dinner"></td>
        	</tr>
        	
        	
        	<tr>
        		<td><label style="margin-left:80px; margin-top:40px">오늘의 운동</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="breakE">아침</label><!--  --><input type="text" id="breakEx" ></td>
        	</tr>
        	
        	<tr>
        		<td><input type="text" id="breakExLink" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="lunE">점심</label><input type="text" id="lunchEx"></td>
        	</tr>
        	<tr>	
        		<td><input type="text" id="lunchExLink" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="dinE">저녁</label><input type="text" id="dinnerEx"></td>
        	</tr>
        	<tr>
        		<td><input type="text" id="dinnerExLink" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><input type="submit" value="등록하기" style="margin-left:80px" onclick="registerMission()"></td>
        	</tr>
        </table>
     
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>

</body>
<script>



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
				location.href="goInsertMission.ms";
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
				
				
					
				
			},error:function(stauts){
				
			}
		});
		
	})
</script>

</html>
