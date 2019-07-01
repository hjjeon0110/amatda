package com.kh.amd.board.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.kh.amd.board.model.vo.Board;

public interface BoardService {


	

	//질문작성 입력(SR)
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


	//공지사항/이벤트 리스트 출력(SR)
	List<Board> selectNotice();

	 //공지사항 CATEGORY만의 리스트 출력(SR)
	List<Board> selectNoticeCate();

	//이벤트 CATEGORY만의 리스트 출력(SR)
	List<Board> selectEventCate();

	//공지사항/이벤트 게시물 상세페이지(SR)
	Object selectOneNotice(int bNo);

	//FAQ게시판 아코디언 리스트 출력(SR)
	List<Board> selectFaq();

	//후기리뷰 출력(SR)
	List<Board> selectReview();

	
	//후기리뷰 입력(SR)
		int insertReview(Board b);


	//공지사항/이벤트 게시판 페이징 (SR)
	//List<Map<String, Object>> selectBoardList(Criteria cri);

	//공지사항/이벤트 게시판 검색 (SR)
	//List<Board> searchNotice();

	


}
