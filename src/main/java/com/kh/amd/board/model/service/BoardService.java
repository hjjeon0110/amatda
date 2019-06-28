package com.kh.amd.board.model.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import com.kh.amd.board.model.vo.Board;

public interface BoardService {


	//후기리뷰 입력(SR)
	int insertReview(Board b);

	//질문작성 입력(SR)
	int insertQna(Board b);
	
	//공지사항 리스트(김선아)
	List<Board> noticeList();

	//공지사항 상세보기(김선아)
	Object noticeSelectOne(int bNo);

	//공지사항 조회수 증가(김선아)
	void increaseViewcnt(int bNo, HttpSession session);

	//공지사항/이벤트 리스트 출력(SR)
	List<Board> selectNotice();

	 //공지사항 CATEGORY만의 리스트 출력(SR)
	List<Board> selectNoticeCate();

	//이벤트 CATEGORY만의 리스트 출력(SR)
	List<Board> selectEventCate();



}
