package com.kh.amd.board.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.board.model.dao.BoardDao;
import com.kh.amd.board.model.vo.Board;


@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	BoardDao bd;

	@Override
	public void selectNotice(Board b) {
		bd.selectNotice(sqlSession,b);
	}

	@Override
	public void selectOneNotice(Board b) {
		bd.selectOneNotice(sqlSession,b);
	}

	@Override
	public void selectNoticeCate(Board b) {
		bd.selectNoticeCate(sqlSession,b);
	}

	@Override
	public void selectEventCate(Board b) {
		bd.selectEventCate(sqlSession,b);
	}

	@Override
	public void selectReview(Board b) {
		bd.selectReview(sqlSession,b);
	}

	@Override
	public void selectOneReview(Board b) {
		bd.selectOneReview(sqlSession,b);
	}

	@Override
	public void selectFaq(Board b) {
		bd.selectFaq(sqlSession,b);
	}
	
	
	
	
}
