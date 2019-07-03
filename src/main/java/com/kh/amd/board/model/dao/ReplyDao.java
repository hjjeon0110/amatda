package com.kh.amd.board.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.board.model.vo.Reply;

public interface ReplyDao {

	//댓글 입력(김선아)
	void insertReply(SqlSessionTemplate sqlSession, Reply reply);

	
	

}
