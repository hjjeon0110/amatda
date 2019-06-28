package com.kh.amd.diary.model.service;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.diary.model.vo.Diary;

public interface DiaryService {

	int insertDiary(Diary d, String mno);

	//다이어리 이미지 insert
	void insertDiaryImg(String mno, String filePath, String originalFilename, String changeName, String ext);

	//다이어리 이미지 존재 여부 확인 메소드
	Attachment checkDiaryImg(int mno);
	
	//다이어리 이미지 update
	void modifyDiaryImg(String mno, String filePath, String originalFilename, String changeName, String ext);

}
