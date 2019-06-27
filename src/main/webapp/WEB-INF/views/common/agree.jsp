<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<style>
	body{
	font-family: 'Noto Sans KR', sans-serif;
	
}
.eng{
	font-family: 'Montserrat', sans-serif;
}

p{
	float:right;
}
form{
	margin-top:50px;
}
.checkbox{
	float:right; 
	width:30px;
}
.privateInfo{
	font-size:17px;
}

.registerTr{
	height:70px;
}

#submit{
	width:600px; 
	background:#ff0066;  
	border:1px solid #ff0066; 
	color:white; 
	font-size:17px;
}
</style>
</head>
<body>
<jsp:include page="../common/menubar.jsp"/>
	<div class="container" align="center">
	<hr style="margin-top:100px;">
	<h2 align="center" class="eng" style="color:#ff0066; font-size:40px; margin-top:30px;">약관동의</h2>
	<h5 class="eng">모든 약관을 동의하셔야 회원가입이 가능합니다.</h5>
	<form action="memberJoinView.me" method="post">
		<table>
		<tr>
    		<td colspan="3" class="bigName">이용약관</td>
    	</tr>
    	<tr class="trHeight">
    		<td colspan="3">
    			<textarea class="form-control" cols="67" rows="5">
    				
아맞다  회원가입 이용약관
주식회사 브레이브모바일 이용약관
제 1 장 총칙
제 1 조 (목 적)
이 약관은 이용자가 주식회사 브레이브모바일(이하 “회사”)이 운영하는 인터넷 서비스 사이트(이하 “사이트” 또는 “아맞다”)를 통해 제공하는 인터넷 전자상거래 관련 서비스(이하 “서비스”)와 관련하여 회사와 이용자의 권리, 의무, 책임사항을 규정함을 목적으로 합니다. 또한 본 약관은 유무선 PC통신, 태블릿 PC, 스마트폰(아이폰, 안드로이드폰 등) 어플리케이션 및 모바일웹 등을 이용하는 전자상거래 등에 대해서도 그 성질에 반하지 않는 한 준용됩니다.
본 약관이 규정한 내용 이외의 회사와 이용자 간의 권리, 의무 및 책임사항에 관하여서는 전기통신사업법 기타 대한민국의 관련 법령과 상관습에 의합니다.
제 2 조 (정 의)
이 약관에서 사용하는 용어의 정의는 다음과 같습니다.

회사가 운영하는 사이트는 아래와 같습니다.
amatda.com, 추후 회사에서 공지하고 제공하는 기타 웹사이트, 스마트폰 및 이동통신기기를 통해 제공되는 모바일 어플리케이션 포함
이용자: 숨고에 접속하여 이 약관에 따라 서비스를 받는 회원 및 비회원을 말합니다.
요청자: 회사에 개인정보를 제공하여 회원등록을 한 자로서, 회사와 서비스 이용계약을 체결하고 회원 아이디(ID)를 부여 받아 사이트 내에 게시된 광고를 열람하거나 요청서를 작성하고 고수 회원에게 요청서를 보내는 등 원하는 용역의 고수를 찾기 위해 사이트를 계속적으로 이용할 수 있는 자를 말합니다.
아맞다 회원: 회사에 개인정보를 제공하여 회원등록을 한 자로서, 회사와 서비스 이용계약을 체결하고 회원 아이디(ID)를 부여 받아 요청자에게 견적서를 보낼 수 있고 멤버십에 가입하는 등 요청자를 찾기 위한 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
요청서: 요청자가 원하는 용역에 대한 구체적인 정보를 담고 있는 서비스 요청서입니다.
견적서: 고수 회원이 자신이 제공할 수 있는 용역에 관하여 요청자에게 보낼 수 있는 용역 금액 및 내용에 대한 요약본입니다.
멤버십 서비스: 고수 회원이 요청자에게 견적서를 보내거나, 기타 혜택을 받기 위해 가입해야 할 유료 서비스를 칭합니다.
멤버십 회원: 비용을 지불하고 회사가 제공하는 멤버십 서비스를 선택하여 이용하는 고수 회원을 의미합니다.
크레딧: 고수 회원이 멤버십에 가입하면 부여 받는 사이트 내의 사이버머니이며, 요청자에게 견적서를 보내기 위해 사용할 수 있습니다.
광고: 회사가 정한 방식에 따라 멤버십 회원이 신청한 광고소재를 요청자에게 보여주는 방식의 온라인 광고를 의미합니다.
광고소재: 멤버십 회원이 게재 신청하여 숨고에 게재되는 키워드, 제목, 설명문구, 부가 정보, 이미지 등 광고 내용을 의미합니다.
컨텐츠(Contents): 회사가 숨고에서 제공하는 정보, 요청서 작성, 견적서 작성, 요청서 수신, 견적서 수신, 광고서비스, 프로그램 등 부호ㆍ문자ㆍ도형ㆍ색채ㆍ음성ㆍ음향ㆍ이미지ㆍ영상 및 복합체의 정보나 자료를 의미합니다.
회원 아이디(이하 “ID”): 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자 또는 숫자의 조합을 말합니다.
비밀번호(Password): 이용자가 등록회원과 동일인인지 신원을 확인하고, 회원의 통신상 개인정보를 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 말합니다.
비회원: 회원에 가입하지 않고 서비스를 이용하는 자로 숨고 이용자 및 정보의 수신을 위해 전자우편 및 SMS 서비스를 온라인 또는 서면으로 신청한 자를 지칭합니다.
회원 탈퇴: 회원이 이용계약을 종료시키는 행위를 말합니다.
뉴스레터(Newsletter): 회사가 보내는 숨고 소식이 담긴 이메일을 의미합니다.
안전거래서비스: 서비스로서, 회원 상호 간의 금전 거래를 안전하고 용이하게 하기 위하여 회사가 제공하는 서비스를 의미합니다.
제 3 조 (약관의 명시, 효력 및 개정)
회사는 이 약관의 내용과 주소지, 관리자의 성명, 개인정보보호 담당자의 성명, 연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 숨고의 초기 서비스 화면에 게시합니다. 다만, 약관의 구체적 내용은 이용자가 연결화면을 통하여 볼 수 있습니다.
이 약관은 그 내용을 숨고에 게시하거나 이메일 등 기타의 방법으로 회원에게 공지함으로써 효력이 발생합니다.
서비스 이용 시 화면에서 제시되는 경고 메시지의 효력은 본 약관의 효력과 동일합니다.
회사는 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보 보호 등에 관한 법률 기타 관련 법령을 위배하지 않는 범위 내에서 약관을 변경할 수 있으며, 변경된 약관은 2항과 같은 방법으로 효력을 발생합니다.
제4항에 따라 공지된 적용일자 이후에 회원이 회사의 서비스를 계속 이용하는 경우에는 변경된 약관의 효력 발생일로부터 7일 이내에 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우 개정된 약관에 동의하는 것으로 간주합니다. 개정된 약관에 동의하지 아니하는 회원은 언제든지 자유롭게 서비스 이용계약을 해지할 수 있습니다.
제 4 조 (약관 외 준칙)
이 약관은 회사가 제공하는 개별서비스에 관한 이용안내(이하 ‘서비스 별 안내’라 합니다)와 함께 적용합니다.
이 약관에 명시되지 않은 사항에 대해서는 전기통신사업법, 전자거래기본법, 정보통신망법, 기타 관련법령 및 서비스 별 안내의 규정에 의합니다.
제 2 장 서비스 이용 계약
제 5 조 (이용 계약의 성립)
이용 계약은 서비스 이용 희망자의 이 약관에 대해 동의한다는 의사표시와 이용 신청에 대한 회사의 승낙으로 성립됩니다.
이 약관에 대한 동의는 이용 신청 당시 링크를 확인함으로써 그 의사표시를 합니다.
14세 미만의 미성년자의 경우 부모님(법정 대리인)의 동의를 확인한 후 이용 계약이 성립됩니다.
제 6 조 (회원가입 및 승낙)
회원가입은 회원이 되고자 하는 이용자(이하 “가입신청자”)가 약관의 내용에 동의를 하고, 회사가 정한 가입 양식에 따라 회원정보(이용자ID), 비밀번호, 주소, 연락처 등)를 기입하여 회원가입신청을 하고 회사가 이러한 신청에 대하여 승인함으로써 체결됩니다.
이용자의 회원가입신청에 대하여 회사가 승낙한 경우, 회사는 회원 ID/Password와 기타 회사가 필요하다고 인정하는 내용을 이용자에게 통지합니다.
회사는 이용자의 신청에 대해서 회원가입을 승낙하는 것을 원칙으로 합니다. 다만, 다음 각 호에 해당하는 신청에 대하여는 승인을 하지 아니할 수 있습니다.
본인 실명이 아니거나 다른 사람의 명의를 사용하여 신청하였을 때
서비스 이용 계약 신청서의 내용을 허위로 기재하였을 때
사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청하였을 때
부정한 용도로 본 서비스를 이용하고자 하는 경우
영리를 추구할 목적으로 본 서비스를 이용하고자 하는 경우
본 서비스와 경쟁관계에 있는 이용자가 신청하는 경우
기타 이용신청자의 귀책사유로 이용승낙이 곤란한 경우
회사는 서비스 이용신청이 다음 각 호에 해당하는 경우에는 그 신청에 대하여 승낙 제한사유가 해소될 때까지 승낙을 유보할 수 있습니다.
회사가 설비의 여유가 없는 경우
회사의 기술상 지장이 있는 경우
기타 회사의 귀책사유로 이용승낙이 곤란한 경우
제 7 조 (서비스 이용)
회원은 사이트를 통한 회원가입 시 발급된 ID 하나로 제1장 제2조 1항에 명시된 모든 사이트에 자동 가입되며, 해당 서비스를 이용할 수 있습니다. 단, 일부 사이트의 특정 서비스는 별도의 가입절차를 통하여 이용할 수 있으며, 이 경우 해당 사이트의 이용 시에는 해당 사이트의 특정서비스에 대한 이용약관이 이 약관보다 우선 적용됩니다.
회원의 최초 서비스 이용신청 이후 사이트가 늘어난 경우에도 신규 사이트의 이용약관에서 달리 명시되지 않는 한 제1항의 내용이 마찬가지로 적용됩니다. 이 경우 회사는 신규 사이트의 서비스 개시 일자, 회원자동가입 사실 기타 관련 정보를 그 개시일 7일 이전부터 개시 일까지 각 사이트에 공지하거나, 또는 그 개시일 7일 이전까지 이메일 통지 등으로 각 회원에게 개별 통지합니다.
숨고 서비스 이용은 사이트의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다.
회사가 숨고에서 제공하는 서비스는 기본적으로 무료입니다. 단, 별도로 고수 회원이 사이트 내에 광고를 게시하거나 견적서를 보내기 위해서는 멤버십에 가입해야 해당 서비스를 이용 가능합니다.
유료 서비스의 이용 요금 및 결제 방식은 해당 서비스에 명시되어 있는 규정에 따릅니다.
회사는 통신판매중개업자로서 서비스 요금이 무료인 서비스와 일부 유료서비스 이용과 관련하여 이용자들 사이에서 발생한 거래와 관련된 손해에 대해서는 회사에 고의 또는 중대한 과실이 있는 경우를 제외하고는 책임을 지지 않습니다.
제 3 장 서비스 제공 및 변경
제 8 조 (서비스 내용)
회사가 제공하는 서비스의 내용은 다음과 같습니다.

