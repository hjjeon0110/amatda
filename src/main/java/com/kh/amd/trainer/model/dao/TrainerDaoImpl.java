package com.kh.amd.trainer.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.trainer.model.vo.Estimate;
import com.kh.amd.trainer.model.vo.Profile;

@Repository
public class TrainerDaoImpl implements TrainerDao {

	// 프로필 작성 여부 확인 메소드 (전효정)
	@Override
	public Profile checkProfile(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectOne("Trainer.checkProfile", mno);
	}

	// 견적서 (김진환)
	@Override
	public Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno) {
		return sqlSession.selectOne("Trainer.selectEstimate", mno);
	}
	
	// 프로필 이미지 존재 여부 확인 메소드 (전효정)
	@Override
	public Attachment checkProfileImg(SqlSessionTemplate sqlSession, int mno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Trainer.checkProfileImg", mno);
	}
	
	// 프로필 이미지 insert 메소드 (전효정)
	@Override
	public void insertProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		
		sqlSession.insert("Trainer.insertProfileImg", map);
	}

	// 프로필 이미지 수정 메소드 (전효정)
	@Override
	public void modifyProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		
		sqlSession.update("Trainer.modifyProfileImg", map);
		
	}


}
