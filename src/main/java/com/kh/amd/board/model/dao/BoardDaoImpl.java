package com.kh.amd.board.model.dao;

import java.util.List;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao {

	/*
	 * @Override public Board selectNotice(SqlSessionTemplate sqlSession, Board b) {
	 * return sqlSession.selectOne("Board.selectNotice",b); }
	 * 
	 * @Override public Board selectOneNotice(SqlSessionTemplate sqlSession, Board
	 * b) { return sqlSession.selectOne("Board.selectOneNotice",b); }
	 * 
	 * @Override public Board selectNoticeCate(SqlSessionTemplate sqlSession, Board
	 * b) { return sqlSession.selectOne("Board.selectNoticeCate", b); }
	 * 
	 * @Override public Board selectEventCate(SqlSessionTemplate sqlSession, Board
	 * b) { return sqlSession.selectOne("Board.selectEventCate",b); }
	 * 
	 * @Override public Board selectReview(SqlSessionTemplate sqlSession, Board b) {
	 * return sqlSession.selectOne("Board.selectReview",b); }
	 * 
	 * @Override public Board selectOneReview(SqlSessionTemplate sqlSession, Board
	 * b) { return sqlSession.selectOne("Board.selectOneReview",b); }
	 * 
	 * @Override public Board selectFaq(SqlSessionTemplate sqlSession, Board b) {
	 * return sqlSession.selectOne("Board.selectFaq",b); }
	 */

	//사용자페이지 Q&A 질문게시판 입력(SR)
	/*
	 * @Override public int insertQna(SqlSessionTemplate sqlSession, Board b) {
	 * return sqlSession.insert("Board.insertQna",b);
	 * 
	 * }
	 */

	//사용자페이지 리뷰후기 게시판 입력(sr)
	@Override
	public int insertReview(SqlSessionTemplate sqlSession, Board b) {
		return sqlSession.insert("Board.insertReview",b);
	}

	//사용자페이지 Q&A 질문게시판 입력(SR)
	@Override
	public int insertQna(SqlSessionTemplate sqlSession, Board b) {
		
		
	return sqlSession.insert("Board.insertQna", b);
	
	
	}

	//공지사항 리스트(김선아)
	@Override
	public List<Board> noticeList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Board.noticeList");
	}
	
	//공지사항 상세보기(김선아)
	@Override
	public Board noticeSelectOne(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.noticeSelectOne", bNo);
	}

	//공지사항 조회수 증가(김선아)
	@Override
	public void increaseViewcnt(SqlSessionTemplate sqlSession, int bNo) {
		sqlSession.update("Board.increaseViewcnt", bNo);
	}

	//공지사항 글등록(김선아)
	@Override
	public void insertNotice(SqlSessionTemplate sqlSession, Board board) {
		sqlSession.update("Board.insertNotice", board);		
	}

	//공지사항 삭제(김선아)
	@Override
	public void deleteNotice(SqlSessionTemplate sqlSession, int bNo) {
		sqlSession.delete("Board.deleteNotice", bNo);	
	}

	//공지사항 수정(김선아)
	@Override
	public int updateNotice(SqlSessionTemplate sqlSession, Board board) {
		return sqlSession.update("Board.updateNotice", board);
	}

	//1:1문의 리스트(김선아)
	@Override
	public List<Board> QNAlist(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Board.QNAlist");
	}

	//자주묻는질문 리스트(김선아)
	@Override
	public List<Board> FAQlist(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Board.FAQlist");
	}

	//자주묻는질문 상세보기(김선아)
	@Override
	public Board FAQSelectOne(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.FAQSelectOne", bNo);
	}
	

	/*
	 * @Override public int selectReview(SqlSessionTemplate sqlSession, Board b) {
	 * return sqlSession.selectOne("Board.selectReview",b);
	 * 
	 * }
	 */

	
}