요청자에게 아맞다 회원의 견적서 정보 제공
요청자의 요청서를 고수 회원에게 제공
디렉토리 광고노출
멤버십 판매
기타 관련 부수적 서비스
제 9 조 (정보의 제공 및 광고의 게재)
회사는 회원에게 서비스 이용에 필요하다고 인정되는 각종 정보에 대해서 사이트 및 이메일, SMS, DM 발송 등 각종 매체에 게재하는 방법 등으로 회원에게 제공할 수 있습니다.
회사는 서비스 개선 및 소개 등을 목적으로 회원의 동의 하에 추가적인 개인정보를 요청할 수 있습니다.
회사는 서비스의 운용과 관련하여 사이트, 이메일, SMS, DM 등에 광고 등을 게재할 수 있습니다.
제 10 조 (서비스 제공의 제한 및 중단)
회사는 정기점검, 보수, 교체 등 회사가 필요한 경우 및 부득이한 사유로 인하여 서비스 이용에 지장이 있는 경우에는 서비스의 이용의 전부 또는 일부를 제한하거나 일시 중단할 수 있습니다.
전시, 사변, 천재지변 또는 이에 준하는 국가 비상사태가 발생하거나 발생할 우려가 있는 경우와 정전, 서비스 이용 폭주 등으로 정상적인 서비스가 불가능한 경우 등 기타 불가항력적인 사유가 있는 경우에는 서비스 이용의 전부 또는 일부를 제한하거나 중지할 수 있습니다.
제1항에 의한 서비스 중단의 경우에는 사이트는 회원에게 제11조의 방법으로 통지를 합니다. 단, 사이트가 통제할 수 없는 사유로 인한 서비스 중단으로 사전 통지가 불가능한 경우에는 그러하지 아니합니다.
회사는 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, 회사의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.
제 11 조 (회원에 대한 통지)
회사가 회원에 대한 통지를 하는 경우에는 회원이 서비스 이용 신청 시 사이트 화면 또는 회원가입 시 제출한 이메일 주소로 할 수 있습니다.
회사는 불특정 다수 회원에 대한 통지의 경우 7일 이상 사이트 상에 게시함으로써 개별 통지에 갈음할 수 있습니다.
제 12 조 (회원탈퇴 및 자격상실)
회원이 이용계약을 해지하고자 하는 때에는 회원 본인이 숨고 내의 메뉴 또는 전화 등의 방법을 이용하여 가입해지를 신청할 수 있으며, 회사는 즉시 회원 탈퇴 처리를 합니다.
회원 탈퇴가 이루어짐과 동시에 탈퇴 회원이 남긴 리뷰는 비회원 리뷰로 전환되며, 리뷰 외에 서비스 이용과 관련된 모든 정보는 삭제됩니다. 이로 인해 발생하는 불이익에 대한 책임은 회원 본인에게 있습니다.
회원이 다음 각 호의 사유에 해당하는 경우, 회사는 회원의 회원자격을 적절한 방법으로 제한 및 정지, 상실 시킬 수 있습니다.
가입 신청 시에 허위 내용을 등록한 경우
다른 사람의 ‘서비스’이용을 방해하거나 그 정보를 도용하는 등 전자거래질서를 위협하는 경우
서비스를 이용하여 법령과 본 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우
회사가 회원 자격을 제한ㆍ정지 시킨 후, 동일한 행위가 2회 이상 반복되거나 10일 이내에 그 사유가 시정되지 아니하는 경우
회사가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 소명할 기회를 부여합니다.
제 4 장 멤버십 서비스
제 13 조 (멤버십 서비스 계약의 체결)
고수회원이 회사가 운영하는 숨고를 광고매체로 하여 일정기간 동안 광고하거나 요청자에게 견적을 발송하기 위해서는 멤버십 서비스 계약을 체결하여야 합니다.
고수회원은 회사가 별도로 공지한 멤버십 계약에 대한 자세한 사항에 대해 확인을 완료하고 멤버십 서비스 계약을 체결하여야 합니다. 이를 확인하고 계약을 체결함으로써 고수회원에게 발생한 손해에 대하여는 회사가 책임을 지지 아니합니다.
고수회원이 멤버십 계약에 관한 사항을 확인하고 회사에 멤버십서비스에 대한 대가를 지불한 때 멤버십 서비스 계약이 체결된 것으로 봅니다. 이로부터 고수 회원은 멤버십 회원으로서의 지위를 가집니다.
멤버십 회원은 회사가 미리 공지한 기간동안 광고서비스를 이용할 수 있으며, 발급받은 크레딧으로 견적서를 요청자에게 발송할 수 있습니다.
제 14 조 (멤버십 서비스 계약의 갱신)
회사는 멤버십 서비스 계약기간이 끝나기 1주일 전에 회원에게 이용계약의 갱신 사실을 회원의 이메일 또는 SNS, 기타 전자서면 등으로 통지합니다. 다만, 이용계약기간의 단위가 1년 이상인 경우 통지기간은 계약기간이 끝나기 30일 전까지로 합니다.
회원이 제1항 본문의 경우 통지를 받은 날로부터 1주일 이내에, 단서의 경우에는 통지를 받은 날로부터 30일 이내에 별도의 의사표시를 하지 않으면 본 멤버십 계약은 동일 계약기간 동안 연장됩니다.
회원이 다음 멤버십 기간이 시작되기 전에 갱신 거절의 의사를 표시한 경우 멤버십 서비스 이용계약은 해당 멤버십 서비스 계약 기간 만료로 종료합니다.
멤버십 서비스 계약 갱신에 따른 지불 방법은 정기 자동결제 방식에 따르는 것을 원칙으로 합니다.
제 15 조 (광고 서비스의 구성)
회사는 광고의 종류 및 세부 유형, 광고매체의 노출영역 및 UI(User Interface), 노출비율 및 노출순서 등(이하 “광고 구성”이라 합니다)을 사이트를 통해 멤버십 회원에게 공지하며 멤버십 회원은 광고게시 신청 전에 이를 신중히 확인하여야 합니다.
광고 계약 후 광고 구성에 변경이 있는 경우 회사는 그 변경 전에 사이트를 통해 공지하며, 광고주는 변경 내용에 동의 하지 않을 경우 광고 신청을 취소하거나 집행 중인 광고의 중단을 요청할 수 있습니다. 단, 부득이한 사유가 있는 경우 회사는 사후에 통지할 수 있습니다.
제 16 조 (광고 게시 신청 및 검수)
멤버십 회원은 멤버십서비스 내 광고서비스를 이용하기 위하여 사이트에 접속하여 회사에 광고게시를 신청하여야 합니다. 이때 멤버십 회원은 회사가 게시하여 놓은 양식에 맞추어 광고에 대한 정보를 입력하고 사이트 내 신청 메뉴를 통하여 광고게시를 신청합니다.
멤버십 회원은 제1항의 절차에 따라 입력한 광고게시 신청 내용에 대하여 회사의 검수를 받아야 광고를 집행할 수 있습니다.
광고 검수기준은 회사가 사이트 또는 별도로 고지하는 운영정책 및 기타 가이드에 따르는 것을 원칙으로 합니다.
회사는 광고주가 신청한 광고의 내용이 관련 법령 및 회사의 검수 기준에 위반하거나 위반될 가능성이 있는 경우, 해당 광고의 집행을 중단하거나 광고 내용을 변경할 수 있습니다.
전 항에 따른 광고 집행 중단이나 내용 변경 시, 회사는 이를 즉시 광고주에게 통지하며, 광고주는 회사의 조치가 부당하다고 판단되면 그 이유를 명시하여 이의를 제기할 수 있습니다.
전 항에 따라 발생되는 광고 집행의 중단이나 집행 지연 시 회사는 광고주에 대해 책임을 부담하지 않습니다.
제 17 조 (광고 서비스 품질 관리)
회사는 광고의 품질 향상 및 효과 증대 등을 위해 일부 트래픽을 대상으로 하는 테스트를 광고주에 대한 별도의 공지 없이 진행할 수 있습니다.
광고는 종류 및 세부 유형에 따라 회사가 정한 로직에 따라 노출되어 광고의 노출 등이 보장되지 않을 수 있습니다. 회사는 관련 내용을 사이트를 통해 공지합니다.
제 18 조 (견적서 발송)
회사는 요청자가 작성한 요청서를 멤버십 회원이 열람할 수 있도록 서비스하며 멤버십 회원은 견적서를 발송할 수 있는 크레딧을 지급받습니다.
멤버십 회원이 요청자에게 자신이 제공할 수 있는 용역에 대한 상세한 내용을 적어 견적서를 발송할 때마다 회사가 미리 공지한 개수의 크레딧이 차감되며 이미 발송된 견적서는 취소할 수 없습니다.
멤버십 회원에게 지급된 크레딧은 유효기간이 지나면 사용할 수 없으며 회사는 이에 대하여 환불하지 않습니다.
제 19 조 (회원의 청약철회와 계약해제·해지)
회원은 회사와 멤버십 서비스 이용계약을 체결하여 수신확인의 통지를 받은 날로부터 7일 이내에는 청약의 철회를 할 수 있습니다.
제1항의 청약철회권은 다음 각 호의 어느 하나에 해당할 경우 행사할 수 없습니다.
회원의 책임 있는 사유로 서비스가 멸실 또는 훼손된 경우
회원이 요청서 발송 등 멤버십 서비스의 사용 또는 일부 소비에 의하여 서비스의 가치가 현저히 감소한 경우
시간의 경과에 의하여 재판매가 곤란할 정도로 서비스의 가치가 현저히 감소한 경우
회원의 신청에 따른 광고 서비스 및 요청서 서비스의 제공이 이미 개시된 경우
회원의 주문에 의하여 서비스가 개별적으로 생산되는 경우 등 청약철회를 인정하면 회사에 회복할 수 없는 중대한 피해가 예상되는 경우로서 사전에 당해 거래에 대하여 별도로 그 사실을 고지하고 회원의 서면(전자문서를 포함한다)에 의한 동의를 얻은 경우
회사가 시험 사용을 제공하고 청약철회를 할 수 없음을 명확하게 고지하고 있는 멤버십 서비스의 제공이 이미 게시된 경우
제1항 및 제2항에도 불구하고 회원은 다음 각 호의 어느 하나에 해당하는 사유가 있을 때에는 당해 서비스를 이용할 수 있는 날로부터 3월 이내 또는 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 멤버십 서비스 이용계약을 해제 또는 해지할 수 있습니다.
이용계약에서 약정한 서비스가 제공되지 않는 경우
제공되는 서비스가 표시·광고 등과 상이하거나 현저한 차이가 있는 경우
기타 결함으로 정상적인 이용이 현저히 불가능한 경우
제1항의 청약철회와 제3항의 계약해제·해지는 전화, 전자우편 등으로 행사할 수 있으며 이 경우 그 의사표시가 기재된 서면을 발송한 날에 그 효력이 발생합니다.
제 20 조 (회원의 청약철회와 계약해제·해지의 효과)
멤버십 서비스 계약이 청약철회 되거나 해지 또는 해제된 경우 회원은 반환이 가능한 서비스를 반환하며, 회사는 회원에게 대금을 환급합니다. 다만, 회원의 귀책사유에 의하여 해지된 경우 회원이 서비스를 사용함에 따라 얻은 이익을 반환하여야 합니다.
회사는 서비스를 반환 받은 날로부터 3영업일 이내에 대금의 결제와 동일한 방법으로 대금을 환급합니다.
회사가 제2항에 따라 환급할 경우에 회원이 서비스의 이용으로부터 얻은 이익에 해당하는 금액을 공제하고 환급할 수 있습니다.
회사는 제2항 또는 제3항에 따라 대금을 환급함에 있어서 회원이 신용카드 등의 결제수단으로 대금을 지급한 때에는 당해 결제수단을 제공한 신용카드사 등으로 하여금 그 대금의 청구를 정지 또는 취소하도록 요청합니다.
개별 서비스의 성격에 따라 회사는 별도 계약 및 이용조건에 따른 취소 및 환불 관련 규정을 정할 수 있으며, 이 경우 별도 계약 및 이용조건상의 취소 및 환불규정이 우선 적용됩니다.
제 21 조 (회사의 계약해제․해지 및 이용제한)
회사는 회원이 제12조 제2항 각호에서 정한 행위를 하였을 경우 사전통지 후 기간을 정하여 서비스의 이용을 제한할 수 있습니다.
회사는 다음 각 호의 어느 하나에 해당하는 경우 서비스 이용계약을 해제 또는 해지할 수 있습니다.
제1항에 따라 서비스의 이용이 제한되었던 회원이 제12조 제2항 각호에서 정한 행위를 한 경우. 다만, 이용제한이 된 시점이 6월을 경과한 경우에는 그러하지 않습니다.
회사가 제12조 제2항 각호에서 정한 행위를 한 회원에게 시정을 요구하였음에도 불구하고, 30일 이내에 그 사유가 시정되지 않은 경우
제2항의 해제․해지는 회원에게 그 의사표시가 도달한 때에 효력이 발생합니다.
회원은 회사의 해제․해지 및 이용제한에 대하여 이의신청을 할 수 있습니다. 회원의 이의신청이 정당한 경우 회사는 즉시 회원이 서비스를 이용할 수 있도록 필요한 조치를 취합니다.
제 22 조 (회사의 계약해제․해지의 효과)
회원의 귀책사유에 따른 이용계약의 해제·해지의 효과는 제20조를 준용합니다. 다만, "회사"는 "이용자"에 대하여 계약해제·해지의 의사표시를 한 날로부터 7영업일 이내에 대금의 결제와 동일한 방법으로 이를 환급합니다.
회사가 제21조 제2항에 따라 서비스 이용계약을 해제 또는 해지한 경우 회사는 회원에게 손해배상을 청구할 수 있습니다. 다만, 회원이 고의 또는 과실 없음을 증명한 경우에는 그러하지 않습니다.
제 23 조 (대금지급방법)
회원은 서비스의 이용에 대한 대금을 다음 각 호의 방법 중 회사가 정하는 방법으로 지급합니다.
신용카드 (간편)결제
휴대전화 (간편)결제
회사가 발행 또는 인정한 포인트에 의한 결제
선불카드
실시간 계좌이체
기타 전자적 지급방법에 의한 대금지급 등 회사가 추가 지정한 결제수단 (예: 문화상품권, 쿠폰, 기타 제휴포인트 등)
멤버십 서비스에 대한 결제는 자동결제 방식이 원칙이며 회사는 최초결제 시 회원으로부터 이에 대해 사전동의를 받습니다.
1개월 정기 결제 멤버십 계약을 체결한 멤버십 회원의 경우 월정액 정기 자동결제 방식으로 회사에 멤버십 서비스 이용금액을 지급하며, 회원이 가입한 멤버십의 유형에 따라 정기 결제 기간 및 결제 일시는 달라질 수 있습니다. 예를 들어 1개월 정기결제의 경우에는 최초 결제일 이후 매월 동일 일 하루 전에 자동으로 결제가 이루어지며, 1년 정기결제의 경우에는 최초 결제월∙일 이후 매년 동일 결제월∙일 하루 전에 결제가 자동으로 진행됩니다.
회원은 회사에서 제공하는 서비스 중 일부에 대한 대금을 제1항에서 정한 방법 중 포인트로만 지급하게 할 수 있습니다. 이 경우 회사는 이에 관한 내용을 해당 서비스의 이용신청화면에서 표시합니다.
회사는 대금의 결제를 직접 처리하지 않으므로 회원이 대금의 결제와 관련하여 입력한 정보 및 그 정보와 관련하여 발생한 불이익에 대하여 회사는 고의 및 중대한 과실이 없는 한 책임지지 않습니다.
제 24 조 (과오금)
회사는 과오금이 발생한 경우 이용대금의 결제와 동일한 방법으로 과오금 전액을 환불합니다. 다만, 동일한 방법으로 환불이 불가능할 때는 이를 사전에 고지합니다.
회원의 책임 있는 사유로 과오금이 발생한 경우, 회사가 과오금을 환불하는 데 소요되는 비용은 합리적인 범위 내에서 회원이 부담하여야 합니다.
회사는 과오금의 환불절차를 디지털콘텐츠이용자보호지침에 따라 처리합니다.
제 5 장 안전거래서비스
제 25 조 (안전거래서비스)
회사는 고수와 요청자가 서비스를 이용함에 있어 안전하고 편리한 금전 거래를 위하여 대금의 수령, 보관 및 송금업무로 이루어지는 에스크로 방식의 안전거래서비스를 제공합니다.
안전거래 진행 여부에 대한 동의를 하고, 안전거래를 위한 계좌를 등록한 고수에 한하여 안전거래 서비스를 이용할 수 있습니다.
각 거래에 대한 안전거래서비스는 고수 또는 요청자의 요구에 따라 개시됩니다. 고수는 거래금액과 예상 서비스이행완료일을 포함한 최종 안전거래 내용을 발송하며, 요청자는 서비스에 대한 수수료 안내를 받은 뒤 수수료와 거래금액을 합한 대금을 안전거래서비스에 입금합니다.
회사는 안전거래서비스를 통해 요청자가 입금한 대금을 보관합니다. 고수가 서비스를 이행한 이후 요청자가 서비스 상 거래 확정 버튼을 클릭하는 방식으로 거래 확정을 하면 회사는 보관하는 대금 중 수수료를 제외한 거래금액을 고수에게 지급합니다.
제 26 조 안전거래서비스 계좌 등록
고수는 안전거래서비스를 위하여 자신이 용역 대금을 수령할 계좌를 지정하여 올바른 정보를 입력하여야 합니다.
고수가 입력한 계좌의 예금주는 고수가 실명확인을 하여 가입할 때 입력한 명의와 동일인임을 원칙으로 합니다.
제 27 조 안전거래서비스 이용료 등
고안전거래서비스를 이용하기 위한 이용료는 유료가 원칙이며 회사는 안전거래서비스 이용료를 안전거래서비스 안내페이지에 안내합니다. 안전거래서비스에 대한 이용료는 요청자가 부담합니다.
대금 송금 또는 결제로 인하여 별도의 수수료가 발생할 경우 해당 수수료는 대금을 송금하는 회원(요청자)이 부담하여야 합니다.
안전거래서비스에 이미 요청자가 이용료를 포함한 대금을 지급하였으나 계약이 파기된 경우 회사는 요청자에게 이용료를 제한 거래금액만을 반환합니다. 자세한 반환에 대한 규정은 회사의 별도 규정에 따릅니다.
제 28 조 예치금의 지급
회사는 요청자가 거래 확정을 하면 바로 대금을 고수에게 지급하는 것을 원칙으로 합니다. 다만 금융기관 또는 전기통신사업자의 귀책 등 회사의 귀책사유가 없는 사유로 지급이 늦어질 수 있습니다.
요청자가 고수가 용역 이행을 완료하였을 때 지체 없이 거래 확정을 하여 고수에게 대금이 원활히 지급될 수 있도록 하여야 합니다.
요청자가 다음과 같이 정당한 사유 없이 거래 확정 의무를 다하지 않는 경우 회사는 요청자가 거래 확정하였다고 간주하고 대금을 지급하고 관련 절차를 진행할 수 있습니다.
고수가 용역 이행을 완료하였음을 고지하였음에도 요청자가 10일 이상 고수나 회사의 연락에 응하지 아니하는 경우
고수가 용역 이행을 완료하여 이를 고지하였고 요청자가 이를 확인하였음에도 요청자가 해당 확인 일자로부터 10일 이상 거래 확정을 하지 아니하는 경우
기타 요청자가 정당한 사유없이 거래확정을 아니하여 회사가 거래 확정처리를 하는 경우
제 29 조 안전거래서비스에 대한 회사의 면책
안전거래서비스는 고수와 요청자 간의 거래의 안전과 신뢰성 향상을 위한 목적에서 회사가 제공하는 서비스의 일환이므로 회사는 안전거래서비스를 이용하는 양 당사자 간의 거래에 어떠한 책임도 지지 않습니다.
회사는 안전거래서비스를 이용하는 고수와 요청자 중 어느 일방을 대리, 대행하거나 그 이행을 보조하는 위치에 있지 아니합니다.
안전거래를 위하여 잘못된 정보를 입력하여 잘못된 대금지급이 이루어졌을 경우 회사는 이에 대하여 책임지지 않습니다.
회사는 양 당사자간의 거래에 대하여 책임을 부담하지 아니하며 특히 요청자의 거래 확정으로 거래가 승인된 이후 발생한 분쟁에 대하여 책임지지 않습니다. 거래 확정 후 대금의 지급이 완료된 이후 발생한 분쟁 또는 불만 사항은 양 당사자가 협의를 통해 해결해야 합니다.
제 6 장 개인 정보 취급 방침
제 30 조 (회원의 개인정보 보호)
회사는 회원의 개인정보를 보호하기 위하여 정보통신망법 및 개인정보 보호법 등 관계 법령에서 정하는 바를 준수하며 이용자의 개인 식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.
회사의 개인정보 보호는 숨고 개인정보처리방침에 따릅니다.
제 7 장 당사자의 의무
제 31 조 (회사의 의무)
회사는 회원이 희망한 서비스 제공 개시 일에 특별한 사정이 없는 한 서비스를 이용할 수 있도록 하여야 합니다.
회사는 계속적이고 안정적인 서비스의 제공을 위하여 설비에 장애가 생기거나 기계의 결함이 있는 때에는 부득이한 사유가 없는 한 지체 없이 이를 수리 또는 복구합니다.
회사는 개인정보 보호를 위해 보안시스템을 구축하며 개인정보 보호정책을 공시하고 준수합니다.
회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우는 이용자에게 그 사유와 처리일정을 통보하여야 합니다.
제 32 조 (회원의 의무)
회원은 다음 각 호의 행위를 하여서는 안 됩니다.
회원가입신청 또는 변경 시 허위내용을 등록하는 행위
숨고에 게시된 정보를 허위로 변경하는 행위
회사 기타 제3자의 인격권 또는 지적재산권을 침해하거나 업무를 방해하는 행위
다른 회원의 ID를 도용하는 행위
관련 법령에 의하여 그 전송 또는 게시가 금지되는 정보(컴퓨터 프로그램 등)의 전송 또는 게시하는 행위
회사의 직원이나 관리자를 가장하거나 사칭하여 또는 타인의 명의를 오용하여 글을 게시하거나 메일을 발송하는 행위
컴퓨터 소프트웨어, 하드웨어, 전기통신 장비의 정상적인 가동을 방해, 파괴할 목적으로 고안된 소프트웨어 바이러스, 기타의 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시하거나 전자우편으로 발송하는 행위
스토킹(stalking) 등 다른 회원을 괴롭히는 행위
다른 회원에 대한 개인정보를 그 동의 없이 수집, 저장, 공개하는 행위
회사가 제공하는 서비스에 정한 약관 기타 서비스 이용에 관한 규정을 위반하는 행위
외설 또는 폭력적인 메시지ㆍ화상ㆍ음성 기타 공서양속에 반하는 정보를 공개 또는 게시하는 행위
사실관계를 왜곡하는 정보제공 등 기타 회사가 부적절하다고 판단하는 행위
기타 관계 법령이나 회사에서 정한 규정에 위배되는 행위
회원이 개인의 정보를 허위 또는 잘못 기재하여 생기는 불이익에 대한 책임은 회원 본인에게 있으며, 이에 대해 회사는 아무런 책임이 없습니다.
회사가 사이트 운영상 부적절하다고 판단한 정보가 게시된 경우, 회사는 게시를 행한 자의 승낙 없이 게재된 당해 정보를 삭제할 수 있습니다. 단, 회사는 이러한 정보의 삭제 등을 할 의무를 지지 않습니다.
회사는 회원이 본 약관 또는 당사 정책에 위반되는 내용의 메시지를 프로필 영역에 작성하거나 타 회원에게 해당 메시지 내용을 발송하는 경우 별도의 통지 없이 작성 또는 발송된 내용을 임의로 수정 또는 삭제할 수 있습니다.
제1항에 해당하는 행위를 한 회원이 있을 경우 회사는 본 약관 제12조, 제21조에서 정한 바에 따라 회원의 회원자격을 적절한 방법으로 제한 및 정지, 상실시킬 수 있으며, 특히 아래 각 호에 해당하는 행위를 할 경우에는 각각에 대응되는 조치를 취할 수 있습니다. 다만, 회사가 취할 수 있는 조치는 아래 각 호에 한정되지 아니하며, 회사가 조치를 취할 수 있는 회원의 불법적인 행위 역시 아래 각 호의 경우에 한정되지 아니합니다.
타 회원들에 대한 무단 마케팅(요청서 및 견적서에 제공 용역에 대한 내용 외 본인의 영리적 목적을 위한 내용을 무단으로 작성하는 것을 의미하며 광고 등을 포함): 1년간 모든 기능 사용 정지 등
타 회원들에 대한 부적절한 대화 시도 및 메시지 발송 등(욕설, 성희롱, 기타 부적절한 표현을 포함함): 1년간 모든 기능 사용 정지 등
타 회원들에게 허위사실을 유포하거나 표시광고를 위반하는 경우(견적서에 회사에 상당한 수수료를 지불하고 있어, 절대 채팅으로 답변하지 말라는 내용을 기재하거나, 명함에 숨고 로고를 무단으로 표시하고 자신을 숨고협력사로 소개하는 등을 포함함): 1회 경고 후 재 적발시 영구 기간 동안 모든 기능 사용 정지(영구 제재) 등
고수 회원의 의무 및 서비스 정책 위반(프로필에 계속하여 휴대폰 번호 등 개인정보를 노출, 요청서 또는 견적서에 본인 연락처를 작성하여 직접 연락을 유도하는 등의 경우를 포함함): 1년간 모든 기능 사용 정지 등
회원은 그 귀책사유로 인하여 회사나 다른 회원이 입은 손해를 배상할 책임이 있습니다.
회원은 서비스의 이용과 관련하여 관계법령, 약관, 세부이용지침, 서비스 이용안내 및 회사가 통지한 공지사항 등을 준수하여야 하며, 이를 수시로 확인하여야 합니다.
제 33 조 (요청자의 의무)
요청자는 제공받기 원하는 용역에 대한 내용으로 요청서를 작성하여 회사에 제공하고 회사가 이를 다수의 고수 회원에게 전달하는 것에 대하여 동의합니다.
요청자는 허위나 과장된 내용으로 요청서를 작성하거나 또는 용역을 제공받고자 하는 의사가 없음에도 요청서를 작성할 수 없으며 허위 및 과장된 내용으로 요청서를 작성함에 따라 용역을 제공받지 못하거나 법적인 문제가 발생할 경우 이에 대한 책임은 요청자에게 있습니다.
요청자는 용역을 구매하기 전에 반드시 고수 회원이 견적서에 작성한 용역의 상세 내용과 거래의 조건을 정확하게 확인해야 합니다. 구매하려는 용역의 내용과 거래의 조건을 확인하지 않고 구매하여 발생한 모든 손실과 손해는 요청자 본인이 부담합니다.
제 34 조 (고수 회원의 견적서 발송 서비스 관련 의무)
고수 회원은 용역의 제공, 계약내용의 변경, 용역 대금 결제 및 환불 등 용역 제공과 관련한 일체의 업무를 처리하며, 이를 신의성실 하게 이행하여야 할 의무가 있습니다. 또한 용역 제공과 관련하여 발생하는 모든 책임과 의무를 부담합니다.
고수 회원이 작성한 견적서에 허위 또는 과장, 기재누락, 오기가 있어서는 아니되며 이를 준수하지 아니하여 발생하는 모든 법적문제에 대하여는 고수 외원이 모든 책임을 부담합니다. 고수 회원은 해당 견적서에 대한 진실성과 적법성에 대해 보증합니다.
고수 회원은 견적서에 작성된 가격, 용역의 내용, 용역 제공 시기 등 내용의 변경 사항이 있을 경우 이를 바로 갱신하여야 할 의무를 집니다.
고수 회원은 관련법령 등을 위반하는 불법적인 용역을 제공하지 않는 다른 점에 대해 보증하며 불법적이거나 본 이용약관을 위반하는 내용으로 견적서를 작성하여 요청자에게 송부할 수 없습니다.
고수 회원은 견적서를 수령한 요청자의 선택을 받아 숨고 서비스상 메시지 기능이나 전화 등 별도의 연결수단을 통하여 세부사항을 조정할 수 있습니다. 회사는 견적서 발송 서비스만을 제공하므로 견적서 발송 이후 고수 회원과 요청자 간에 발생한 일체의 문제에 대하여 어떠한 책임도 지지 않습니다.
제 35 조 (고수 회원의 광고서비스 관련 의무)
고수 회원은 광고의 집행과 관련하여 이를 신의에 따라 성실하게 관리해야 할 의무가 있으며, 멤버십 회원의 영업 활동이 관련 법령 및 본 약관 또는 별도로 고지하는 운영정책 기타 회사가 정하고 있는 기준에 위반되지 않도록 관리하여야 하며, 회사의 업무에 방해되는 행위를 하여서는 안됩니다.
고수 회원은 광고 및 이에 연결되는 고수 회원 및 용역 관련 정보에 대하여 회사의 사전 검수를 반드시 받아야 하며, 검수가 완료되지 아니한 내용으로 광고를 연결할 수 없습니다.
고수 회원은 광고 및 이에 연결되는 견적서 등에서 허위 또는 과장광고를 해서는 안 되며 정확한 용역 정보를 제공해야 합니다.
고수 회원은 회사가 허용하는 범위를 넘어 서비스를 이용할 수 없으며, 회사로부터 제공 받은 서비스의 내용 및 광고 집행 관련 내용을 제3자에게 유출할 수 없습니다.
고수 회원은 광고에 대한 정보를 게재하지 않거나 광고 및 멤버십 회원에 대하여 허위의 내용을 기재하여 광고집행이 이루어지지 않은 경우 회사는 책임을 부담하지 않습니다.
회사는 서비스 제공 또는 본 조 위반여부를 확인하기 위해 회사가 자료 또는 접근권한의 제공 및 관련사실에 대한 소명을 요청하는 경우에는 이에 성실히 임하여야 합니다.
제 36 조 (회원의 ID 및 비밀번호에 대한 의무)
원칙적으로 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.
회원은 자신의 ID 및 비밀번호를 제 3자에게 이용하게 해서는 안 되며, 그로 인한 모든 책임은 회원에게 있습니다.
회원이 자신의 ID 및 비밀번호를 도난당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 회사에 통보하고 회사의 안내가 있는 경우 그에 따라야 합니다. 만약 회원이 위 사실을 인지하고도 회사에 대한 통보를 지체함으로써 발생한 손해에 대해서 회사는 배상할 의무가 없습니다.
제 37 조 (게시물 또는 내용물의 삭제)
회원이 회사에 등록하는 게시물 및 타인 게시물의 활용 등으로 인하여 본인 또는 타인에게 손해나 기타 문제가 발생하는 경우 회원은 이에 대한 책임을 지게 되며, 회사는 이에 대하여 책임을 지지 않습니다.
회사는 회원이 게시하거나 등록한 내용이 제27조 제 1항의 규정에 위반되거나 회사 소정의 게시기간을 초과하는 경우 사전 통지나 동의 없이 이를 삭제할 수 있습니다. 그러나 회사가 이러한 정보의 삭제 등을 할 의무를 지는 것은 아닙니다.
제 38 조 (저작권의 귀속 및 권리, 의무)
회사가 작성한 저작물에 대한 저작권 기타 지식재산권은 회사에 귀속합니다.
회원은 회사의 서비스를 이용함으로써 얻은 정보를 회사의 사전승낙 없이 복제, 전송, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안 됩니다.
회원이 작성한 게시물에 대한 모든 권리 및 책임은 이를 게시한 회원에게 있습니다.
회사는 회원이 사이트에 게시한 게시물을 사용ㆍ복제ㆍ수정ㆍ출판ㆍ배포 할 수 있습니다.
제 39 조 (광고주 및 연결 사이트와의 관계)
회사의 공식 사이트 이외의 웹사이트 및 이메일에서 링크된 사이트에서는 회사의 개인정보 보호정책 및 본 약관이 적용되지 않습니다.
회사는 숨고 사이트 또는 e-mail 상에 게재되어 있거나 본 서비스를 통한 광고주의 판촉활동에 회원이 참여하거나 교신 또는 거래를 함으로써 발생하는 손실과 손해에 대해 책임을 지지 않습니다.
제 8 장 기타
제 40 조 (양도의 금지)
회원은 서비스 이용 권리를 타인에게 대여, 양도 또는 증여 등을 할 수 없으며, 또한 질권의 목적으로도 사용할 수 없습니다.

