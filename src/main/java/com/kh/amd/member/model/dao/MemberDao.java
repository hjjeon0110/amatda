package com.kh.amd.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.member.model.vo.Member;

public interface MemberDao {

	int insertMember(SqlSessionTemplate sqlSession, Member m);

	int insertTrainer(SqlSessionTemplate sqlSession, Member m);

	int insertTrainerInfo(SqlSessionTemplate sqlSession, Member m);

	int selectMno(SqlSessionTemplate sqlSession, Member m);

	int idCheck(SqlSessionTemplate sqlSession, String userId);

	int emailCheck(SqlSessionTemplate sqlSession, String email);

	String selectEncPassword(SqlSessionTemplate sqlSession, Member m);

	Member selectMember(SqlSessionTemplate sqlSession, Member m);

	

	

}
