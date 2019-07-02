package com.kh.amd.diary.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.diary.model.vo.Diary;

public interface DiaryDao {

	//다이어리 내용 insert
	int insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno);

	//다이어리 이미지 insert
	int insertDiaryImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
			String changeName, String ext);

	//다이어리 이미지 여부 체크
	Attachment checkDiaryImg(SqlSessionTemplate sqlSession, int mno);

	//다이어리 이미지 update
	void modifyDiaryImg(SqlSessionTemplate sqlSession, String mno, String filePath, String originalFilename,
			String changeName, String ext);

	//다이어리 list
	List<Diary> diaryList(SqlSessionTemplate sqlSession, int mno);

	//다이어리 상세보기
	Diary selectDetailDiary(SqlSessionTemplate sqlSession, int bno);

	Attachment selectAttachmentOne(SqlSessionTemplate sqlSession, int bno);

}
