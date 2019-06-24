package com.kh.amd.trainer.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.trainer.model.vo.Profile;

@Repository
public class TrainerDaoImpl implements TrainerDao {

	// 프로필 작성 여부 확인 메소드 (전효정)
	@Override
	public Profile checkProfile(SqlSessionTemplate sqlSession, int mno) {
	
		return sqlSession.selectOne("Trainer.checkProfile", mno);
	}

}
