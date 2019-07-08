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
     
      editable: true,
      eventLimit: true, // allow "more" link when too many events
      
      
      
      /* events: [
        {
          title: '식단 실패',
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
      ], */
     
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
    		data:{mDate0:mDate0,mno:mno},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			if(mContent!=null){
    				console.log(data.mContent);
        			alert("조회성공");
        			$("#breakfast2").val(mContent);
        			$("#insertBreakEat").hide();
    			}
    			},error:function(status){
    			alert("조회실패");
    		
    			$("#breakfast2").val("");
				$("#updateBreakEat222").hide();
				$("#insertBreakEat").show();
    		}
    	})
    	
    	//점심 식단 조회
    	$.ajax({
    		url:"selectMissionLunchList.ms",
    		type:"post",
    		data:{mDate0:mDate0,mno:mno},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			
    			if(mContent!=null){
    				console.log(data.mContent);
    				alert("조회성공");
    				$("#lunch2").val(mContent);
    				$("#insertLunchEat").hide();
    			}
    		},error:function(status){
    			alert("조회실패");
    			$("#lunch2").val("");
    			$("#updateLunchEat222").hide();
				$("#insertLunchEat").show();
    		}
    	})
    	
    	//저녁 식단 조회
    	$.ajax({
    		url:"selectMissionDinnerList.ms",
    		type:"post",
    		data:{mDate0:mDate0,mno:mno},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			if(mContent!=null){
    				console.log(data.mContent);
    				alert("조회성공");
    				$("#dinner2").val(mContent);
    				$("#insertDinnerEat").hide();
    			}
    		},error:function(status){
    			alert("조회실패");
    			$("#dinner2").val("");
    			$("#updateDinnerEat222").hide();
				$("#insertDinnerEat").show();
    		}
    	})
    	
    	
    	//아침 운동조회
    	$.ajax({
    		url:"selectBreakEx.ms",
    		type:"post",
    		data:{mDate0:mDate0,mno:mno},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    				if(mContent!=null){
    					console.log(data.mContent);
    					alert("조회성공");
    					$("#breakEx2").val(mContent);
    					$("#insertBreakfastEx").hide();
    			}
    		},error:function(status){
    			alert("조회실패");
    			$("#breakEx2").val("");
    			$("#updateBreakEx222").hide();
				$("#insertBreakfastEx").show();
    		}
    	})
    	
    	console.log("점심mno: " + mno);
    	console.log("mDate0: "+ mDate0);
    	console.log("mDate2: "+ mDate2);
    	
    	
    	
    	
    	//점심 운동조회
    	 $.ajax({
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
    			$("#lunchEx2").val("");
    		}
    	}) 
    	
    	
    	
    	//저녁 운동조회
    	$.ajax({
    		url:"selectDinnerEx.ms",
    		type:"post",
    		data:{mDate0:mDate0, mno:mno},
    		
    		success:function(data){
    			var mContent = decodeURIComponent(data.mContent);
    			console.log(data.mContent);
    			alert("조회성공");
    			$("#dinnerEx2").val(mContent);
    		},error:function(status){
    			alert("조회실패");
    			$("#dinnerEx2").val("");
    		}
    	}) 
    	
    	
    	
    	//아침 운동링크 조회
    	$.ajax({
    		url:"selectMissionExList.ms",
    		type:"post",
    		data:{mDate0:mDate0,mno:mno},
    		success:function(data){
    			var mLink = decodeURIComponent(data.mLink);
    			console.log("아침운동링크조회: " + mLink);
    			if(mLink!=null){
    				alert("조회성공!!!");
    				$("#breakExLink2").val(mLink);
    				$("#insertBreakfastEx").hide();
    			}
    		},error:function(status){
    			alert("조회실패!!!");
    			$("#breakExLink2").val("");
    			$("#updateBreakEx222").hide();
				$("#insertBreakfastEx").show();
    		}
    	})
    	
    	
    	//점심 운동링크 조회
    	 $.ajax({
    		url:"selectMissionExLunchList.ms",
    		type:"post",
    		data:{mDate0:mDate0,mno:mno},
    		
    		success:function(data){
    			var mLink = decodeURIComponent(data.mLink);
    			console.log(data.mLink);
    			alert("조회성공");
    			$("#lunchExLink2").val(mLink);
    			$("#insertLunchEx").hide();
    		},error:function(status){
    			alert("조회실패");
    			$("#lunchExLink2").val("");
    			$("#updateLunchEx222").hide();
				$("#insertLunchEx").show();
    		}
    	})
    	
    	
    	
    	
    	//저녁 운동링크 조회
    	$.ajax({
    		url:"selectMissionExDinnerList.ms",
    		type:"post",
    		data:{mDate0:mDate0,mno:mno},
    		
    		success:function(data){
    			var mLink = decodeURIComponent(data.mLink);
    			console.log(data.mLink);
    			alert("조회성공");
    			$("#dinnerExLink2").val(mLink);
    			$("#insertDinnerEx").hide();
    		},error:function(status){
    			alert("조회실패");
    			$("#dinnerExLink2").val("");
    			$("#updateDinnerEx222").hide();
				$("#insertDinnerEx").show();
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
   	
   	/*  var event = {
   			 title:'오늘의 식단',
   			start: '2019-06-12T10:30:00',
            end: '2019-06-12T12:30:00'
   	 } */
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
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
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
	.fc-button{
		background:#ff0066;
		border:1px solid #ff0066;
	}
	.fc-unthemed td.fc-today {
    background: #ffe6f3;

   
	}
	.fc-button-primary:disabled {
    color: #fff;
    background-color: #ff0066;
    border-color: #ff0066;
}

</style>
</head>
<body>
<c:set var="contextPath" value="${ pageContext.servletContext.contextPath }"
		scope="application" />
  <jsp:include page="../common/menubar.jsp"/>
 <c:if test="${sessionScope.loginUser.mtype =='T'}">   
  <div id="container">
 <div id='calendar' style="margin-top:30px; width:70%; height:550px; "></div> 
  </div>
</c:if>  
  
  
  
<!-- 트레이너 미션수정 모달-->  
  
  <div id="updateModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" style="border:5px solid pink;">
      <div class="modal-header">
        
        <h4 class="modal-title" style="font-family: 'Noto Sans KR', sans-serif;">미션수정</h4>
      </div>
      <div class="modal-body">
       <table style="margin-left:160px;">
        	<tr>
        		<td>날짜 <input type="text" id="mDate2" readonly></td>
        	</tr>
        	<tr style="height:50px;">
        		<td><label style="margin-left:150px; margin-top:40px" id="eating">식단</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="breakf">아침</label><input type="text" id="breakfast2" style="margin-left:30px"><button type="button" id="updateBreakEat222" onclick="updateBreakEat()" style="background:#ff0066; color:white; border:1px solid #ff0066; width:50px; height:30px; margin-left:10px; ">수정하기</button><button type="button" id="insertBreakEat" style="margin-left:10px; background:#ff0066; color:white; border:1px solid #ff0066">등록</button></td>
        	</tr>
        	<tr>
        		<td><label id="lun">점심</label><input type="text" id="lunch2" style="margin-left:30px"><button type="button" id="updateLunchEat222"onclick="updateLunchEat()" style="margin-left:10px; background:#ff0066; color:white; border:1px solid #ff0066; width:50px; height:30px; margin-left:10px;">수정하기</button><button type="button" id="insertLunchEat" style="margin-left:10px; background:#ff0066; color:white; border:1px solid #ff0066">등록</button></td>
        	</tr>
        	<tr>
        		<td><label id="din">저녁</label><input type="text" id="dinner2" style="margin-left:30px"><button type="button" id="updateDinnerEat222" onclick="updateDinnerEat()" style="margin-left:10px; background:#ff0066; color:white; border:1px solid #ff0066; width:50px; height:30px; margin-left:10px;">수정하기</button><button type="button" id="insertDinnerEat" style="margin-left:10px; background:#ff0066; color:white; border:1px solid #ff0066">등록</button></td>
        	</tr>
        	
        	
        	<tr>
        		<td><label style="margin-left:150px; margin-top:40px" id="exercise">운동</label><hr></td>
        	</tr>
        	<tr>
        		<td><label id="breakE">아침</label><input type="text" id="breakEx2" style="margin-left:30px"></td>
        		<td rowspan="2"></td>
        	</tr>
        	
        	<tr>
        		<td><input type="text" id="breakExLink2" style="margin-left:60px"><button type="button" id="insertBreakfastEx" style="margin-left:10px; margin-bottom:-90px; background:#ff0066; color:white; border:1px solid #ff0066">등록</button></td>
        		<td><button type="button" onclick="updateBreakEx()" style="margin-left:-150px;margin-bottom:-50px; width:50px; height:30px; background:#ff0066; color:white; border:1px solid #ff0066" id="updateBreakEx222">수정</button></td>
        	</tr>
        	<tr>
        		<td><label id="lunE">점심</label><input type="text" id="lunchEx2" style="margin-left:30px"></td>
        		<td rowspan="2"></td>
        	</tr>
        	<tr>	
        		<td><input type="text" id="lunchExLink2" style="margin-left:60px"><button type="button" id="insertLunchEx" style=" margin-left:10px; background:#ff0066; color:white; border:1px solid #ff0066">등록</button></td>
        		<td><button type="button" onclick="updateLunchEx()" style="margin-left:-150px; width:50px; height:30px;background:#ff0066; color:white; border:1px solid #ff0066" id="updateLunchEx222">수정</button></td>
        	</tr>
        	<tr>
        		<td><label id="dinE">저녁</label><input type="text" id="dinnerEx2" style="margin-left:30px"></td>
        		<td rowspan="2"></td>
        	</tr>
        	<tr>
        		<td><input type="text" id="dinnerExLink2" style="margin-left:60px"><button type="button" id="insertDinnerEx" style="margin-left:10px; background:#ff0066; color:white; border:1px solid #ff0066">등록</button></td>
        		<td><button type="button" onclick="updateDinnerEx()" style="margin-left:-150px; width:50px; height:30px;background:#ff0066; color:white; border:1px solid #ff0066" id="updateDinnerEx222">수정</button></td>
        	</tr>
        	<!-- <tr>
        		<td><input type="submit" value="수정하기" style="margin-left:80px" onclick="updateMission()"></td>
        	</tr> -->
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

//미션등록
$("#insertBreakEat").click(function(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate=$("#mDate2").val();
	console.log("mDate: " + mDate2);
	
	var breakfast=$("#breakfast2").val(); //값
	console.log("breakfast2: "+ breakfast);
	

	
	var everything={mno:mno,mDate:mDate,breakfast:breakfast}
	console.log(everything);
	$.ajax({
		url:"insert.ms",
		type:"post",
		data:everything, 
		success:function(data){
			alert("미션등록 완료");
			
		},error:function(status){
			alert("미션등록 실패");
		}
	})
})


$("#insertLunchEat").click(function(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate=$("#mDate2").val();
	console.log("mDate: " + mDate2);
	
	var lunch=$("#lunch2").val(); //값
	console.log("lunch: "+ lunch);
	

	
	var everything={mno:mno,mDate:mDate,lunch:lunch}
	console.log(everything);
	$.ajax({
		url:"insertLunchEat.ms",
		type:"post",
		data:everything, 
		success:function(data){
			alert("미션등록 완료");
			
		},error:function(status){
			alert("미션등록 실패");
		}
	})
})

$("#insertDinnerEat").click(function(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate=$("#mDate2").val();
	console.log("mDate: " + mDate2);
	
	var dinner=$("#dinner2").val(); //값
	console.log("dinner: "+ dinner);
	

	
	var everything={mno:mno,mDate:mDate,dinner:dinner}
	console.log(everything);
	$.ajax({
		url:"insertDinnerEat.ms",
		type:"post",
		data:everything, 
		success:function(data){
			alert("미션등록 완료");
			
		},error:function(status){
			alert("미션등록 실패");
		}
	})
})

$("#insertBreakfastEx").click(function(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate=$("#mDate2").val();
	console.log("mDate: " + mDate2);
	
	var breakEx=$("#breakEx2").val(); //값
	console.log("breakEx!!!!!: "+ breakEx);
	
	var breakExLink=$("#breakExLink2").val();
	console.log("breakExLink!!!!!: "+ breakExLink);
	
	var everything={mno:mno,mDate:mDate,breakEx:breakEx,breakExLink:breakExLink}
	console.log(everything);
	$.ajax({
		url:"insertBreakEx.ms",
		type:"post",
		data:everything, 
		success:function(data){
			alert("미션등록 완료");
			
		},error:function(status){
			alert("미션등록 실패");
		}
	})
})






$("#insertLunchEx").click(function(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate=$("#mDate2").val();
	console.log("mDate: " + mDate2);
	
	var lunchEx=$("#lunchEx2").val(); //값
	
	
	var lunchExLink=$("#lunchExLink2").val();

	var everything={mno:mno,mDate:mDate,lunchEx:lunchEx,lunchExLink:lunchExLink}
	console.log(everything);
	$.ajax({
		url:"insertLunchEx.ms",
		type:"post",
		data:everything, 
		success:function(data){
			alert("미션등록 완료");
			
		},error:function(status){
			alert("미션등록 실패");
		}
	})
})






$("#insertDinnerEx").click(function(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate=$("#mDate2").val();
	console.log("mDate: " + mDate2);
	
	var dinnerEx=$("#dinnerEx2").val(); //값
	
	
	var dinnerExLink=$("#dinnerExLink2").val();

	var everything={mno:mno,mDate:mDate,dinnerEx:dinnerEx,dinnerExLink:dinnerExLink}
	console.log("저녁........."+everything);
	$.ajax({
		url:"insertDinnerEx.ms",
		type:"post",
		data:everything, 
		success:function(data){
			alert("미션등록 완료");
			location.href="goUpdateMission.ms";
		},error:function(status){
			alert("미션등록 실패");
		}
	})
})





//미션수정

function updateBreakEat(){
	var mno =  ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	var breakf = $("#breakf").text();
	var breakfast2 = $("#breakfast2").val();
	var eating = $("#eating").text();
	
	console.log("breakf: " + breakf); //아침
	console.log("breakfast2: " + breakfast2); //내용
	console.log("update 아침 내용 날짜: " + mDate2);
	console.log("mno: " + mno);
	console.log("eating: " + eating);  // 식단
	
	
	$.ajax({
		url: "updateBreakEat.ms",
		type: "post",
		data:{mno:mno, mDate2:mDate2, breakf:breakf, breakfast2:breakfast2, eating:eating},
		success:function(data){
			alert("아침 식단 수정 완료!");
		},error:function(status){
			alert("미션 수정 실패");
		}
	})
	
	
}

//리얼 정석 스프링 ajax & Controller!!! 코드 리뷰는 이걸로
function updateLunchEat(){
	var mno =  ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	var lun = $("#lun").text();
	var lunch2 = $("#lunch2").val();
	var eating = $("#eating").text();
	
	console.log("lun: " + lun); //점심
	console.log("lunch2: " + lunch2); //내용
	console.log("update 점심 내용 날짜: " + mDate2);
	console.log("mno: " + mno);
	console.log("eating: " + eating);  // 식단
	
	
	$.ajax({
		url: "updateLunchEat.ms",
		type: "post",
		data:{mno:mno, mDate2:mDate2, lun:lun, lunch2:lunch2, eating:eating},
		success:function(data){
			if(data=="success"){
				alert("점심 식단 수정 완료!");
			}
		},error:function(data){
			if(data=="fail"){
				alert("미션 수정 실패");
			}
		}
	})
	
	
}





function updateDinnerEat(){


	var mno =  ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	var din = $("#din").text();
	var dinner2 = $("#dinner2").val();
	var eating = $("#eating").text();
	
	console.log("din: " + din); //저녁
	console.log("dinner2: " + lunch2); //내용
	console.log("update 점심 내용 날짜: " + mDate2);
	console.log("mno: " + mno);
	console.log("eating: " + eating);  // 식단
	
	
	$.ajax({
		url: "updateDinnerEat.ms",
		type: "post",
		data:{mno:mno, mDate2:mDate2, din:din, dinner2:dinner2, eating:eating},
		success:function(data){
			if(data=="success"){
				alert("저녁 식단 수정 완료!");
			}
		},error:function(data){
			if(data=="fail"){
				alert("미션 수정 실패");
			}
		}
	})

}



//미션수정 - 아침운동 내용 & 아침운동 링크
function updateBreakEx(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	
	var breakE = $("#breakE").text();  
	console.log("breakE: " + breakE);  //아침
	
	var breakEx2 = $("#breakEx2").val();   
	console.log("breakEx2: " + breakEx2);  //내용
	
	var exercise = $("#exercise").text();
	console.log("exercise: " + exercise);  //운동
	
	var breakExLink2 = $("#breakExLink2").val(); //링크
	console.log("breakExLink2: " + breakExLink2);
	
	$.ajax({
		url:"updateBreakEx.ms",
		type:"post",
		data:{mno:mno, mDate2:mDate2, breakE:breakE, breakEx2:breakEx2, exercise:exercise, breakExLink2:breakExLink2},
		success:function(data){
			if(data=="success"){
				alert("아침 운동 수정 완료!");
			}
	},error:function(data){
		if(data=="fail"){
			alert("미션 수정 실패");
		}
	}
	})
}




//미션수정 - 점심운동 내용 & 점심운동 링크
function updateLunchEx(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	
	var lunE = $("#lunE").text();  
	console.log("lunE: " + lunE);  //아침
	
	var lunchEx2 = $("#lunchEx2").val();   
	console.log("lunchEx2: " + lunchEx2);  //내용
	
	var exercise = $("#exercise").text();
	console.log("exercise: " + exercise);  //운동
	
	var lunchExLink2 = $("#lunchExLink2").val(); //링크
	console.log("lunchExLink2: " + lunchExLink2);
	
	$.ajax({
		url:"updateLunchEx.ms",
		type:"post",
		data:{mno:mno, mDate2:mDate2, lunE:lunE, lunchEx2:lunchEx2, exercise:exercise, lunchExLink2:lunchExLink2},
		success:function(data){
			if(data=="success"){
				alert("점심 운동 수정 완료!");
			}
		},error:function(data){
			if(data=="fail"){
				alert("미션 수정 실패");
			}
		}
	
	})

}




//미션수정 - 저녁운동 내용 & 저녁운동 링크
function updateDinnerEx(){
	var mno = ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	
	var dinE = $("#dinE").text();  
	console.log("dinE: " + dinE);  //아침
	
	var dinnerEx2 = $("#dinnerEx2").val();   
	console.log("dinnerEx2: " + dinnerEx2);  //내용
	
	var exercise = $("#exercise").text();
	console.log("exercise: " + exercise);  //운동
	
	var dinnerExLink2 = $("#dinnerExLink2").val(); //링크
	console.log("dinExLink2: " + dinnerExLink2);
	
	$.ajax({
		url:"updateDinnerEx.ms",
		type:"post",
		data:{mno:mno, mDate2:mDate2, dinE:dinE, dinnerEx2:dinnerEx2, exercise:exercise, dinnerExLink2:dinnerExLink2},
		success:function(data){
			if(data=="success"){
				alert("저녁 운동 수정 완료!");
			}
		},error:function(data){
			if(data=="fail"){
				alert("미션 수정 실패");
			}
		}
	
	})

}




//미션수정
function updateMission(){
	
	var mno = ${sessionScope.loginUser.mno};
	var mDate2 = $("#mDate2").val();
	console.log("mDate2: " + mDate2);
	
	var exercise = $("#exercise").val();
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