제 41 조 (면책)
회사는 천재지변 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 고의 또는 과실이 없는 한 구매자에게 발생한 손해에 대하여 서비스 제공에 관한 책임이 면제됩니다.
회사는 회원의 귀책사유로 인한 서비스 이용의 장애에 대하여 책임을 지지 않습니다.
회사는 회원이 서비스의 이용을 통해 예상했던 금전적인 수익을 얻지 못하게 되거나, 서비스를 통하여 얻은 자료로 인해 손해를 보게 되더라도 이에 관하여 책임을 지지 않습니다.
회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는, 회사가 해당 정보의 허위성을 명백히 인지하였다는 특별한 사정이 없는 한, 책임을 지지 않습니다. 회사가 본 약관과 관련 법령에 따른 조치를 취한 경우에도 같습니다.
회사는 서비스 이용과 관련하여 회사의 고의, 과실에 의하지 아니한 손해에 대하여 책임을 지지 않습니다.
회사는 기간통신 사업자가 전기통신 서비스를 중지하거나 정상적으로 제공하지 아니하여 손해가 발생한 경우 책임이 면제됩니다.
회사는 회원들에게 요청서와 견적서를 전달하거나 광고플랫폼 또는 안전거래서비스를 제공하고 이에 대한 부수적인 서비스를 제공할 뿐이므로 회원 상호 간 서비스를 매개로 하여 거래를 한 경우 이용자 각자의 의무이행에 대한 책임은 각 이용자에게 있으며 회사는 이에 대한 책임이 없습니다.
회사는 회원들에게 요청서와 견적서를 전달하거나 광고플랫폼 또는 안전거래서비스를 제공하고 이에 대한 부수적인 서비스를 제공할 뿐이므로 고수와 요청자 간 거래와 관련하여 발생한 의무의 불완전 이행, 이행 지체 등 용역 이행 미비, 사후처리, 대금 정산, 완성품의 하자, 청약철회, 물품의 반품 등 어떠한 법적 분쟁 및 사후처리에 대해서도 개입하거나 책임지지 않습니다.
회사는 무료로 제공되는 서비스 이용과 관련하여 관련법에 특별한 규정이 없는 한 책임을 지지 않습니다.
회사는 회원 간에 분쟁이 발생하였을 경우 고의 또는 중과실이 없는 한 회원 간 법적 문제에 대하여 책임을 지지 않습니다.
제 42 조 (손해배상)
당사자 일방이 본 계약상 의무를 위반함으로 인하여 상대방에게 손해가 발생한 경우, 귀책사유 있는 당사자는 상대방이 입은 손해를 배상합니다.

