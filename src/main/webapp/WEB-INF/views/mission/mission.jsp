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
    	$("#mDate").val(date.dateStr);
    	alert("후");
    	/* $("#dialog").modal(); */
    	$("#myModal").modal();	
    	
    	
    	
     },
    
    

    
     
    });
	
   



    
    calendar.render();
   

  });
  $(function(){
	  var date2 = new Date();
	  if(date2.getMonth()<12){
		var result = '0'+  (date2.getMonth()+1);
		console.log(result);
	  }else{
		var result = date2.getMonth()+1
	  }
 	  var today = $('#month').text(date2.getFullYear()).append("-").append(result).append("-").append(date2.getDate());
   	 console.log(date2.getMonth()+1);
   	 console.log(date2.getDate());
   	 console.log(date2.getFullYear());
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
}


}

</style>
</head>
<body>
  <jsp:include page="../common/menubar.jsp"/>
  <div id="container">
  	<div id='calendar' style="margin-top:30px; float:left; width:70%; height:550px"></div>
  	<div id="selectToday" style="float:right; border:1px solid pink; width:30%; height:700px">
  		<div id="month" align="center"></div>
  		<label>오늘의 식단</label><hr>
  		<table>
  		<tr>
  		<td><label>아침</label><br><label id="breakfast"></label></td>
  		</tr>
  		<tr>
  		<td><label>점심</label><br><label id="lunch"></label></td>
  		</tr>
  		<tr>
  		<td><label>저녁</label><br><label id="dinner"></label></td>
  		</tr>
  		</table>
  		
  		
  		<label style="margin-top:30px">오늘의 운동</label><hr>
  		<table>
  		<tr>
  		<td><label>아침</label><br><label id="breakEx" style="width:300px;"></label><a href="" id="breakExLink"></a></td>
  		</tr>
  		<tr>
  		<td><label>점심</label><br><label id="lunchEx"></label></td>
  		</tr>
  		<tr>
  		<td><label>저녁</label><br><label id="dinnerEx"></label></td>
  		</tr>
  		</table>
  	</div>
  </div>
  
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
        		<td>날짜 <input type="text" id="mDate"></td>
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
        		<td><label id="name">아침</label><a id="breakEx"></a></td>
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
	
	$(function(){
		var today = $("#month").text();
		$.ajax({
			url:"select.ms",
			type:"post",
			data:{today:today},
			success:function(data){
				alert("조회성공");
				var mContent = decodeURIComponent(data.mContent);
				console.log("data: " + mContent);
				 $("#breakEx").append(mContent); 
				var mLink = data.mLink;
				console.log("mLink: " + mLink);
				
				var rLink= mLink.split(",");
				console.log(rLink);
				
				
				var $link;
				
				rLink.forEach(function(element){
					  /* $link = $("<a href>").text(rLink[0]);
					
					  $("#breakEx").append($link);  이건 링크가 안넘어감*/
					
					  
					/*  $link = $("<a href='onclick'>").text(rLink[0]);
						
					  $("#breakEx").append($link);  이것도 될것같은데 안됨*/
					  
					  //$("#breakEx").attr("href", rLink[]);
					  
					/*   
					var real = $link.attr("href",rLink);
					console.log(real);  */
					
					/* var real = $("#breakEx").attr("href", rLink); */
					
				})
				
				
				
				
				 
				
			},error:function(stauts){
				alert("조회실패");
			}
		})
	})
</script>

</html>
