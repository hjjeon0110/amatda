package com.kh.amd.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.kh.amd.member.model.dao.MemberDao;
import com.kh.amd.member.model.vo.Member;

@Component

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
		int result1 = md.insertTrainer(sqlSession, m);
		int result2 = md.insertTrainerInfo(sqlSession,m);
		
		if(result1>0 && result2>0) {
			result = 1;
		}else {
			result = 0;
		}
		
		return result;
		
	}

}