제 43 조 (비밀유지)
당사자는 서비스를 이용하는 과정에서 알게 된 상대방의 정보 또는 이용자의 정보를 제3자에게 누설, 공개하지 아니합니다.
본 조는 이용계약이 해지되거나 서비스 제공이 중단된 이후에도 유효합니다.
제 44 조 (고객센터)
회사는 이용자에게 생긴 문제를 해결하기 위해 최선을 다하며 이를 위하여 이용자로부터 고객센터에 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리일정을 즉시 통보합니다.
회사와 이용자 간 분쟁이 발생할 경우 양자 간 합의에 의하여 처리하는 것을 원칙으로 하며 회사는 이용자 간 발생한 법적 문제에 대하여 고의 또는 중과실이 없는 한 책임이 없습니다. 그러나 회사는 고객센터를 통하여 피해 사항을 적극적으로 청취하여 이용자들 간 발생한 문제가 해결하는 데에 도움이 될 수 있도록 최선을 다합니다.
제 45 조 (재판권 및 준거법)
회사와 이용자간 발생한 분쟁에 관한 소송의 관할은 민사소송법에 따라 정합니다.
회사와 이용자 간에 제기된 소송에는 대한민국법을 적용합니다.
부칙

제1조 (시행일) 이 약관은 2015년 8월 1일부터 시행합니다.
부칙

