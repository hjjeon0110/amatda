package com.kh.amd.board.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.board.model.dao.ReplyDao;
import com.kh.amd.board.model.vo.Reply;



@Service
public class ReplyServiceImpl implements ReplyService{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	ReplyDao rd;

	//문의 댓글 입력(김선아)
	@Override
	public void insertReply(Reply reply) {
		rd.insertReply(sqlSession, reply);
	}

	//문의 댓글 목록(김선아)
	@Override
	public List<Reply> replyList(int bNo) {
		return rd.replyList(sqlSession, bNo);
	}


}
