<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/fontawesome/css/font-awesome.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<style>
.menubarLi2 {
	color:#ff0066;
}

#myPageMenu4 {
	background:#ff0066;
	color:white;
}

.subMenuBar {
	width: 100%;
	height: 100%;
	font-family: 'Noto Sans KR', sans-serif;
}

.subMenuBar1 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
	background: #ff0066;
	color: white;
	margin-left: 2px;
	margin-right: -4px;
}

.subMenuBar2 {
	width: 49.8%;
	height: 72px;
	display: inline-block;
	border-bottom: 2px solid #ff0066;
	text-align: center;
	font-size: 16px;
	padding-top: 22px;
}

.membershipMenuDiv {
	width: 100%;
	height: 550px;
	font-family: 'Noto Sans KR', sans-serif;
	text-align:center;
}

.textLabel {
	font-size:25px;
	font-weight:bold;
}

.membershipProduct {
	width: 25%;
	height: 250px;
	border:1px solid gray;
	display:inline-block;
}

.membershipProductTable {
	width: 100%;
	height: 100%;
}

.priceTd {
	background:rgba(0, 0, 0, 0.4);	
}

.costPrice {
	text-decoration:line-through;
	color:white;
}

.salePrice {
	font-size:18px;
	color:white;
}

.membershipNameTd {
	background:#ff0066;
	color:white;
	height:50px;
}

.membershipDetailDiv {
	width: 100%;
	height: 350px;
	font-family: 'Noto Sans KR', sans-serif;
	text-align:center;
	background:#ffe6f3;
}

.membershipDetailTable {
	width:100%;
	height:100%;
}

.membershipDetailTableTd2 {
	font-weight:bold;
	font-size:20px;
}

.selectMembershipDiv {
	width:100%;
	height:100%;
	padding-left:50px;
	padding-right:50px;
}

select {
	width:160px;
	height:28px;
	font-size:14px;
	font-family: 'Nanum Gothic', sans-serif;
}

.payment {
	width:80%;
	height:100%;
	border-style:none;
	background:#ff0066;
	color:white;
	font-family: 'Noto Sans KR', sans-serif;
	font-size:16px;
	float:right;
}
.payment:hover {
	width:80%;
	height:100%;
	border:1px solid #ff0066;
	background:white;
	color:#ff0066;
	font-family: 'Noto Sans KR', sans-serif;
	font-size:16px;
	float:right;
	cursor:pointer;
}

