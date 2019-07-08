package com.kh.amd.admin.controller;



import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.activation.CommandMap;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.amd.admin.model.service.AdminService;
import com.kh.amd.board.model.service.BoardService;
import com.kh.amd.board.model.service.DeclarationService;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.Declaration;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Payment;
import com.kh.amd.board.model.service.ReplyService;


@Controller
public class AdminController {

	@Autowired
	private DeclarationService ds;

	@Autowired
	private BoardService bs;
	
	@Autowired
	private ReplyService rs;
	
	@Autowired
	private AdminService as;
	
	//관리자 페이지 메인(회원 정보 조회)
	@RequestMapping("main.ad")
	public String adminMain(Model model) {	
		List<Member> userList = as.userList();
		model.addAttribute("userList", userList);	
		//System.out.println("회원 정보 조회 : "+userList);
		return "admin/main";
	}
	
	//아이디 검색 기능
	@RequestMapping("searchUser.ad")
	public ResponseEntity searchUser(String userId) {			
		List<Member> searchResult = as.searchUser(userId);
		//System.out.println(searchResult);		
		return new ResponseEntity(searchResult, HttpStatus.OK);
	}
	
	
	//카테고리별 검색	  
	 @RequestMapping("filtering.ad") 
	 public ModelAndView filteringList(@RequestParam String category,
			 						 @RequestParam String keyword) {
		 
		 System.out.println("필터링 실행");
		 List<Member> filteringList = as.filteringList(category, keyword);
		 
		 ModelAndView mav = new ModelAndView();
		 //데이터를 맵에 저장
		 Map<String, Object> map = new HashMap<String, Object>();
		 map.put("filteringList", filteringList);
		 map.put("category", category);
		 map.put("keyword", keyword);
		 //맵에 저장된 데이터를 mav에 저장
		 mav.addObject("map", map);
		 mav.setViewName("admin/main");	
		 
		 System.out.println("필터링 : " + mav);
		 return mav;
		 
	 }

	 
	 

	//트레이너 조회
	@RequestMapping("trainer.ad")
	public String trainerList(Model model) {
		List<Member> trainerList = as.trainerList();
		model.addAttribute("trainerList", trainerList);
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
		//System.out.println(noticeList);
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
		//System.out.println("자주묻는 질문 상세보기 : " + mav);

		return mav;
	}


	//자주 묻는 질문 글 등록 화면
	@RequestMapping("FAQWrite.ad")
	public String FAQWrite(){
		return "admin/FAQInsert";
	}


	//자주 묻는 질문 글 등록 처리
	@RequestMapping(value="FAQInsert.ad", method=RequestMethod.POST) 
	public String FAQInsert(@ModelAttribute Board board){ 
		bs.insertFAQ(board);
		return "redirect:FAQ.ad"; 
	}

	//자주 묻는 질문 삭제
	@RequestMapping("deleteFAQ.ad")
	public String deleteFAQ(@RequestParam int bNo) {
		bs.deleteFAQ(bNo);
		return "redirect:FAQ.ad";
	}

	//자주 묻는 질문 수정 페이지 이동
	@RequestMapping(value="FAQUpdate.ad", method=RequestMethod.GET) 
	public String FAQRewrite(@RequestParam int bNo, Model model) { 
		Board board = new Board();
		board = bs.FAQSelectOne(bNo);
		model.addAttribute(board);
		return "admin/FAQUpdate";
	}

	//자주 묻는 질문 수정 처리
	@RequestMapping(value="FAQUpdate.ad", method=RequestMethod.POST) 
	public String FAQUpdate(Board board) { 		
		int result = bs.updateFAQ(board);
		return "redirect:FAQ.ad";
	}

	//1:1문의 리스트
	@RequestMapping("QNA.ad")
	public String QNAList(Model model){		
		List<Board> QNAList = bs.QNAList();
		model.addAttribute("list", QNAList);
		//System.out.println("1:1" + QNAList);
		return "admin/QNAList";
	}

	//1:1문의 상세보기
	@RequestMapping(value="QNASelectOne.ad", method=RequestMethod.GET)
	public ModelAndView QNASelectOne(@RequestParam int bNo, HttpSession session,
										Model model){

		//조회수 증가
		bs.increaseViewcnt(bNo, session);

		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/QNASelectOne"); 
		mav.addObject("QNA",bs.QNASelectOne(bNo));
		
		//System.out.println("상세보기  : " + mav);
		
		//댓글 목록
		List<Reply> repList = rs.replyList(bNo);
		model.addAttribute("repList", repList);
		
		return mav;
	}

	
	//1:1문의 글 삭제
	@RequestMapping("deleteQNA.ad")
	public String deleteQNA(@RequestParam int bNo) {
		bs.deleteQNA(bNo);
		return "redirect:QNA.ad";
	}
	
	//댓글 입력
	@RequestMapping("insertReply.ad")
	public void insertReply(@ModelAttribute Reply reply, HttpServletResponse response) {
		//System.out.println("댓글 입력 controller");
		//System.out.println(reply);
		rs.insertReply(reply);
	}

	//멤버쉽 관리
	@RequestMapping("membership.ad")
	public String membershipList(Model model) {
		List<Payment> paymentList = as.paymentList();
		model.addAttribute("paymentList", paymentList);
		//System.out.println("결제내역관리 : " + paymentList);
		
		return "admin/membershipList";
	}

	//환불 관리
	@RequestMapping("refund.ad")
	public String refundList(Model model) {
		//환불 요청
		List<Payment> refundList = as.refundList();
		model.addAttribute("refundList", refundList);
		//System.out.println("환불내역 : " + refundList);
	
		return "admin/refundList";
	}

	//신고관리 페이지
	@RequestMapping("declaration.ad")
	public String declarationList(Model model){
		List<Declaration> declarationList = ds.declarationList();
		//System.out.println(declarationList);
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
