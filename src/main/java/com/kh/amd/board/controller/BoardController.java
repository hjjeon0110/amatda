package com.kh.amd.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bs;
	
	//공지사항/이벤트 통합 리스트(sr)
	@RequestMapping("selectNotice.bo")
	public String selectNotice(Model model,Board b) {
		
		bs.selectNotice(b);
		
		return "board/selectNotice";
	}
	
	//공지사항 상세페이지(sr)
	@RequestMapping("selectOneNotice.bo")
	public String selectOneNotice(Model model,Board b) {
		
		bs.selectOneNotice(b);
		
		return "board/selectOneNotice";
	}
	
	//공지사항 카테고리 리스트
	@RequestMapping("selectNoticeCate.bo")
	public String selectNoticeCate(Model model,Board b) {
		
		bs.selectNoticeCate(b);
		
		return "board/selectNoticeCate";
	}
		
	//이벤트 카테고리 리스트
	@RequestMapping("selectEventCate.bo")
	public String selectEventCate(Model model,Board b) {
		
		bs.selectEventCate(b);
		
		return "board/selectEventCate";
	}
		

	//qna 입력게시판(sr)
	@RequestMapping("insertQna.bo")
	public String insertQna() {
		return "board/insertQna";
	}
	
	//리뷰게시판 리스트(sr)
	@RequestMapping("selectReview.bo")
	public String selectReview(Model model,Board b) {
		
		bs.selectReview(b);
		
		return "board/selectReview";
	}
	
	//리뷰게시판 상세페이지(sr)
	@RequestMapping("selectOneReview.bo")
	public String selectOneReview(Model model,Board b) {
		bs.selectOneReview(b);
		
		return "board/selectOneReview";
	}
	
	
	//리뷰게시판 작성페이지 (sr)
	@RequestMapping("insertReview.bo")
	public String insertReview() {
		return "board/insertReview";
	}
	
	//faq 리스트(sr)
	@RequestMapping("selectFaq.bo")
	public String selectFaq(Model model,Board b) {
		bs.selectFaq(b);
		
		return "board/selectFaq";
	}
	
	//신고 입력 게시판(sr)
	@RequestMapping("insertDeclaration.bo")
	public String insertDeclaration() {
		return "board/insertDeclaration";
	}

	
	
	
	
}
