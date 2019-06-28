package com.kh.amd.trainer.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.member.model.vo.Member;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

public interface TrainerDao {

	// 프로필 작성 여부 확인 메소드  (전효정)
	Profile checkProfile(SqlSessionTemplate sqlSession, int mno);
	
	// 견적서 select(보기) 메소드(김진환)
	Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno, int iestType);
	
	// 견적서 insert 메소드(김진환)
	int insertEstimate(SqlSessionTemplate sqlSession, Estimate tEst);
	
	// 견적서 update 메소드(김진환)
	int updateEstimate(SqlSessionTemplate sqlSession, Estimate estimate);

	// 프로필 이미지 존재 여부 확인 메소드 (전효정)
	Attachment checkProfileImg(SqlSessionTemplate sqlSession, int mno);
	
	// 프로필 이미지 insert 메소드 (전효정)
	void insertProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext);
	
	// 프로필 이미지 수정 메소드 (전효정)
	void modifyProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext);

	// 공개설정 업데이트 메소드(김진환)
	void updateTopen(SqlSessionTemplate sqlSession, String mno, String open);

	// 프로필 - 미디어 수정하기 insert 메소드 (전효정)
	void insertMediaImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext);

	String checkMemberShip(SqlSessionTemplate sqlSession, String mno);




	

}
