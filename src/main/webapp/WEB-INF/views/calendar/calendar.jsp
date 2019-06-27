<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    
    
    var calendar = new FullCalendar.Calendar(calendarEl, {
      plugins: [ 'interaction', 'dayGrid' ],
      defaultDate: '2019-06-12',
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      
      
      
      events: [
        {
          title: 'All Day Event',
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
    	$("#missionDate").val(date.dateStr);
    	alert("후");
    	/* $("#dialog").modal(); */
    	$("#myModal").modal();	
     },
    
    
     
     
    });
	
   



    
    calendar.render();
   

  });
  
  
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
}


}

</style>
</head>
<body>
  <jsp:include page="../common/menubar.jsp"/>
  <div id='calendar' style="margin-top:30px"></div>
	
	<div id="myModal" class="modal fade" role="dialog">
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
        		<td>날짜 <input type="text" id="missionDate"></td>
        	</tr>
        	<tr style="height:50px;">
        		<td><label style="margin-left:80px; margin-top:40px">오늘의 식단</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="name">아침</label><input type="text" id="breakfast"></td>
        	</tr>
        	<tr>
        		<td><label id="name">점심</label><input type="text" id="lunch"></td>
        	</tr>
        	<tr>
        		<td><label id="name">저녁</label><input type="text" id="dinner"></td>
        	</tr>
        	
        	
        	<tr>
        		<td><label style="margin-left:80px; margin-top:40px">오늘의 운동</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="name">아침</label><input type="text" id="breakEx"></td>
        	</tr>
        	
        	<tr>
        		<td><input type="text" id="breakExLink" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="name">점심</label><input type="text" id="lunchEx"></td>
        	</tr>
        	<tr>	
        		<td><input type="text" id="lunchExLink" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="name">저녁</label><input type="text" id="dinnerEx"></td>
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
	function registerMission(){
		var mDate=$("#mDate").val();
		var breakfast=$("#breakfast").val();
		var lunch=$("#lunch").val();
		var dinner=$("#dinner").val();
		
		var breakEx = $("#breakEx").val();
		var lunchEx = $("#lunchEx").val();
		var dinnerEx = $("#dinnerEx").val();
		
		
		var breakExLink=$("#breakExLink").val();
		var lunchExLink=$("#lunchExLink").val();
		var dinnerExLink=$("#dinnerExLink").val();
		var everything={mDate:mDate,breakfast:breakfast, lunch:lunch, dinner:dinner, breakEx:breakEx, lunchEx:lunchEx, dinnerEx:dinnerEx , breakExLink:breakExLink, lunchExLink:lunchExLink, dinnerExLink:dinnerExLink}
		$.ajax({
			url:"insert.ca",
			type:"post",
			data:everything, 
			success:function(data){
				alert("미션등록 성공");
			},error:function(status){
				alert("미션등록 실패");
			}
		})
	}
</script>

</html>
