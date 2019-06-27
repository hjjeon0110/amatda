package com.kh.amd.trainer.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

public interface TrainerDao {

	// 프로필 작성 여부 확인 메소드 (전효정)
	Profile checkProfile(SqlSessionTemplate sqlSession, int mno);

	// 견적서 (김진환)
	Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno);

	// 프로필 이미지 존재 여부 확인 메소드 (전효정)
	Attachment checkProfileImg(SqlSessionTemplate sqlSession, int mno);
	
	// 프로필 이미지 insert 메소드 (전효정)
	void insertProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName);
	
	// 프로필 이미지 수정 메소드 (전효정)
	void modifyProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName);



	

}
