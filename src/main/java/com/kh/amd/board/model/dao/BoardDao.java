package com.kh.amd.board.model.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;


import com.kh.amd.board.model.vo.Board;


public interface BoardDao {

	//후기 입력 페이지 (SR)
	int insertReview(SqlSessionTemplate sqlSession, Board b);

	//질문 작성 페이지(SR)
	int insertQna(SqlSessionTemplate sqlSession, Board b);


	//공지사항 리스트(김선아)
	List<Board> noticeList(SqlSessionTemplate sqlSession);

	//공지사항 상세보기(김선아)
	Object noticeSelectOne(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 조회수증가(김선아)
	void increaseViewcnt(SqlSessionTemplate sqlSession, int bNo);
	
	
	//공지사항/이벤트 리스트 출력(SR)
	List<Board> selectNotice(SqlSessionTemplate sqlSession);

	 //공지사항 CATEGORY만의 리스트 출력(SR)
	List<Board> selectNoticeCate(SqlSessionTemplate sqlSession);

	//이벤트 CATEGORY만의 리스트 출력(SR)
	List<Board> selectEventCate(SqlSessionTemplate sqlSession);

	//공지사항/이벤트 게시물 상세페이지(SR)
	Board selectOneNotice(SqlSessionTemplate sqlSession, int bNo);

	//FAQ게시판 아코디언 리스트 출력(SR)
	List<Board> selectFaq(SqlSessionTemplate sqlSession);

	//후기리뷰 게시판 리스트 출력(SR)
	List<Board> selectReview(SqlSessionTemplate sqlSession);

	//리뷰게시판 상세페이지 (SR)
	Object selectOneReview(SqlSessionTemplate sqlSession);

	

	//공지사항/이벤트 게시판 페이징 (SR)
	//List<Map<String, Object>> selectBoardList(Criteria cri);

	//공지사항/이벤트 게시판 검색 (SR)
	//List<Board> searchNotice(SqlSessionTemplate sqlSession);


	//int insertQna(SqlSessionTemplate sqlSession, Board b, String mno);


	/* int selectReview(SqlSessionTemplate sqlSession, Board b); */



}
