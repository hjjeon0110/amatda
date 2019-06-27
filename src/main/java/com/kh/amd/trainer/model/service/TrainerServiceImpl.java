package com.kh.amd.trainer.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.dao.TrainerDao;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

@Service
public class TrainerServiceImpl implements TrainerService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private TrainerDao td;
	
	// 프로필 작성 여부 확인 메소드 (전효정)
	@Override
	public Profile checkProfile(int mno) {
		
		return td.checkProfile(sqlSession, mno);
		
	}

	@Override
	public Estimate selectEstimate(int mno, int iestType) {
		
		return td.selectEstimate(sqlSession, mno, iestType);
	}

	@Override
	public int insertEstimate(Estimate tEst) {
		
		return td.insertEstimate(sqlSession, tEst);
	}

	@Override
	public int updateEstimate(Estimate estimate) {
		
		return td.updateEstimate(sqlSession, estimate);
	}
	
}
