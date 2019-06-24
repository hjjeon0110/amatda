package com.kh.amd.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
	
	//공지사항/이벤트 통합 리스트(sr)
	@RequestMapping("selectNotice.bo")
	public String selectNotice() {
		return "board/selectNotice";
	}
	
	//공지사항 상세페이지(sr)
	@RequestMapping("selectOneNotice.bo")
	public String selectOneNotice() {
		return "board/selectOneNotice";
	}

	//qna 입력게시판(sr)
	@RequestMapping("insertQna.bo")
	public String insertQna() {
		return "board/insertQna";
	}
	
	//리뷰게시판 리스트(sr)
	@RequestMapping("selectReview.bo")
	public String selectReview() {
		return "board/selectReview";
	}
	
	//리뷰게시판 상세페이지(sr)
	@RequestMapping("selectOneReview.bo")
	public String selectOneReview() {
		return "board/selectOneReview";
	}
	
	//리뷰게시판 작성페이지 (sr)
	@RequestMapping("insertReview.bo")
	public String insertReview() {
		return "board/insertReview";
	}
	
	//faq 리스트(sr)
	@RequestMapping("selectFaq.bo")
	public String selectFaq() {
		return "board/selectFaq";
	}
	
	//신고 입력 게시판(sr)
	@RequestMapping("insertDeclaration.bo")
	public String insertDeclaration() {
		return "board/insertDeclaration";
	}

	//공지사항 카테고리 리스트
	@RequestMapping("selectNoticeCate.bo")
	public String selectNoticeCate() {
		return "board/selectNoticeCate";
	}
	
	//이벤트 카테고리 리스트
	@RequestMapping("selectEventCate.bo")
	public String selectEventCate() {
		return "board/selectEventCate";
	}
	
	
	
	
}