제1조 (시행일) 이 약관은 2017년 5월 10일부터 시행합니다.
부칙

제1조 (시행일) 이 약관은 2018년 5월 17일부터 시행합니다.
부칙

제1조 (시행일) 이 약관은 2018년 11월 13일부터 시행합니다.
   
(주)브레이브모바일(대표이사: 김로빈)

사업자등록번호: 120-88-22325 개인정보책임관리자: 김태우

서울시 강남구 논현로 75길 10, 영창빌딩 3층

통신판매업신고증: 제 2015-서울강남-00567 호

개인정보 처리방침 · 이용약관 · 멤버십 약관 · 고객센터: 1599-5319

    			</textarea>
    		</td>
    	</tr>
    	<tr>
    		<td colspan="3"><input type="checkbox" class="checkbox" id="agree1"><p>동의함</p></td>
    	</tr>
    	<tr>
    		<td colspan="3" class="privateInfo">개인정보 처리 방침</td>
    	</tr>
    	<tr>
    		<td colspan="3">
    			<textarea class="form-control" cols="67" rows="5">
    				
아맞다 회원가입 개인정보 처리방침
주식회사 브레이브모바일 개인정보 처리방침
주식회사 브레이브모바일(이하 “회사”)은 이용자들의 개인정보보호를 매우 중요시하며, 이용자가 회사의 서비스 사이트(이하 “아맞다”)를 이용함과 동시에 온라인상에서 회사에 제공한 개인정보가 보호 받을 수 있도록 최선을 다하고 있으며, 『개인정보 보호법』,『정보통신망 이용촉진 및 정보보호 등에 관한 법률』등 개인정보와 관련된 법령 상의 개인정보보호 규정을 준수하고 있습니다.

