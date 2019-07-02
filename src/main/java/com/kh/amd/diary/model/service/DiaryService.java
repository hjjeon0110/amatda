package com.kh.amd.diary.model.service;

import java.util.List;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.diary.model.vo.Diary;

public interface DiaryService {

	//다이어리 내용 insert
	int insertDiary(Diary d, String mno, String filePath, String originalFilename, String changeName, String ext);

	//다이어리 이미지 insert
	void insertDiaryImg(String mno, String filePath, String originalFilename, String changeName, String ext);

	//다이어리 이미지 존재 여부 확인 메소드
	Attachment checkDiaryImg(int mno);
	
	//다이어리 이미지 update
	void modifyDiaryImg(String mno, String filePath, String originalFilename, String changeName, String ext);

	//다이어리 list
	List<Diary> diaryList(int mno);

	Diary selectDetailDiary(int bno);

	Attachment selectAttachmentOne(int bno);

	

}
