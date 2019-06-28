package com.kh.amd.board.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	 
	  //리뷰게시판 그냥 단순 페이지 출력 (SR)
		  
		 @RequestMapping("insertReviewFormView.bo") 
		 public String insertReviewFormView() { 
			System.out.println("나는 단순하게 입력양식만 호출했어요!");
			 return "board/insertReview"; 
			 
		 }
		 
		 //리뷰게시판 입력(SR)
		 @RequestMapping("insertReview.bo")
		 public String insertReview(Model model,Board b) {
			 System.out.println("진짜인 내가 호출됐어요!!");
			 
			 int result = bs.insertReview(b);
			 
			 return "board/insertReview";
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
		 
		 
		  //리뷰게시판 그냥 단순 페이지 출력(sr)
		
		 /* @RequestMapping("selectReviewFormView.bo") 
		  public String
		  selectReviewFormView() { 
			  return "board/selectReview";
		  }
		  
		 //리뷰게시판 리스트(sr)
		
		  @RequestMapping("selectReview.bo")
		  
		  public String selectReview(Model model,Board b ) {
			  int result =bs.selectReview(b); 
			  return "board/selectReview"; 
			  } */
		 @RequestMapping("searchNotice")
		 public String searchNotice(Model model, String searchCon, String selectType) {
			 //검색할 내용 = searchCon
			 //검색할 타입 = selectType
			 System.out.println("받아온값 두개 : " + searchCon + ";;;;;" + selectType);
			 
			 return "";
		 }
		 
}




















