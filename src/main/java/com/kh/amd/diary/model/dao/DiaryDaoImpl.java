package com.kh.amd.diary.model.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.diary.model.vo.Diary;

@Repository
public class DiaryDaoImpl implements DiaryDao{

	//다이어리 내용 insert
	@Override
	public int insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("d", d);
		map.put("mno", mno);
		
		return sqlSession.insert("Diary.insertDiary", map);
	}

	//다이어리 이미지 insert
	@Override
	public int insertDiaryImg(SqlSessionTemplate sqlSession, Diary d, String mno, String filePath, String originalFilename,
			String changeName, String ext) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("d", d);
		map.put("mno", mno);
		map.put("filePath", filePath);
		map.put("originalFilename", originalFilename);
		map.put("changeName", changeName);
		map.put("ext", ext);
		
		return sqlSession.insert("Diary.insertDiaryImg", map);
		
	}

	//다이어리 이미지 존재여부
	@Override
	public Attachment checkDiaryImg(SqlSessionTemplate sqlSession, int mno) {
		
				
		return sqlSession.selectOne("Diary.checkDiaryImg", mno);
	}

	//다이어리 이미지 update
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

	//다이어리 list
	@Override
	public List<Diary> diaryList(SqlSessionTemplate sqlSession, int mno) {
		
		System.out.println("dao mno: " + mno);
		
		return sqlSession.selectList("Diary.diaryList", mno);
	}

	//다이어리 상세보기
	@Override
	public Diary selectDetailDiary(SqlSessionTemplate sqlSession, int bno) {
		
		return sqlSession.selectOne("Diary.selectDetailDiary", bno);
	}

	//다이어리 이미지 상세
	@Override
	public Attachment selectAttachmentOne(SqlSessionTemplate sqlSession, int bno) {
		
		return sqlSession.selectOne("Diary.selectAttachmentOne",bno);
	}

	
	
	
	//다이어리 insert 190701
//	@Override
//	public int insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno, String filePath, String originalFilename, String changeName, String ext) {
//		
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		map.put("d", d);
//		map.put("mno", mno);
//		map.put("filePath", filePath);
//		map.put("originalFilename", originalFilename);
//		map.put("changeName", changeName);
//		map.put("ext", ext);
//		
//		return sqlSession.insert("Diary.insertDiary", map);
//	}

}
