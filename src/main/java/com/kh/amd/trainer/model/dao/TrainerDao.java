package com.kh.amd.trainer.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

public interface TrainerDao {

	// 프로필 작성 여부 확인 메소드 (전효정)
	Profile checkProfile(SqlSessionTemplate sqlSession, int mno);

	Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno);

	

}
