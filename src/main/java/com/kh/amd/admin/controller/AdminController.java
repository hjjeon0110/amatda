package com.kh.amd.admin.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.amd.board.model.service.DeclarationService;
import com.kh.amd.board.model.vo.Declaration;


@Controller
public class AdminController {

	@Autowired
	private DeclarationService ds;

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
	public String declarationList(Model model){

		List<Declaration> declarationList = ds.declarationList();
		System.out.println(declarationList);
		model.addAttribute("list", declarationList);

		return "admin/declarationList";

	}

	//신고게시물 상세보기
	@RequestMapping(value="declarationSelectOne.ad", method=RequestMethod.GET)
	public ModelAndView declarationSelectOne(@RequestParam int decl_no, HttpSession session){
		
		//조회수 증가 처리
		ds.increaseViewcnt(decl_no, session);
		//데이터와 화면을 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/declarationSelectOne");
		mav.addObject("selectOne", ds.declarationSelectOne(decl_no));
		
		System.out.println("게시물 상세보기");
		
		return mav;

	}

	//통계관리 페이지
	@RequestMapping("statistics.ad")
	public String statistics(){

		return "admin/statistics";

	}

}
