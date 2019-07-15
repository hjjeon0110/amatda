package com.kh.amd.diary.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.diary.model.vo.Diary;

public interface DiaryService {

	//다이어리 내용(content) insert
	void insertDiary(Diary d, String mno);
	

	//다이어리 이미지 insert
	void insertDiaryImg(int bno, String mno, String filePath, String originalFilename, String changeName, String ext);
	
	
	//다이어리 list
	List<Diary> diaryList(int mno, PageInfo pi);	
	

	//다이어리 내용상세
	Diary selectDetailDiary(int bno);
	

	//다이어리 이미지 상세
	Attachment selectAttachmentOne(int bno);
	

	// bno 조회
	int selectDiaryBno();
	

	//diary update
	void updateDiary(Diary d, String mno, String bno);
	

	//diary Img update
	void updateDiaryImg(String bno, String mno, String filePath, String originalFilename, String changeName,
			String ext);


	//갤러리 select
	List<Object> selectGallery(Attachment a);


	//댓글  select
	List<Reply> replyList(int bno);


	//댓글 insert
	int insertReply(Reply rep);


	//페이징처리
	int diaryListCount(int mno);


	int deleteDiary(Diary d, String bno);


	
	

	//gallery
	//List<Diary> galleryList(int mno);



	

	

	

}
