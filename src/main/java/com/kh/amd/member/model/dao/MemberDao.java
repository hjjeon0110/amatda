package com.kh.amd.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.member.model.vo.Member;

public interface MemberDao {

	int insertMember(SqlSessionTemplate sqlSession, Member m);

	int insertTrainer(SqlSessionTemplate sqlSession, Member m);

	int insertTrainerInfo(SqlSessionTemplate sqlSession, Member m);

}