회사는 아래와 같이 개인정보처리방침을 명시하여 이용자가 회사에 제공한 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치를 취하는지 알려드립니다. 회사의 개인정보처리방침은 법령 및 고시 등의 변경 또는 회사의 약관 및 내부 정책에 따라 변경될 수 있으며 이를 개정하는 경우 회사는 변경사항에 대하여 서비스 화면에 게시하거나 이용자에게 고지합니다.

이용자는 개인정보의 수집, 이용, 제공, 위탁 등과 관련한 아래 사항에 대하여 원하지 않는 경우 동의를 거부할 수 있습니다. 다만, 이용자가 동의를 거부하는 경우 서비스의 전부 또는 일부를 이용할 수 없음을 알려드립니다. 

이용자께서는 홈페이지 방문시 수시로 본 개인정보처리방침을 확인하시기 바랍니다.

제1조 개인정보의 수집목적 및 이용목적
회사는 이용자의 사전 동의 없이는 이용자의 개인 정보를 공개하지 않으며, 다음과 같은 목적을 위하여 개인정보를 수집하고 이용합니다.
서비스 제공
견적서·요청서 정보 제공 및 프로필 광고노출, 멤버십 등 기본적인 서비스 제공, 서비스 제공에 관한 계약 체결·유지·이행·관리·개선 및 서비스 제공에 따른 요금 정산 및 컨텐츠 서비스 이용, 구매 및 요금결제, 물품 배송 또는 청구지 등 발송, 이용자 레슨 정보 및 서비스 이용 정보 제공
회원관리
회원제 서비스에 따른 본인 확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 회원 가입∙유지∙탈퇴 의사 확인, 연령확인, 만 14세 미만 아동 개인정보수집 시 법정 대리인 동의 여부 확인, 법정 대리인 권리행사 시 본인 확인, 법령상 의무 이행, 법령 및 약관 위반 여부에 관한 조사, 고객 센터 운영 불만처리 등 민원 처리, 고지사항 전달 등
마케팅 및 광고에 활용
신규 서비스(제품) 개발 및 특화, 뉴스레터, 이벤트 등 광고성 정보 전달, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 마케팅 및 광고 등에 활용, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계
수집하는 개인정보 항목에 따른 이용 목적은 다음과 같습니다.
성명, 아이디, 비밀번호: 회원제 서비스 이용에 따른 본인 확인, 회원 가입·유지·탈퇴
이메일주소, 전화번호: 고지사항 전달, 불만처리 등을 위한 원활한 의사소통 경로의 확보, 새로운 서비스 및 신상품이나 이벤트 정보 등의 안내
신용카드정보(카드사 이름, 카드 번호 16자리, 카드 유효기간, 카드 명의자 생년월일): 서비스 및 부가 서비스 이용에 대한 요금 결제
고객센터 이용고객과의 통화 녹음: 숨고 내 고객센터 및 기본 서비스 개선
이메일, 전화번호 및 기타 선택 항목: 개인맞춤 서비스를 제공하기 위한 자료, 마케팅 활동
요청자와 고수 회원 간의 통화 녹음: 요청자와 고수 회원간 분쟁 발생 시, 문제 확인을 위함
제2조 수집하는 개인정보 항목
회사는 이용자들이 회원서비스를 이용하기 위해 회원으로 가입할 때 서비스 제공을 위하여 아래와 같은 개인정보를 필수적으로 수집하고 있습니다.
필수 항목: 
이용자의 성명, 아이디, 비밀번호, 이메일 주소, 휴대전화번호, 법정대리인정보(14세미만의 경우), 은행계좌정보, 서비스 이용기록, 접속 로그기록, 결제기록, 쿠키, IP Address, 불량 이용 기록, 고객센터 이용 시 고객센터 통화 내용
선택 항목: 
마케팅·이벤트 정보제공을 위하여 수집한 추가 개인정보
회사는 아맞다 내에서의 설문조사나 이벤트 행사 시 통계분석이나 경품제공 등을 위해 선별적으로 개인정보 입력을 요청할 수 있습니다. 회사가 발송하는 뉴스레터 내의 광고 메일 수신에 동의 하셔서, 메일 수신과 함께 이벤트, 경품 등의 혜택을 받는 광고 메일 수신자가 되는 경우에도 선별적으로 개인정보 입력을 요청 받을 수 있습니다.
회사는 이용자의 기본적 인권 침해의 우려가 있는 민감한 개인정보(인종 및 민족, 사상 및 신조, 출신지 및 본적지, 정치적 성향 및 범죄기록, 건강상태 및 성생활 등)는 수집하지 않으며 부득이하게 수집해야 할 경우 이용자들의 사전동의를 반드시 구할 것입니다.
회사는 어떤 경우에라도 입력하신 정보를 이용자들에게 사전에 밝힌 목적 이외에 다른 목적으로는 사용하지 않으며 외부로 유출하지 않습니다.
회사는 이용자 및 회원 간 거래에서 분쟁을 예방하기 위하여 이용자에게 실명인증을 요구할 수 있습니다.
제3조 개인정보 수집 방법
회사는 아맞다 회원가입, 회원정보수정, 서면양식, 전화 또는 팩스, 서비스 이용, 제휴사로부터의 제공, 이메일, 이벤트 참여, 고객센터, 게시판과 같은 방법을 통하여 개인정보를 수집합니다.
이용자는 회사가 마련한 개인정보 처리방침 또는 이용약관의 내용에 대해 동의 버튼을 클릭함으로써 개인정보 수집에 대하여 동의여부를 표시할 수 있으며, 동의 버튼을 클릭할 경우에는 개인정보 수집에 동의한 것으로 봅니다.
제4조 수집하는 개인정보의 보유 및 이용기간
법령에서 별도로 정하거나 귀하와 별도 합의하는 등의 특별한 사정이 없는 한 이용자가 숨고 회원으로서 회사에 제공하는 서비스를 이용하는 동안 또는 제1조에서 정한 목적을 달성할 때까지 회사는 이용자들의 개인정보를 계속적으로 보유하며 서비스 제공 등을 위해 이용합니다.
이용자의 개인정보는 다음과 같이 개인정보의 수집목적 또는 제공받은 목적이 달성되면 파기하는 것을 원칙으로 합니다. 다만, 회사는 서비스 혼선 방지, 수사기관에 대한 협조, 불량 회원의 부정한 이용의 재발 및 재가입을 방지하고 분쟁 해결을 위하여 이용계약 해지일로부터 6개월간 해당 회원의 이름, 아이디, 연락처, 부정이용 내역(서비스 이용기록, 접속로그, 쿠키, 접속IP정보)을 보관합니다.
상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.
표시. 광고에 관한 기록: 6월 (전자상거래등에서의 소비자보호에 관한 법률)
계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)
대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률)
소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률)
제5조 개인정보 제3자 제공
회사는 이용자들의 개인정보를 제1조에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다.
다만, 아래의 경우에는 예외로 합니다.
이용자들이 사전에 동의한 경우
서비스 제공에 따른 요금정산을 위하여 필요한 경우
법령에 특별한 규정이 있는 경우
통계작성, 학술연구나 시장조사를 위하여 특정개인을 식별할 수 없는 형태로 광고주, 협력업체나 연구단체 등에 제공하는 경우
제6조 개인정보의 위탁 처리
회사는 서비스 향상을 위해서 이용자의 개인정보를 서비스 제공을 위해서 반드시 필요한 업무 중 일부의 수행을 위하여 본 조 제2항과 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. 또한 공유하는 정보는 당해 목적을 달성하기 위하여 필요한 최소한의 정보에 국한됩니다.
수탁자 및 수탁업무 내용은 아래와 같습니다.
위탁 대상자 : [이니시스]
위탁업무 내용 : [결제, 구매안전서비스 제공 등]