</style>
</head>
<body>

	
	<!-- 트레이너 마이페이지 메뉴바 include ---------------------------------------------------------------------------------------- -->
	<jsp:include page="../trainer/2_myPageMenubar.jsp"/>
	
	
	<!-- 트레이너 마이페이지 서브메뉴바  --------------------------------------------------------------------------------------------- -->
	<div class="subMenuBar">
		<div class="subMenuBar1" id="memberShipPay">멤버십 신청하기</div>
		<div class="subMenuBar2" id="paymentList">결제내역</div>
	</div>
	
	
	<!-- 멤버십 메뉴 영역 ------------------------------------------------------------------------------------------------------- -->
	<div class="membershipMenuDiv">
		<br><br>
		<label class="textLabel">아맞다만의 특별한 멤버십을 확인해보세요!</label><br>
		<label>회원에게 요청서를 보낼 수 있으며, 멤버십 이용 시 고수님 프로필 홍보 등 다양한 혜택이 제공됩니다.<br>고용 후 어떠한 수수료도 받지 않아요.</label>
		<br><br><br>
		<div class="membershipProduct">
			<table class="membershipProductTable">
				<tr>
					<td></td>
				</tr>
				<tr>
					<td class="priceTd">
						<label class="costPrice">&nbsp;60,000원&nbsp;</label><br>
						<label class="salePrice">40,000원 / 30회</label>
					</td>
				</tr>
				<tr>
					<td class="membershipNameTd">멤버십S</td>
				</tr>
			</table>
		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="membershipProduct">
			<table class="membershipProductTable">
				<tr>
					<td></td>
				</tr>
				<tr>
					<td class="priceTd">
						<label class="costPrice">&nbsp;40,000원&nbsp;</label><br>
						<label class="salePrice">30,000원 / 20회</label>
					</td>
				</tr>
				<tr>
					<td class="membershipNameTd">멤버십A</td>
				</tr>
			</table>
		</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<div class="membershipProduct">
			<table class="membershipProductTable">
				<tr>
					<td></td>
				</tr>
				<tr>
					<td class="priceTd">
						<label class="costPrice">&nbsp;20,000원&nbsp;</label><br>
						<label class="salePrice">18,000원 / 10회</label>
					</td>
				</tr>
				<tr>
					<td class="membershipNameTd">멤버십B</td>
				</tr>
			</table>
		</div>
	</div>
	
	
	<!-- 멤버십 메뉴 영역 ------------------------------------------------------------------------------------------------------- -->
	<div class="membershipDetailDiv">
		<table class="membershipDetailTable">
			<tr>
				<td><br><br><br></td>
				<td><br><br><br></td>
			</tr>
			<tr>
				<td class="membershipDetailTableTd2">회원과의 매칭이 가능해집니다!</td>
				<td class="membershipDetailTableTd2">상대방이 무응답시에는 횟수가 차감되지 않아요!</td>
			</tr>
			<tr>
				<td class="membershipDetailTableTd3">횟수당 매칭이 가능합니다.<br>아맞다의 최첨단 매칭 시스템을 지금 이용해보세요!</td>
				<td class="membershipDetailTableTd3">이용자가 해당 요청서에 대해 24시간 내에 응답을 하지 않았을 경우<br>횟수가 차감되지 않으니 걱정마세요.</td>
			</tr>
		</table>
	</div>
	
	
	<!-- 멤버십 메뉴 영역 ------------------------------------------------------------------------------------------------------- -->
	<div class="selectMembershipDiv">
		<br><br>
		<select name="memberShipName" id="memberShipName">
			<option value="S" value2="40000" value3="30"> 멤버십S</option>
			<option value="A" value2="30000" value3="20"> 멤버십A</option>
			<option value="B" value2="18000" value3="10"> 멤버십B</option>
		</select>
		<button class="payment" id="payment">결제하기</button>
	</div>
	
	<script>
	$(function(){
		var tno = ${ sessionScope.loginUser.mno};
		$("#memberShipPay").mouseenter(function(){
			$(this).css("cursor", "pointer");
		}).click(function(){
			location.href="showMyPageMembership.tr";
		})
		$("#paymentList").mouseenter(function(){
			$(this).css("cursor", "pointer");
		}).click(function(){
			location.href="paymentList.tr?tno=" + tno;
		})
	})
	
	//var IMP = window.IMP; // 생략가능
	IMP.init("imp60214973"); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
	
	$(function(){
		$("#payment").click(function(){
			var memberShipName = $("#memberShipName option:selected").val();			
			var memberShipCost = $("#memberShipName option:selected").attr("value2");
			var memberShipUsage = $("#memberShipName option:selected").attr("value3");
			var tno = ${ sessionScope.loginUser.mno};
			var email = "${ sessionScope.loginUser.email}";
			var name = "${ sessionScope.loginUser.name}";
			
			IMP.request_pay({
				pg : 'inicis',
				amount : 100,
				buyer_name : name,
				buyer_email : email,
				name : memberShipName,
			}, function(response) {
				//결제 후 호출되는 callback함수
				if ( response.success ) { //결제 성공
					var msg = '결제가 완료되었습니다.';
				
					alert('멤버쉽' + memberShipName + '의' + msg)
					$.ajax({
						url:"memberShipPayment.tr",
						data: {tno:tno, memberShipName:memberShipName, memberShipCost:memberShipCost, memberShipUsage:memberShipUsage},
						type:"post",
						success:function(data){
							console.log(data)
							
						},
						error:function(data){
							console.log(data);
						},
						complete:function(){
							location.href = "paymentList.tr?tno=" + tno;
						}
					})
				} else {
					 var msg = 'ajax빠져 나온 메시지 : 결제에 실패하였습니다.\n';
				     alert(msg);
				}
			})
			
			
		})
		
	});
	
		
	</script>
	
	
	<!-- footer ------------------------------------------------------------------------------------------------------------ -->
	<br><br><hr><br>
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>