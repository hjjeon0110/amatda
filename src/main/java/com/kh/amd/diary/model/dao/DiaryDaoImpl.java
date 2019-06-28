package com.kh.amd.diary.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.diary.model.vo.Diary;

@Repository
public class DiaryDaoImpl implements DiaryDao{

	@Override
	public int insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("d", d);
		map.put("mno", mno);
		
		return sqlSession.insert("Diary.insertDiary", map);
	}

	@Override
	public void insertDiaryImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
			String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.insert("Diary.insertDiaryImg", map);
		
	}

	//다이어리 이미지 존재여부
	@Override
	public Attachment checkDiaryImg(SqlSessionTemplate sqlSession, int mno) {
		
				
		return sqlSession.selectOne("Diary.checkDiaryImg", mno);
	}

	@Override
	public void modifyDiaryImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
			String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		sqlSession.update("Diary.modifyDiaryImg", map);
		
	}

}
