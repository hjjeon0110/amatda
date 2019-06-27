package com.kh.amd.trainer.model.service;

import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

public interface TrainerService {

	// 프로필 작성 여부 확인 메소드 (전효정)
	Profile checkProfile(int mno);

	Estimate selectEstimate(int mno, int iestType);

	int insertEstimate(Estimate tEst);

	int updateEstimate(Estimate estimate);

	

}
