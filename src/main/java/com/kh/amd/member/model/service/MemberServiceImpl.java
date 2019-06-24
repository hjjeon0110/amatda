package com.kh.amd.member.model.service;

import javax.security.auth.login.LoginException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kh.amd.member.model.dao.MemberDao;
import com.kh.amd.member.model.vo.Member;



@Service
public class MemberServiceImpl implements MemberService{
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	MemberDao md;
	
	
	//일반 사용자 회원가입
	@Override
	public int insertMember(Member m) {
		
		return md.insertMember(sqlSession,m);
		
		
	}

	//트레이너 회원가입
	@Override
	public int insertTrainer(Member m) {
		
		
		int result = 0;
		int result2 = 0;
		int result1 = md.insertTrainer(sqlSession, m);
		int mno = md.selectMno(sqlSession, m);
		m.setMno(mno);
		System.out.println("result1 mno: " + m.getMno());
		
		if(result1>0) {
			result2 = md.insertTrainerInfo(sqlSession,m);
			System.out.println("result2의 트레이너: "+m);
		}else {
			System.out.println("트레이너 추가정보 입력 실패!");
		}
		if(result1>0 && result2>0) {
			result = 1;
		}else {
			result = 0;
		}
		
		return result;
		
	}

	//아이디 중복체크
	@Override
	public int idCheck(String userId) {
		int result = md.idCheck(sqlSession,userId);
		System.out.println("MemberServiceImpl: "+result);
		return result;
	}
	
	//이메일 중복체크
	@Override
	public int emailCheck(String email) {
		int result = md.emailCheck(sqlSession,email);
		return result;
	}

	//로그인
	@Override
	public Member loginMember(Member m) {
		Member loginUser = null;

		// 아이디를 통해 비밀번호 조회
		String encPassword = md.selectEncPassword(sqlSession, m);

		/*if (!passwordEncoder.matches(m.getUserPwd(), encPassword)) {
			throw new LoginException("로그인 실패!");

			// 일치하면 로그인 유저 정보 조회
		} else {*/
			loginUser = md.selectMember(sqlSession, m);
			System.out.println("서비스에서 조회 회원 정보 조회: " + loginUser);
		/* } */
		return loginUser;
	}
	
	//아이디 찾기
	@Override
	public Member selectId(Member m) {
		Member loginUser = null;
		
		loginUser = md.selectId(sqlSession, m);
		
		return loginUser;
	}

	

}
