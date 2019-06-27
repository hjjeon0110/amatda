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
	Object noticeSelectOne(SqlSessionTemplate sqlSession, int bNo);

	//공지사항 조회수증가(김선아)
	void increaseViewcnt(SqlSessionTemplate sqlSession, int bNo);

	//int insertQna(SqlSessionTemplate sqlSession, Board b, String mno);


	/* int selectReview(SqlSessionTemplate sqlSession, Board b); */



}
