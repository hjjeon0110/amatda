package com.kh.amd.trainer.model.dao;

import java.util.HashMap;
import java.util.Map;

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

	// 견적서  보기 selecy 메소드(김진환)
	@Override
	public Estimate selectEstimate(SqlSessionTemplate sqlSession, int mno, int iestType) {
		
		Map<String, Object> map = new HashMap<String, Object>();
			map.put("MNO", mno);
			map.put("iestType", iestType);
		
		return sqlSession.selectOne("Trainer.selectEstimate", map);
	}
	// 견적서 insert 메소드(김진환)
	@Override
	public int insertEstimate(SqlSessionTemplate sqlSession, Estimate tEst) {
		
		return sqlSession.insert("Trainer.insertEstimate", tEst);
	}
	
	// 견적서 update 메소드(김진환)
	@Override
	public int updateEstimate(SqlSessionTemplate sqlSession, Estimate estimate) {
		
		return sqlSession.update("Trainer.updateEstimate", estimate);
	}
	
	// 프로필 이미지 존재 여부 확인 메소드 (전효정)
	@Override
	public Attachment checkProfileImg(SqlSessionTemplate sqlSession, int mno) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("Trainer.checkProfileImg", mno);
	}
	
	// 프로필 이미지 insert 메소드 (전효정)
	@Override
	public void insertProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.insert("Trainer.insertProfileImg", map);
	}

	// 프로필 이미지 수정 메소드 (전효정)
	@Override
	public void modifyProfileImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename, String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.update("Trainer.modifyProfileImg", map);
		
	}
	
	// 트레이너 공개설정 update 메소드(김진환)
	@Override
	public void updateTopen(SqlSessionTemplate sqlSession, String mno, String open) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("open", open);
		
		sqlSession.update("Trainer.updateTopen", map);
	}


}
