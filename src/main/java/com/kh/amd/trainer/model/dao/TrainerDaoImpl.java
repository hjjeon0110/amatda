package com.kh.amd.trainer.model.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

@Repository
public class TrainerDaoImpl implements TrainerDao {

	// 프로필 작성 여부 확인 메소드 (전효정)
	@Override
	public Profile checkProfile(SqlSessionTemplate sqlSession, int mno) {
	
		return sqlSession.selectOne("Trainer.checkProfile", mno);
	}

	// 
	@Override
	public Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno, int iestType) {
		
		Map<String, Object> map = new HashMap<String, Object>();
			map.put("MNO", mno);
			map.put("iestType", iestType);
		
		return sqlSession.selectOne("Trainer.selectEstimate", map);
	}

	@Override
	public int insertEstimate(SqlSessionTemplate sqlSession, Estimate tEst) {
		
		return sqlSession.insert("Trainer.insertEstimate", tEst);
	}

}
