package com.kh.amd.member.model.service;

import com.kh.amd.member.model.vo.Member;

public interface MemberService {

	int insertMember(Member m);

	int insertTrainer(Member m);

	int idCheck(String userId);

	int emailCheck(String email);

	Member loginMember(Member m);

	Member selectId(Member m);

	
}
