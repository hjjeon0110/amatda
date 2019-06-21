package com.kh.amd.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.member.model.vo.Member;

@Repository
public class MemberDaoImpl implements MemberDao{

	
	//일반 사용자 회원가입
	@Override
	public int insertMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("Member.insertMember",m);
	}

	
	//트레이너 회원가입
	@Override
	public int insertTrainer(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("Member.insertTrainer", m);
	}

	//트레이너 정보 추가 회원가입
	@Override
	public int insertTrainerInfo(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.insert("Member.insertTrainerInfo", m);
		
	}

}
