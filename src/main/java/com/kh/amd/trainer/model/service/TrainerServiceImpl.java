package com.kh.amd.trainer.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
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
	
	// 프로필 작성 여부 확인 메소드  (전효정)
	@Override
	public Profile checkProfile(int mno) {
		return td.checkProfile(sqlSession, mno);
	}

	// 견적서 select(보기) 메소드 (김진환)
	@Override
	public Estimate selectEstimate(int mno, int iestType) {
		return td.selectEstimate(sqlSession, mno, iestType);
	}

	// 견적서 insert 메소드(김진환)
	@Override
	public int insertEstimate(Estimate tEst) {
		return td.insertEstimate(sqlSession, tEst);
	}
	// 견적서 update 메소드(김진환)
	@Override
	public int updateEstimate(Estimate estimate) {
		return td.updateEstimate(sqlSession, estimate);
	}
	
	// 프로필 이미지 존재 여부 확인 메소드 (전효정)
	@Override
	public Attachment checkProfileImg(int mno) {
		return td.checkProfileImg(sqlSession, mno);
	}
	
	// 프로필 이미지 insert 메소드 (전효정)
	@Override
	public void insertProfileImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		td.insertProfileImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
	}
	
	// 프로필 이미지 수정 메소드 (전효정)
	@Override
	public void modifyProfileImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		td.modifyProfileImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
	}

	// 프로필 - 내 정보 수정하기 insert 메소드 (전효정)
	@Override
	public void insertProfile1(String mno, String proTitle, String lineProfile) {
		td.insertProfile1(sqlSession, mno, proTitle, lineProfile);
	}
	
	// 프로필 - 내 정보 수정하기 update 메소드 (전효정)
	@Override
	public void updateProfile1(String mno, String proTitle, String lineProfile) {
		td.updateProfile1(sqlSession, mno, proTitle, lineProfile);
	}
	
	//공개설정업데이트 메소드(김진환)
	@Override
	public void updateTopen(String mno, String open) {
		
		td.updateTopen(sqlSession, mno, open);
		
	}
	

	
}
