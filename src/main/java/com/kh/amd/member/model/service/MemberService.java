package com.kh.amd.member.model.service;

import javax.security.auth.login.LoginException;

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

	
	
}
