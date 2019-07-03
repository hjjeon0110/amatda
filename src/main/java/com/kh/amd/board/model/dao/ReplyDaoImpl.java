package com.kh.amd.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao{

	//댓글 입력(김선아)
	@Override
	public void insertReply(SqlSessionTemplate sqlSession, Reply reply) {
		sqlSession.insert("Reply.insertReply", reply);
	}

	


}
