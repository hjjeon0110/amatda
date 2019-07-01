package com.kh.amd.board.model.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.kh.amd.board.model.vo.Board;

public interface BoardService {

	/*
	 * void selectNotice(Board b);
	 * 
	 * void selectOneNotice(Board b);
	 * 
	 * void selectNoticeCate(Board b);
	 * 
	 * void selectEventCate(Board b);
	 * 
	 * void selectReview(Board b);
	 * 
	 * void selectOneReview(Board b);
	 * 
	 * void selectFaq(Board b);
	 */

	//int insertQna(Board b);

	int insertReview(Board b);

	int insertQna(Board b);
	
	//공지사항 리스트(김선아)
	List<Board> noticeList();

	//공지사항 상세보기(김선아)
	Board noticeSelectOne(int bNo);

	//공지사항 조회수 증가(김선아)
	void increaseViewcnt(int bNo, HttpSession session);

	//공지사항 글 등록(김선아)
	void insertNotice(Board board);

	//공지사항 삭제(김선아)
	void deleteNotice(int bNo);

	//공지사항 수정(김선아)
	int updateNotice(Board board);

	//1:1문의 리스트(김선아)
	List<Board> QNAList();

	//자주묻는 질문 리스트(김선아)
	List<Board> FAQList();

	//자주묻는질문 상세보기(김선아)
	Object FAQSelectOne(int bNo);


	

	/* int selectReview(Board b); */

}
