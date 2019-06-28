package com.kh.amd.board.model.dao;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Board;

@Repository
public class BoardDaoImpl implements BoardDao {

	//사용자페이지 리뷰후기 게시판 입력(SR)
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
	public Object noticeSelectOne(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectOne("Board.noticeSelectOne", bNo);
	}

	//공지사항 조회수 증가(김선아)
	@Override
	public void increaseViewcnt(SqlSessionTemplate sqlSession, int bNo) {
		sqlSession.update("Board.increaseViewcnt", bNo);
	}

	//공지사항/이벤트 리스트 출력(SR)
	@Override
	public List<Board> selectNotice(SqlSessionTemplate sqlSession) {
		
		List<Board> list = (List) sqlSession.selectList("Board.selectNotice");
		System.out.println("list : " + list);
		
		return sqlSession.selectList("Board.selectNotice");
	}

	//공지사항 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectNoticeCate(SqlSessionTemplate sqlSession) {
		List<Board> list = (List) sqlSession.selectList("Board.selectNoticeCate");
		return sqlSession.selectList("Board.selectNoticeCate");
	}

	//이벤트 CATEGORY만의 리스트 출력(SR)
	@Override
	public List<Board> selectEventCate(SqlSessionTemplate sqlSession) {
		List<Board> list = (List) sqlSession.selectList("Board.selectEventCate");
		return sqlSession.selectList("Board.selectEventCate");
		
		
	}

	
	/*
	 * //HashMap<String, Object> map = new HashMap<String, Object>(); 
	 * map.put("mno", mno); 
	 * map.put("proTitle", proTitle); 
	 * map.put("lineProfile", lineProfile);
	 * 
	 * sqlSession.insert("Trainer.insertProfile1", map);
	 */


	/*
	 * @Override public int selectReview(SqlSessionTemplate sqlSession, Board b) {
	 * return sqlSession.selectOne("Board.selectReview",b);
	 * 
	 * }
	 */

	
}
