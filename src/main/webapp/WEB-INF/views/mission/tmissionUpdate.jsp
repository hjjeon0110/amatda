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
    	var mDate0 = date.dateStr;
    	console.log("mDate0: " + mDate0);
        $("#mDate2").val(date.dateStr);
    	alert("후");
    	/* $("#dialog").modal(); */
    	$("#updateModal").modal();	
    	
    	
    	var mno = ${sessionScope.loginUser.mno};
    	
    	//미션수정 전 미리 값 가져오기
		//아침 식단 조회
    	$.ajax({
    		url:"selectMissionList.ms",
    		type:"post",
    		data:{mDate0:mDate0},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			console.log(data.mContent);
    			alert("조회성공");
    			$("#breakfast2").val(mContent);
    		},error:function(status){
    			alert("조회실패");
    		}
    	})
    	
    	//점심 식단 조회
    	$.ajax({
    		url:"selectMissionLunchList.ms",
    		type:"post",
    		data:{mDate0:mDate0},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			console.log(data.mContent);
    			alert("조회성공");
    			$("#lunch2").val(mContent);
    		},error:function(status){
    			alert("조회실패");
    		}
    	})
    	
    	//저녁 식단 조회
    	$.ajax({
    		url:"selectMissionDinnerList.ms",
    		type:"post",
    		data:{mDate0:mDate0},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			console.log(data.mContent);
    			alert("조회성공");
    			$("#dinner2").val(mContent);
    		},error:function(status){
    			alert("조회실패");
    		}
    	})
    	
    	
    	//아침 운동조회
    	$.ajax({
    		url:"selectBreakEx.ms",
    		type:"post",
    		data:{mDate0:mDate0},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			console.log(data.mContent);
    			alert("조회성공");
    			$("#breakEx2").val(mContent);
    		},error:function(status){
    			alert("조회실패");
    		}
    	})
    	
    	console.log("점심mno: " + mno);
    	console.log("mDate0: "+ mDate0);
    	console.log("mDate2: "+ mDate2);
    	
    	
    	
    	
    	//점심 운동조회
    	/* $.ajax({
    		url:"selectLunchEx.ms",
    		type:"post",
    		data:{mDate0:mDate0, mno:mno},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			console.log(data.mContent);
    			alert("조회성공");
    			$("#lunchEx2").val(mContent);
    		},error:function(status){
    			alert("조회실패");
    		}
    	}) */
    	
    	
    	
    	//아침 운동링크 조회
    	$.ajax({
    		url:"selectMissionExList.ms",
    		type:"post",
    		data:{mDate0:mDate0},
    		success:function(data){
    			
    			alert("조회성공");
    			$("#breakExLink2").val(data.mLink);
    		},error:function(status){
    			alert("조회실패");
    		}
    	})
    	
    	
    	//점심 운동링크 조회
    	$.ajax({
    		url:"selectMissionExLunchList.ms",
    		type:"post",
    		data:{mDate0:mDate0},
    		
    		success:function(data){
    			var mLink = decodeURIComponent(data.mLink);
    			console.log(data.mLink);
    			alert("조회성공");
    			$("#lunchExLink2").val(data.mLink);
    		},error:function(status){
    			alert("조회실패");
    		}
    	})
    	
    	
    	
    	
    	//저녁 운동링크 조회
    	$.ajax({
    		url:"selectMissionExDinnerList.ms",
    		type:"post",
    		data:{mDate0:mDate0},
    		
    		success:function(data){
    			var mLink = decodeURIComponent(data.mLink);
    			console.log(data.mLink);
    			alert("조회성공");
    			$("#dinnerExLink2").val(data.mLink);
    		},error:function(status){
    			alert("조회실패");
    		}
    	})
    	
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
 <div id='calendar' style="margin-top:30px; width:70%; height:550px"></div> 
 <%--  <!-- 트레이너만 보이는 오늘의 미션(체크박스x) -->
  <c:if test="${sessionScope.loginUser.mtype =='T'}">   
  	
  	<div id="selectToday" style="float:right; border:1px solid pink; width:30%; height:700px">
  		<div id="month" align="center"></div>
  	
  		<label>오늘의 식단</label><hr>
  		<table>
  		<tr>
  		<td><label>아침</label><br><label id="selbreakfast" style=""></label></td>
  		</tr>
  		<tr>
  		<td><label>점심</label><br><label id="sellunch"></label></td>
  		</tr>
  		<tr>
  		<td><label>저녁</label><br><label id="seldinner"></label></td>
  		</tr>
  		</table>
  	
  		<label style="margin-top:30px">오늘의 운동</label><hr>
  		<table>
  		<tr>
  		<td><label>아침</label><br><label id="selbreakEx" style="width:300px;"></label><a href="" id="selbreakExLink"></a></td>
  		</tr>
  		<tr>
  		<td><label>점심</label><br><label id="sellunchEx"></label><a href="" id="sellunchExLink"></a></td>
  		</tr>
  		<tr>
  		<td><label>저녁</label><br><label id="seldinnerEx"></label><a href="" id="seldinnerExLink"></a></td>
  		</tr>
  		<tr>
  		</tr>
  		</table>
  		
  		<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#updateModal">미션 수정</button>
  		
  	
  	</div>
  	</c:if>
  	 --%>
  	
  </div>
  
  
  
  
