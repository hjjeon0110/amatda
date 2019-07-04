package com.kh.amd.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.board.model.vo.Reply;

public interface ReplyDao {

	//문의 댓글 입력(김선아)
	void insertReply(SqlSessionTemplate sqlSession, Reply reply);

	//문의 댓글 목록(김선아)
	List<Reply> replyList(SqlSessionTemplate sqlSession, int bNo);

	
	

}
