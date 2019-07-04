package com.kh.amd.board.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.board.model.vo.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao{

	//문의 댓글 입력(김선아)
	@Override
	public void insertReply(SqlSessionTemplate sqlSession, Reply reply) {
		sqlSession.insert("Reply.insertReply", reply);
	}

	//문의 댓글 목록(김선아)
	@Override
	public List<Reply> replyList(SqlSessionTemplate sqlSession, int bNo) {
		return sqlSession.selectList("Reply.replyList", bNo);
	}

	


}
