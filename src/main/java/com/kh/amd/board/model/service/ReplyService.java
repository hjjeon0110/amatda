package com.kh.amd.board.model.service;

import java.util.List;

import com.kh.amd.board.model.vo.Reply;

public interface ReplyService {

	//문의 댓글 입력(김선아)
	void insertReply(Reply reply);

	//문의 댓글 목록(김선아)
	List<Reply> replyList(int bNo);


}
