package com.kh.amd.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;


import com.kh.amd.board.model.vo.Board;


public interface BoardDao {

	/*
	 * Board selectNotice(SqlSessionTemplate sqlSession, Board b);
	 * 
	 * Board selectOneNotice(SqlSessionTemplate sqlSession, Board b);
	 * 
	 * Board selectNoticeCate(SqlSessionTemplate sqlSession, Board b);
	 * 
	 * Board selectEventCate(SqlSessionTemplate sqlSession, Board b);
	 * 
	 * Board selectReview(SqlSessionTemplate sqlSession, Board b);
	 * 
	 * Board selectOneReview(SqlSessionTemplate sqlSession, Board b);
	 * 
	 * Board selectFaq(SqlSessionTemplate sqlSession, Board b);
	 */

	//int insertQna(SqlSessionTemplate sqlSession, Board b);

	int insertReview(SqlSessionTemplate sqlSession, Board b);

	int insertQna(SqlSessionTemplate sqlSession, Board b);


	//공지사항 리스트(김선아)
	List<Board> noticeList(SqlSessionTemplate sqlSession);

	//공지사항 상세보기(김선아)
	Board noticeSelectOne(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 조회수증가(김선아)
	void increaseViewcnt(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 글등록(김선아)
	void insertNotice(SqlSessionTemplate sqlSession, Board board);

	//공지사항 삭제(김선아)
	void deleteNotice(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 수정(김선아)
	int updateNotice(SqlSessionTemplate sqlSession, Board board);

	//1:1문의 리스트(김선아)
	List<Board> QNAlist(SqlSessionTemplate sqlSession);

	//자주묻는질문 리스트(김선아)
	List<Board> FAQlist(SqlSessionTemplate sqlSession);

	//자주묻는질문 상세보기(김선아)
	Board FAQSelectOne(SqlSessionTemplate sqlSession, int bNo);

	//int insertQna(SqlSessionTemplate sqlSession, Board b, String mno);


	/* int selectReview(SqlSessionTemplate sqlSession, Board b); */



}
