<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이어리 리스트</title>
<style>
.outer {
	width: 1000px;
	height: 800px;
	background:#ffe6f3;
	/* background-image: url(${ contextPath }/resources/images/background.jpg); */
	background-repeat: no-repeat;
	background-position: top center;
	background-size: 100% 800px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
	margin-bottom: 50px;
	margin-right: auto;
}

.listArea {
	width: 900px;
	height: 350px;
	margin: 0 auto;
	border-spacing: 10px;
}
.diaryBtn{
	color:white;
	background:#ff0066;
	border: 1px solid #ff0066;
	border-radius: 5px;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="../common/menubar.jsp"></jsp:include>

	<div class="outer">
		<br>
		<h1 id="fontEng" align="center">Diary List</h1>
		<br> <br>
		<input type="button" id="deletefn" value="삭제" class="diaryBtn" onclick="deletefn()" style="float: right; margin-right: 100px;"/>
		<button	class="diaryBtn" onclick="location.href='show.di?mno=${sessionScope.loginUser.mno}'"	style="float: right; margin-right: 20px;">작성하기</button>
		<%-- <a href="show.di?mno=${sessionScope.loginUser.mno}">다이어리 insert</a>&nbsp;&nbsp; --%>
		<br> <br> <input type="hidden" name="mno" value="${ sessionScope.loginUser.mno }" />
		<div class="listArea">
			<!-- <form action="deleteDiary.di" method="post">  -->
			<table class="table table-hover" id="listTable">
				<%-- <input type="hidden" name="bno"	value="${ requestScope.list.bNo }" /> --%>
				<thead>
					<tr>
						<th></th>
						<th><input type="checkbox" name="allCheck" id="allCheck"></th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<!-- <th>테스트</th> -->
					</tr>
				</thead>
				<tbody>

					<%-- <c:forEach var="diaryList" items="${ diaryList }" varStatus="status"> --%>
					<c:if test="${empty diaryList }">
					<%-- <c:forEach var="i" begin="0" end="${fn:length(diaryList)-1}" varStatus="st"> --%>
						<tr class="rowTr">
							<td><input type="hidden"id="diaryListbno" /></td>
							<td onclick="event.cancelBubble=true;"><input type="checkbox" name="checkRow" class="trCheck" /></td>
							<td scope="row"><b></b></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>

					<%-- </c:forEach> --%>
					</c:if>
					
					<c:if test="${!empty diaryList }">
					<c:forEach var="i" begin="0" end="${fn:length(diaryList)-1}" varStatus="st">
						<tr class="rowTr">
							<td><input type="hidden" value="${ diaryList[i].bNo }" id="diaryListbno" /></td>
							<td onclick="event.cancelBubble=true;"><input type="checkbox" name="checkRow" class="trCheck" /></td>
							<td scope="row"><b>${st.count }</b></td>
							<td>${ diaryList[i].bTitle }</td>
							<td><fmt:formatDate value="${ diaryList[i].bWriteDate }" pattern="yyyy-MM-dd" /></td>
							<td></td>
						</tr>

					</c:forEach>
					</c:if>
				</tbody>
			</table>


			<!-- <input type="button" id="deletefn" value="삭제" onclick="deletefn()"/> <br /> -->
			<!-- <input type="submit" value="delete" /> -->

			<!-- </form> -->

			<!-- 페이징 처리를 위한 코드, div지정후 페이징 처리 ----------------------------------->
			<div id="pagingArea" align="center">
				<c:if test="${ pi.currentPage <= 1 }">
            [이전] &nbsp;
         </c:if>
				<c:if test="${ pi.currentPage > 1}">
					<c:url var="blistBack" value="list.di">
						<c:param name="currentPage" value="${ pi.currentPage - 1 }" />
						<c:param name="mno" value="${sessionScope.loginUser.mno}"></c:param>
					</c:url>
					<a href="${ blistBack }">[이전]</a> &nbsp;
         </c:if>
				<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }">
					<c:if test="${ p eq pi.currentPage }">
						<font color="orange" size="4"><b>[${ p }]</b></font>
					</c:if>
					<c:if test="${ p ne pi.currentPage }">
						<c:url var="blistCheck" value="list.di">
							<c:param name="currentPage" value="${ p }" />
							<c:param name="mno" value="${sessionScope.loginUser.mno}"></c:param>

						</c:url>
						<a href="${ blistCheck }">${ p }</a>
					</c:if>

				</c:forEach>

				<c:if test="${pi.currentPage >= pi.maxPage }">
            &nbsp; [다음]
         </c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
					<c:url var="blistEnd" value="list.di">
						<c:param name="currentPage" value="${ pi.currentPage + 1 }" />
						<c:param name="mno" value="${sessionScope.loginUser.mno}" />
					</c:url>
					<a href="${ blistEnd }">&nbsp;[다음]</a>
				</c:if>

			</div>




			<script>
					
			/* $(function(){				
				
				$(".listArea").find("td").mouseenter(function(){					
							
				}).click(function(){
	
					//var no = $(this).parents("tr").children("td").children().eq(1).val();
					//console.log(no);
					// var bno = $("#dListBno").val();
					var bno = $(this).parent().children().children().eq(0).val();
					console.log(bno);
					
					location.href="selectDetailDiary.di?bno=" + bno;
				});			
				
			}); */
			
			
			//상세보기
		    $(".listArea").on('click', 'td', function(){
		       //var bno = $(this).closest('td').siblings(".bno").text();
		       var bno = $(this).parent().children().children().eq(0).val();
		      console.log("비엔오: " + bno);
		      
		      location.href = "selectDetailDiary.di?bno="+bno;
		   });
			
			
		
		$(document).on("click", "#allCheck", function(){
			var check = $(this).is(":checked");
			if(check){
				$(".trCheck").prop("checked", true);
			}else{
				$(".trCheck").prop("checked", false);
			}
		});
		
		
		
		function deletefn(){
			var result = confirm("삭제할래?");
			if(result){
				var bno = new Array();
				var mno = ${ sessionScope.loginUser.mno };
				$(".rowTr").each(function(){
					if($(this).find(".trCheck").is(":checked")){
						console.log($(this).find("#diaryListbno").eq(0).val());
						// bno.push($(this).find("#diaryListbno").eq(0).val());
						var bno2 = $(this).find('#diaryListbno').eq(0).val();
						bno = bno2;
						
					}
				});
				console.log("bno : " + bno);
				location.href="deleteDiary.di?bno=" + bno +"&mno=" + mno;
			}else{
				location = location;
			}
		} 
			
		
		
		
		 /* $("#delete").click(function(){
		        if(confirm("삭제하시겠습니까?")){
		            $("input[name=checkRow]:checked").each(function(){
		               // var tr = $(this).val();
		                // var tr=$(".rowTr='"+tr_value+"']");
		                $(".rowTr").val().remove();
		            });
		        }else{
		            return false;
		        }
		    }); */
		
		    
		    /* $('#delete').click(function(){
				var checkList = [];
				$('#diaryListbno').attr('value',value["${ diaryList[i].bNo }"]);
				
				//2. 체크박스가 체크된 개수만큼  반복문을 돌면서 해당 번호를 가져옴 (저는 blackList 테이블 값을 넣었어요)
				// 참고로 #blnOne은 hidden으로 숨겨놓은 input box
				$("input[name='checkRow']:checked").each(function(i){
					checkList.push($(this).parent('td').find('#diaryListbno').val());
				})
				
				console.log(checkList);
				
				//체크박스를 서블릿으로 보내는 곳
				$.ajax({
					url:"deleteDiary.di",
					type:"post",
					//체크박스는 [] << 이 형태로 넘어가기 때문에 서블릿 소스도 같이 보내드릴게요~
					data:{checkList:checkList},
					success:function(data){
						console.log(data);
						
						if(data=='success'){
							alert('삭제완료.');
							location.href='';
						}
					}
					
				});
			}); */
			
		</script>
		</div>
	</div>



	<script src="<c:url value="/resources/ad-js/jquery-3.3.1.min.js" />"></script>
	<!-- https://jquery.com/download/ -->
	<script src="<c:url value="/resources/ad-js/moment.min.js" />"></script>
	<!-- https://momentjs.com/ -->
	<script src="<c:url value="/resources/ad-js/Chart.min.js" />"></script>
	<!-- http://www.chartjs.org/docs/latest/ -->
	<script src="<c:url value="/resources/ad-js/bootstrap.min.js" />"></script>
	<!-- https://getbootstrap.com/ -->
	<script src="<c:url value="/resources/ad-js/tooplate-scripts.js" />"></script>


	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>