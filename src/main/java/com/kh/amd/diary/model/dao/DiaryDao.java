package com.kh.amd.diary.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.diary.model.vo.Diary;

public interface DiaryDao {

	int insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno);

	//다이어리 이미지 insert
	void insertDiaryImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
			String changeName, String ext);

	Attachment checkDiaryImg(SqlSessionTemplate sqlSession, int mno);

	void modifyDiaryImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
			String changeName, String ext);

}
