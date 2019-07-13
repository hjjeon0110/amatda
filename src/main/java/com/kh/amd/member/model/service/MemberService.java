package com.kh.amd.member.model.service;

import java.util.List;

import javax.security.auth.login.LoginException;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.Board;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member m);

	int insertTrainer(Member m);

	int idCheck(String userId);

	int emailCheck(String email);

	Member loginMember(Member m) throws LoginException;

	Member selectId(Member m);


	int findPwd(Member m) throws LoginException;

	int updateMyPwd(Member m);

	Member selectPwd(Member m);

	Member loginUserReturn(String mno);

	Member selectMyInfo(String mno);

	int updateMyInfo(Member m);

	int updateRandomPwd(Member m);

	void updateMyImg(String mno, String filePath, String originalFilename, String ext, String changeName);

	int dummyImgInsert();

	Attachment selectMyImg(int mno2);

	

	

	
	
}