<!-- 트레이너 미션수정 모달-->  
  
  <div id="updateModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        
        <h4 class="modal-title">미션수정</h4>
      </div>
      <div class="modal-body">
       <table align="center">
        	<tr>
        		<td>날짜 <input type="text" id="mDate2"></td>
        	</tr>
        	<tr style="height:50px;">
        		<td><label style="margin-left:80px; margin-top:40px" id="eating">식단</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="breakf">아침</label><input type="text" id="breakfast2"></td>
        	</tr>
        	<tr>
        		<td><label id="lun">점심</label><input type="text" id="lunch2"></td>
        	</tr>
        	<tr>
        		<td><label id="din">저녁</label><input type="text" id="dinner2"></td>
        	</tr>
        	
        	
        	<tr>
        		<td><label style="margin-left:80px; margin-top:40px" id="exercise">운동</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="breakE">아침</label><input type="text" id="breakEx2" ></td>
        	</tr>
        	
        	<tr>
        		<td><input type="text" id="breakExLink2" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="lunE">점심</label><input type="text" id="lunchEx2"></td>
        	</tr>
        	<tr>	
        		<td><input type="text" id="lunchExLink2" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><label id="dinE">저녁</label><input type="text" id="dinnerEx2"></td>
        	</tr>
        	<tr>
        		<td><input type="text" id="dinnerExLink2" style="margin-left:50px"></td>
        	</tr>
        	<tr>
        		<td><input type="submit" value="수정하기" style="margin-left:80px" onclick="updateMission()"></td>
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











//미션수정
function updateMission(){
	
	var mno = ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	console.log("mDate2: " + mDate2);
	
	var exercise = $("#exercise").text();
	console.log("exercise: " + exercise);
	
	var eating = $("#eating").text();
	console.log("eating: " + eating);
	
	
	var breakf = $("#breakf").text(); 
	console.log("break: " + breakf); //아침
	
	var lun = $("#lun").text();
	var din = $("#din").text();
	
	var breakE = $("#breakE").text(); //아침
	var lunE = $("#lunE").text();
	var dinE = $("#dinE").text();
	
	
	var breakfast2=$("#breakfast2").val();
	console.log("breakfast2: "+ breakfast2);
	
	var lunch2=$("#lunch2").val();
	console.log("lunch2: " + lunch2);
	var dinner2=$("#dinner2").val();
	
	var breakEx2 = $("#breakEx2").val();
	var lunchEx2 = $("#lunchEx2").val();
	var dinnerEx2 = $("#dinnerEx2").val();
	
	
	var breakExLink2=$("#breakExLink2").val();
	var lunchExLink2=$("#lunchExLink2").val();
	var dinnerExLink2=$("#dinnerExLink2").val();
	var everything2={mno:mno,mDate2:mDate2,breakfast2:breakfast2, lunch2:lunch2, dinner2:dinner2, 
			breakEx2:breakEx2, lunchEx2:lunchEx2, dinnerEx2:dinnerEx2 , 
			breakExLink2:breakExLink2, lunchExLink2:lunchExLink2, dinnerExLink2:dinnerExLink2,
			eating:eating,exercise:exercise, breakf:breakf, lun:lun, din:din, breakE:breakE, lunE:lunE, dinE:dinE}
	console.log(everything2);
	
	
	
	
	
	
	$.ajax({
		url: "updateMission.ms",
		type: "post",
		data:everything2,
		success:function(data){
			alert("미션 수정 성공");
		},error:function(status){
			alert("미션 수정 실패");
		}
	})

}





</script>

</html>
