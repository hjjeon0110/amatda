package com.kh.amd.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao {

	@Override
	public Board selectNotice(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectNotice",b);
	}

	@Override
	public Board selectOneNotice(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectOneNotice",b);
	}

	@Override
	public Board selectNoticeCate(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectNoticeCate",b);
	}

	@Override
	public Board selectEventCate(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectEventCate",b);
	}

	@Override
	public Board selectReview(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectReview",b);
	}

	@Override
	public Board selectOneReview(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectOneReview",b);
	}

	@Override
	public Board selectFaq(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.selectOne("Board.selectFaq",b);
	}

	
}
