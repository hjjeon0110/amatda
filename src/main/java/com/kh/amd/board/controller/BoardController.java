package com.kh.amd.board.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.service.BoardService;


@Controller
public class BoardController {
	@Autowired
	private BoardService bs;
	
	
	  //공지사항/이벤트 통합 리스트(sr)
	  
	  @RequestMapping("selectNotice.bo") 
	  public String selectNotice() {
	  
	  return "board/selectNotice"; 
	  
	  }
	  
	  //공지사항 상세페이지(sr)
	/*
	 * @RequestMapping("selectOneNotice.bo") public String selectOneNotice(Model
	 * model, Board b) {
	 * 
	 * bs.selectOneNotice(b);
	 * 
	 * return "board/selectOneNotice"; }
	 * 
	 * //공지사항 카테고리 리스트
	 * 
	 * @RequestMapping("selectNoticeCate.bo") public String selectNoticeCate() {
	 * 
	 * return "board/selectNoticeCate"; }
	 * 
	 * //이벤트 카테고리 리스트
	 * 
	 * @RequestMapping("selectEventCate.bo") public String selectEventCate() {
	 * 
	 * 
	 * return "board/selectEventCate"; }
	 * 
	 * 
	 * //리뷰게시판 리스트(sr)
	 * 
	 * @RequestMapping("selectReview.bo") public String selectReview() {
	 * 
	 * 
	 * return "board/selectReview"; }
	 * 
	 * //리뷰게시판 상세페이지(sr)
	 * 
	 * @RequestMapping("selectOneReview.bo") public String selectOneReview() {
	 * 
	 * return "board/selectOneReview"; }
	 * 
	 * 
	 * //리뷰게시판 작성페이지 (sr)
	 * 
	 * @RequestMapping("insertReview.bo") public String insertReview() { return
	 * "board/insertReview"; }
	 * 
	 * //신고 입력 게시판(sr)
	 * 
	 * @RequestMapping("insertDeclaration.bo") public String insertDeclaration() {
	 * return "board/insertDeclaration"; }
	 * 
	 * 
	 * //FAQ 게시판(sr)
	 * 
	 * @RequestMapping("selectFaq.bo") public String selectFaq() {
	 * return"board/selectFaq"; }
	 */
	 
	
	//qna 입력게시판(sr)
		/*@RequestMapping("insertQna.bo")
		public String insertQna() {
			return "board/insertQna";
		} */
	
	/*@RequestMapping(value="insertQna.bo")
	public String insertQna(Model model,Board b,HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		int result=bs.insertQna(b);
		if(result>0) {
			return "board/insertQna";
		}else {
			model.addAttribute("msg","등록실패");
			return "common/errorPage";
		}
		
	}*/
	
	
	/*
	 * @RequestMapping("insertQna.bo") public String insertQna() { return
	 * "board/insertQna"; }
	 */
	 
	  
	  //Q&A 게시판 그냥 단순 페이지 출력 (SR)
	 @RequestMapping("insertQnaFormView.bo")
	 public String insertQnaFormView() {
		 
		 System.out.println("나는 단순하게 입력양식만 호출했어요!");
		 return "board/insertQna";
	 }
	
	 //Q&A 게시판 입력 (SR)
	  @RequestMapping("insertQna.bo") 
	  public String insertQna1(Model model, Board b) {
	  System.out.println("내가 호출됐어요!!!");
	  System.out.println(b);
	  bs.insertQna(b); 
	  
	  return "board/insertQna"; 
	  }
	 
	
	 
	
	
}




















