package com.kh.amd.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {

	//관리자 페이지 메인
	@RequestMapping("main.ad")
	public String adminMain() {

		return "admin/main";
	}

	//트레이너 조회
	@RequestMapping("trainer.ad")
	public String trainerList() {

		return "admin/trainerList";
	}

	//매칭 조회
	@RequestMapping("matching.ad")
	public String matchingList() {

		return "admin/matchingList";
	}

	//공지사항
	@RequestMapping("notice.ad")
	public String noticeList(){

		return "admin/noticeList";
	}

	//공지사항 상세보기
	@RequestMapping("noticeSelectOne.ad")
	public String noticeSelectOne(){

		return "admin/noticeSelectOne";

	}

	//공지사항 글 등록
	@RequestMapping("noticeInsert.ad")
	public String noticeInsert(){

		return "admin/noticeInsert";

	}

	//자주 묻는 질문
	@RequestMapping("FAQ.ad")
	public String FAQList(){

		return "admin/FAQList";
	}

	//자주 묻는 질문 상세보기
	@RequestMapping("FAQSelectOne.ad")
	public String FAQSelectOne(){

		return "admin/FAQSelectOne";

	}

	//자주 묻는 질문 글 등록
	@RequestMapping("FAQInsert.ad")
	public String FAQInsert(){

		return "admin/FAQInsert";

	}

	//1:1문의
	@RequestMapping("QNA.ad")
	public String QNAList(){

		return "admin/QNAList";
	}

	//1:1문의 상세보기
	@RequestMapping("QNASelectOne.ad")
	public String QNASelectOne(){

		return "admin/QNASelectOne";

	}

	//멤버쉽 관리
	@RequestMapping("membership.ad")
	public String membershipList() {
		return "admin/membershipList";
	}

	//환불 관리
	@RequestMapping("refund.ad")
	public String refundList() {
		return "admin/refundList";
	}

	//신고관리 페이지
	@RequestMapping("declaration.ad")
	public String declarationList(){

		return "admin/declarationList";

	}

	//신고게시물 상세보기
	@RequestMapping("declarationSelectOne.ad")
	public String declarationSelectOne(){

		return "admin/declarationSelectOne";

	}

	//통계관리 페이지
	@RequestMapping("statistics.ad")
	public String statistics(){

		return "admin/statistics";

	}

}
