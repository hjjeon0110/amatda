package com.kh.amd.admin.controller;



import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.amd.board.model.service.BoardService;
import com.kh.amd.board.model.service.DeclarationService;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.Declaration;


@Controller
public class AdminController {

	@Autowired
	private DeclarationService ds;

	@Autowired
	private BoardService bs;

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


	//공지사항 리스트
	@RequestMapping("notice.ad")
	public String noticeList(Model model){

		List<Board> noticeList = bs.noticeList();
		System.out.println(noticeList);
		model.addAttribute("list", noticeList);		

		return "admin/noticeList";
	}

	//공지사항 상세보기
	@RequestMapping(value="noticeSelectOne.ad", method=RequestMethod.GET) 
	public ModelAndView noticeSelectOne(@RequestParam int bNo, HttpSession session){

		//조회수 증가
		bs.increaseViewcnt(bNo, session);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/noticeSelectOne"); 
		mav.addObject("notice",bs.noticeSelectOne(bNo));

		return mav;
	}

	//공지사항 글 등록 화면
	@RequestMapping("noticeWrite.ad")
	public String noticeWrite(){
		return "admin/noticeInsert";
	}

	//공지사항 글 등록 처리
	@RequestMapping(value="noticeInsert.ad", method=RequestMethod.POST)
	public String noticeInsert(@ModelAttribute Board board){	
		bs.insertNotice(board);
		return "redirect:notice.ad";
	}

	//공지사항 삭제
	@RequestMapping("deleteNotice.ad")
	public String deleteNotice(@RequestParam int bNo) {
		bs.deleteNotice(bNo);
		return "redirect:notice.ad";
	}

	//공지사항 수정 페이지 이동
	@RequestMapping(value="noticeUpdate.ad", method=RequestMethod.GET) //GET방식으로 페이지 호출 
	public String noticeRewrite(@RequestParam int bNo, Model model) { 
		Board board = new Board();
		board = bs.noticeSelectOne(bNo);
		model.addAttribute(board);
		return "admin/noticeUpdate";
	}

	//공지사항 수정
	@RequestMapping(value="noticeUpdate.ad", method=RequestMethod.POST) //POST방식으로 데이터 전송
	public String noticeUpdate(Board board) { 		
		//System.out.println("board 출력 : " + board);
		int result = bs.updateNotice(board);
		bs.updateNotice(board);

		return "redirect:notice.ad";
	}

	//자주 묻는 질문 리스트
	@RequestMapping("FAQ.ad")
	public String FAQList(Model model){
		List<Board> FAQList = bs.FAQList();
		model.addAttribute("list", FAQList);	
		return "admin/FAQList";
	}

	//자주 묻는 질문 상세보기
	@RequestMapping(value="FAQSelectOne.ad", method=RequestMethod.GET)
	public ModelAndView FAQSelectOne(@RequestParam int bNo, HttpSession session){

		//조회수 증가
		bs.increaseViewcnt(bNo, session);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/FAQSelectOne"); 
		mav.addObject("FAQ",bs.FAQSelectOne(bNo));
		System.out.println("자주묻는 질문 상세보기 : " + mav);

		return mav;
	}


	//자주 묻는 질문 글 등록
	@RequestMapping("FAQInsert.ad")
	public String FAQInsert(){

		return "admin/FAQInsert";

	}

	//1:1문의 리스트
	@RequestMapping("QNA.ad")
	public String QNAList(Model model){		
		List<Board> QNAList = bs.QNAList();
		model.addAttribute("list", QNAList);	
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

		//데이터와 화면을 함께 전달하는 객체
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/declarationSelectOne");
		mav.addObject("decl", ds.declarationSelectOne(decl_no));

		//System.out.println(ds.declarationSelectOne(decl_no));

		return mav;
	}

	//신고게시물 삭제
	@RequestMapping("deleteDeclaration.ad") public String
	deleteDeclaration(@RequestParam int decl_no) { 
		ds.deleteDeclaration(decl_no);
		return "redirect:declaration.ad";

	}


	//통계관리 페이지
	@RequestMapping("statistics.ad")
	public String statistics(){

		return "admin/statistics";

	}

}