위탁 대상자 : [KT 기업서비스본부/비즈메카사업팀]
위탁업무 내용 : [상담이력, 녹취파일]

위탁 대상자 : [다날]
위탁업무 내용 : [결제, 구매안전서비스 제공 등]

위탁 대상자 : [SK텔링크]
위탁업무 내용 : [안심번호 서비스, 요청자와 고수 회원 간 분쟁 확인을 위한 통화내용 녹취]
제7조 이용자의 권리
회사는 이용자의 권리를 다음과 같이 보호하고 있습니다.
언제든지 자신의 개인정보를 조회하고 수정할 수 있습니다.
언제든지 개인정보 제공에 관한 동의철회/회원가입해지를 요청할 수 있습니다.
이용자가 개인정보에 대한 열람·증명 또는 정정을 요청하는 경우 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다. 회사는 개인정보에 오류가 있거나 보존기간을 경과한 것이 판명되는 등 정정 또는 삭제할 필요가 있다고 인정되는 경우 지체 없이 그에 따른 조치를 취합니다.
회사는 만 14세 미만 아동 이용자의 법정대리인에 대하여 아래와 같은 권리를 보장합니다.
법정대리인은 만 14세 미만 아동의 개인정보 수집·이용 또는 제공에 대한 동의를 철회할 수 있으며, 해당 아동이 제공한 개인정보에 대한 열람 또는 오류의 정정을 요구할 수 있습니다(아동의 개인정보에 대한 열람, 정정·삭제, 개인정보처리정지요구권).
만 14세 미만 아동인 이용자의 법정대리인이 열람∙증명, 정정을 요구하는 경우 회사는 대리관계를 증명하는 증표를 요구하여 진정한 법정대리인인지 여부를 확인할 수 있습니다.
제8조 개인정보 파기절차 및 방법
이용자가 숨고 웹사이트를 통해 입력한 정보는 목적이 달성된 후 별도의 DB로 옮겨져(출력물의 경우 별도의 서류함) 내부 방침 및 기타 관계법령에 의한 정보보호 사유에 따라 (보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다.
회사는 제8조에서 설명한 절차와 방법에 따라 이용자 본인이 직접 정보 수정·삭제를 요청하거나 가입해지를 요청한 경우에도 본 조에서 정한 바와 같이 파기 처리합니다.
제2조에서와 같이 일시적인 목적 (설문조사, 이벤트, 본인확인 등)으로 입력 받은 개인정보는 그 목적이 달성된 이후에는 동일한 방법으로 파기 처리됩니다.
회사는 귀중한 이용자의 개인정보를 안전하게 처리하며, 유출의 방지를 위하여 다음과 같은 방법을 통하여 개인정보를 파기합니다.
종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통하여 파기합니다.
전자적 파일 형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.
제9조 비회원의 개인정보관리
회원 탈퇴를 거쳐 비회원이 된 회원이 남긴 리뷰는 특정 개인을 식별할 수 없게 개인정보를 제거한 상태로 남습니다.
리뷰는 서비스 운영과 관련한 용도 외에는 다른 어떠한 용도로도 사용되지 않습니다.
제10조 개인정보보호를 위한 기술적, 관리적 조치
회사는 이용자의 개인정보를 처리함에 있어 정보의 분실, 도난, 누출, 외부로부터의 공격, 해킹 등을 방지하고 안전성을 확보하기 위하여 기술적·관리적 및 물리적 조치를 하고 있습니다.
회사가 수행하는 기술적∙관리적 및 물리적 조치는 다음과 같습니다.
개인정보의 안전한 처리를 위하여 별도의 내부 관리계획을 수립·시행하고 있습니다.
개인정보에 대한 접근 통제 및 접근 권한을 제한하기 위하여 이용자의 개인정보를 처리하는 담당인원을 최소한으로 제한하며, 관련 직원에 대해서는 지속적인 보안교육의 실시와 함께 본 정책의 준수여부를 수시로 점검하고 있습니다.
개인정보를 안전하게 저장·전송할 수 있도록 이용자의 개인정보는 비밀번호에 의해 보호되며, 파일 및 전송 데이터를 암호화하여 중요한 데이터는 별도의 보안기능을 통해 보호하며, 암호화통신(SSL)등을 통하여 네트워크상에서 개인정보를 안전하게 전송할 수 있도록 하는 등 노력을 기울이고 있습니다.
개인정보 침해사고 발생에 대응하기 위한 접속기록의 보관 및 위조·변조 방지를 위하여 개인정보취급자가 개인정보처리시스템에 접속하여 개인정보를 처리한 경우 접속일시, 처리내역 등을 저장하고 위·변조 또는 도난, 분실, 파기되지 않도록 별도로 보관합니다.
회사는 컴퓨터 바이러스에 의한 개인정보 피해가 발생하지 않도록 백신프로그램을 이용하고 있으며, 주기적으로 업데이트를 진행하는 등 개인정보에 대한 보안프로그램을 설치 및 갱신하고 있습니다.
개인정보의 안전한 보관을 위하여 외부침입을 차단하는 보안장치를 이용하고 있으며, 침입탐지시스템을 설치하여 불법적인 침입을 감시하는 등 별도의 보관시설의 마련 또는 잠금장치의 설치 등 물리적 조치를 취하고 있습니다.
제11조 쿠키(cookie)의 운영에 관한 사항
회사는 회원인증을 위하여 Cookie 방식을 이용하고 있습니다. 이는 로그아웃(Logout)시 자동으로 컴퓨터에 저장되지 않고 삭제되도록 되어 있으므로 공공장소나 타인이 사용할 수 있는 컴퓨터를 사용 하 실 경우에는 로그인(Login)후 서비스 이용이 끝나시면 반드시 로그아웃(Logout)해 주시기 바랍니다.
쿠키 설정을 거부하는 방법으로는 회원님이 사용하시는 웹 브라우저의 옵션을 선택함으로써 모든 쿠키를 허용하거나 쿠키를 저장할 때마다 확인을 거치거나, 모든 쿠키의 저장을 거부할 수 있습니다.
설정방법 예(인터넷 익스플로어의 경우): 웹 브라우저 상단의 도구 > 인터넷 옵션 > 개인정보
단, 귀하께서 쿠키 설치를 거부하였을 경우 서비스 제공에 어려움이 있을 수 있습니다.
제12조 개인정보관련 의견수렴 및 불만처리에 관한 사항
회사는 개인정보보호와 관련하여 이용자 여러분들의 의견을 수렴하고 있으며 불만을 처리하기 위하여 모든 절차와 방법을 마련하고 있습니다. 이용자들은 하단에 명시한 제14조를 참고하여 전화나 메일을 통하여 불만사항을 신고할 수 있고, 회사는 이용자들의 신고사항에 대하여 신속하고도 충분한 답변을 해 드릴 것입니다.

제13조 개인정보 관리책임자 및 담당자의 소속-성명 및 연락처
회사는 귀하가 좋은 정보를 안전하게 이용할 수 있도록 최선을 다하고 있습니다. 개인정보를 보호하는데 있어 귀하께 고지한 사항들에 반하는 사고가 발생할 경우 개인정보관리책임자가 책임을 집니다.
이용자 개인정보와 관련한 아이디(ID)의 비밀번호에 대한 보안유지책임은 해당 이용자 자신에게 있습니다. 회사는 비밀번호에 대해 어떠한 방법으로도 이용자에게 직접적으로 질문하는 경우는 없으므로 타인에게 비밀번호가 유출되지 않도록 각별히 주의하시기 바랍니다. 특히 공공장소에서 온라인상에서 접속해 있을 경우에는 더욱 유의하셔야 합니다.
회사는 개인정보에 대한 의견수렴 및 불만처리를 담당하는 개인정보 관리책임자 및 담당자를 지정하고 있고, 연락처는 아래와 같습니다.
이름: 강지호
소속 / 직위: 개인정보관리책임자
E-MAIL: support@soomgo.com
전화번호: 1599-5319
제14조 개인정보처리방침의 적용 제외
회사는 이용자에게 웹사이트를 통하여 다른 회사의 웹사이트 또는 자료에 대한 링크를 제공할 수 있습니다. 이 경우 회사는 외부사이트 및 자료에 대하여 통제권이 없을 뿐만 아니라 이들이 개인정보를 수집하는 행위에 대하여 회사의 '개인정보처리방침'이 적용되지 않습니다. 따라서, 회사가 포함하고 있는 링크를 클릭하여 타 사이트의 페이지로 이동할 경우에는 새로 방문한 사이트의 개인정보처리방침을 반드시 확인하시기 바랍니다.

제15조 권익침해 구제방법
이용자는 다음 각 호의 기관에 대해 개인정보 침해에 대한 피해구제, 상담 등을 문의할 수 있습니다. 아래의 기관은 회사와 별개의 기관으로서, 회사의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 구체적이고 자세한 도움이 필요하시면 문의하여 주시기 바랍니다.
개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.
개인정보 침해신고센터 (한국인터넷진흥원 운영)
소관업무: 개인정보 침해사실 신고, 상담 신청
홈페이지: privacy.kisa.or.kr
전 화: (국번없이) 118 
주 소: (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해 신고센터
개인정보 분쟁조정위원회 (한국인터넷진흥원 운영)
소관업무: 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결) 
홈페이지: www.kopico.or.kr
전 화: 1833-6972
주 소: 03171 서울특별시 종로구 세종대로 209 정부서울청사 4층 개인정보 분쟁조정위원회
대검찰청 사이버범죄수사단: 02-3480-3571 (cybercid.spo.go.kr)
경찰청 사이버안전국: 182 (http://cyber.go.kr)
정보보호마크인증위원회: 02-550-9531~2 (www.eprivacy.or.kr)
제16조 고지의 의무
현 개인정보처리방침의 내용은 정부의 정책 또는 보안기술의 변경에 따라 내용의 추가 삭제 및 수정이 있을 시에는 이메일을 통해 개별 고지할 것입니다.

제17조 시행시기
본 방침은 2018년 5월 17일부터 시행됩니다.

   
(주)브레이브모바일(대표이사: 김로빈)

사업자등록번호: 120-88-22325 개인정보책임관리자: 우리나

서울시 강남구 논현로 75길 10, 영창빌딩 3층

통신판매업신고증: 제 2015-서울강남-00567 호

개인정보 처리방침 · 이용약관 · 멤버십 약관 · 고객센터: 1599-5319

© Amatda


    			</textarea>
    		</td>
    	</tr>
    	<tr>
    		<td colspan="3"><input type="checkbox" class="checkbox" id="agree2"><p>동의함</p></td>
    	</tr>
    	<tr>
    		<td colspan="3"><input type="checkbox" class="checkbox" id="allCheck"><p>전체동의</p></td>
    	</tr>
    	 <tr class="registerTr">
    		<td colspan="3"><button type="submit" id="submit"class="form-control">다음</button></td>
    	</tr>
		</table>
	</form>
	</div>
</body>

<script>
	//이 페이지에 들어올 경우 바로 로딩하는 함수
	//버튼 비활성화
	$(function(){
		$("button[type='submit']").attr("disabled", true).css({"background":"lightgray","border":"1px solid lightgray"});
	
	})
	
	//동의
	$("input:checkbox").change(function(){
	
		console.log("test")
		test();
	});
	

	function test(){

		if ($("input:checkbox[id='agree1']").is(":checked")&& $("input:checkbox[id='agree2']").is(":checked")){
			console.log("all checked");
			$("#submit").removeAttr("disabled").css({"background":"#ff0066","border":"1px solid #ff0066"});
		}else{		
			$("#submit").attr("disabled","true");
		}	
		
	};
	
	
	//전체동의
	$("#allCheck").click(function(){
		if($("#allCheck").prop("checked")){
			$("input[type=checkbox]").prop("checked",true);
		}else{
			$("input[type=checkbox]").prop("checked",false);
			$("#submit").attr("disabled","true").css({"background":"lightgray","border":"1px solid lightgray"});
		}
	})
</script>
</html>