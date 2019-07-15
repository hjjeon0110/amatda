package com.kh.amd.diary.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.diary.model.vo.Diary;

public interface DiaryDao {

	
	//다이어리 내용 insert
	void insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno);
	
	
	//보드 bno curval
	int selectDiaryBno(SqlSessionTemplate sqlSession);
	

	//다이어리 이미지 insert
	void insertDiaryImg(SqlSessionTemplate sqlSession, int bno, String mno, String filePath, String originalFilename, 
			String changeName, String ext);

	
	//다이어리 list
	List<Diary> diaryList(SqlSessionTemplate sqlSession, int mno, PageInfo pi);

	
	//다이어리 상세보기
	Diary selectDetailDiary(SqlSessionTemplate sqlSession, int bno);
	
	
	//다이어리 이미지 상세보기
	Attachment selectAttachmentOne(SqlSessionTemplate sqlSession, int bno);


	//diary update
	void updateDiary(SqlSessionTemplate sqlSession, Diary d, String mno, String bno);

	
	//diary Img update
	void updateDiaryImg(SqlSessionTemplate sqlSession, String bno, String mno, String filePath, String originalFilename,
			String changeName, String ext);

	
	//gallery
	//List<Diary> galleryList(SqlSessionTemplate sqlSession, int mno);


	//갤러리 select
	List<Object> selectGallery(SqlSessionTemplate sqlSession, Attachment a);


	//댓글 select
	List<Reply> replyList(SqlSessionTemplate sqlSession, int bno);


	//댓글 insert
	int insertReply(SqlSessionTemplate sqlSession, Reply rep);


	//페이징
	int diaryListCount(SqlSessionTemplate sqlSession, int mno);


	//다이어리 delete
	int deleteDiary(SqlSessionTemplate sqlSession, String bno);


	//갤러리 delete
	int deleteGallery(SqlSessionTemplate sqlSession, String bno);



	

	

	

}
