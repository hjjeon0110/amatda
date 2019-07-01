package com.kh.amd.board.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tools.ant.taskdefs.Apt.Option;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.amd.board.model.service.BoardService;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.member.model.vo.Member;



@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	
	
	  //Q&A 게시판 그냥 단순 페이지 출력 (SR)
	 @RequestMapping("insertQnaFormView.bo")
	 public String insertQnaFormView() {
		 
		 System.out.println("나는 단순하게 입력양식만 호출했어요!");
		 return "board/insertQna";
	 }
	
	 
	 //Q&A 게시판 입력 (SR)
	  @RequestMapping("insertQna.bo") 
	  public String insertQna(Model model, Board b,HttpServletRequest request) {
	  System.out.println("내가 호출됐어요!!!");
	  System.out.println(b);
	 
	  Member loginUser = (Member) request.getSession().getAttribute("loginUser");
	  b.setbWriter(loginUser.getMno());
	  
	  int result = bs.insertQna(b);
	  if(result >0) {
		  return "board/insertQna"; 
	  }else {
		  model.addAttribute("msg","등록실패");
		  return "common/errorPage";
	  }
	
	 }
	 
	
	
		 //공지사항/이벤트 리스트 출력(SR)
		 @RequestMapping("selectNotice.bo")
		 public String selectNotice(Model model) {
			 List<Board> selectNotice = bs.selectNotice();
			 model.addAttribute("selectNotice",selectNotice);
			 System.out.println("selectNotice in controller : " + selectNotice);
			 return "board/selectNotice";
		 }
	
		 //공지사항 CATEGORY만의 리스트 출력(SR)
		 @RequestMapping("selectNoticeCate.bo")
		 public String selectNoticeCate(Model model) {
			 List<Board> selectNoticeCate = bs.selectNoticeCate();
			 model.addAttribute("selectNoticeCate",selectNoticeCate);
			 System.out.println("selectNoticeCate in controller : " + selectNoticeCate );
			 return "board/selectNoticeCate";
		 }
		 
		 //이벤트 CATEGORY만의 리스트 출력(SR)
		 @RequestMapping("selectEventCate.bo")
		 public String selectEventCate(Model model) {
			 List<Board> selectEventCate = bs.selectEventCate();
			 model.addAttribute("selectEventCate",selectEventCate);
			 return "board/selectEventCate";
		 }
		 
		 //★공지사항/이벤트 게시물 상세페이지(SR)
		@RequestMapping(value="selectOneNotice.bo", method=RequestMethod.GET)
		 public ModelAndView selectOneNotice(@RequestParam int bNo,HttpSession session) {
			
			 bs.increaseViewcnt(bNo, session);
			 ModelAndView mav = new ModelAndView();
			 mav.setViewName("board/selectOneNotice");
			 mav.addObject("selectOneNotice", bs.selectOneNotice(bNo));
			 
			 System.out.println("bNo in controller : " + bNo);
			 
			 return mav;
		 } 
		
		 //★FAQ게시판 아코디언 리스트 출력(SR)
		 @RequestMapping("selectFaq.bo")
		 public String selectFaq(Model model) {
			 List<Board> selectFaq = bs.selectFaq();
			 model.addAttribute("selectFaq",selectFaq);
			 System.out.println("selectFaq in controller : " + selectFaq);
			 return "board/selectFaq";
		 }
		//FAQ게시판 그냥 단순 뷰(SR)
		 @RequestMapping("selectFaqFormView.bo")
		 public String selectFaqFormView() {
			 
			 System.out.println("나는 단순하게 입력양식만 호출했어요!");
			 return "board/selectFaq";
		 }
		  //리뷰게시판 그냥 단순 페이지 출력 (SR)
		  
		 @RequestMapping("insertReviewFormView.bo") 
		 public String insertReviewFormView() { 
			System.out.println("나는 단순하게 입력양식만 호출했어요!");
			 return "board/insertReview"; 
		 }
		 //리뷰게시판 리스트(sr)
		
		  @RequestMapping("selectReview.bo")
		  public String selectReview(Model model ) {
			  List <Board> selectReview = bs.selectReview();
			  model.addAttribute("selectReview",selectReview);
			  System.out.println("selectReview in controller : " + selectReview);
			  
			  return "board/selectReview"; 
			  } 
		 
		 //★리뷰게시판 입력(SR)
		 @RequestMapping("insertReview.bo")
		 public String insertReview(Model model,Board b) {
			 System.out.println("진짜인 내가 호출됐어요!!");
			 
			 int result = bs.insertReview(b);
			 
			 return "board/insertReview";
		 }
	
		 
		
		
		
		 //★공지사항/이벤트 게시판 검색 (SR)
		/* @RequestMapping("searchNotice.bo")
		 public String searchNotice(Model model, String searchCon, String selectType) {
			 //검색할 내용 = searchCon
			 //검색할 타입 = selectType
			 System.out.println("받아온값 두개 : " + searchCon + ";;;;;" + selectType);
			 
			 List<Board> searchNotice = bs.searchNotice();
			 model.addAttribute("searchNotice",searchNotice);
			 return "board/searchNotice";
		 }
		 */
		 
		
		 
		 
		//공지사항/이벤트 게시판 페이징 (SR)
	/*
	 * @RequestMapping("selectNotice.bo") public ModelAndView openBoardList(Criteria
	 * cri) throws Exception {
	 * 
	 * ModelAndView mav = new ModelAndView("/board/selectNotice");
	 * 
	 * PageMaker pageMaker = new PageMaker(); pageMaker.setCri(cri);
	 * pageMaker.setTotalCount(100);
	 * 
	 * List<Map<String,Object>> list = bs.selectBoardList(cri);
	 * mav.addObject("list", list); mav.addObject("pageMaker", pageMaker);
	 * 
	 * return mav;
	 * 
	 * }
	 */


		 
		
		 
}




















