package com.kh.amd.board.model.dao;

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

	int insertQna(SqlSessionTemplate sqlSession, Board b);

	/* int selectReview(SqlSessionTemplate sqlSession, Board b); */



}
