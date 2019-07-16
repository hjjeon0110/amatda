package com.kh.amd.diary.model.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
import com.kh.amd.board.model.vo.PageInfo;
import com.kh.amd.board.model.vo.Reply;
import com.kh.amd.diary.model.dao.DiaryDao;
import com.kh.amd.diary.model.vo.Diary;

@Service
public class DiaryServiceImpl implements DiaryService{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private DiaryDao dd;
	@Autowired
	private DataSourceTransactionManager transactionManager;


	//다이어리 내용 insert
	@Override
	public void insertDiary(Diary d, String mno) {
		
		dd.insertDiary(sqlSession, d, mno);
		
	}
	
	
	// bno 조회
	@Override
	public int selectDiaryBno() {
		return dd.selectDiaryBno(sqlSession);
		
	}
	

	//다이어리 이미지 insert
	@Override
	public void insertDiaryImg(int bno, String mno, String filePath, String originalFilename, String changeName, String ext) {
		dd.insertDiaryImg(sqlSession, bno, mno, filePath, originalFilename, changeName, ext);
		
	}


	//다이어리 list
	@Override
	public List<Diary> diaryList(int mno, PageInfo pi) {
		
		return dd.diaryList(sqlSession, mno, pi);
	}


	//다이어리 상세보기
	@Override
	public Diary selectDetailDiary(int bno) {
		
		return dd.selectDetailDiary(sqlSession, bno);
	}
	
	
	//다이어리 이미지 상세
	@Override
	public Attachment selectAttachmentOne(int bno) {
		
		return dd.selectAttachmentOne(sqlSession, bno);
	}



	//diary update
	@Override
	public void updateDiary(Diary d, String mno, String bno) {
		dd.updateDiary(sqlSession, d, mno, bno);
		
	}
	

	//diary Img update
	@Override
	public void updateDiaryImg(String bno, String mno, String filePath, String originalFilename, String changeName,
			String ext) {
		dd.updateDiaryImg(sqlSession, bno, mno, filePath, originalFilename, changeName, ext);
		
	}


	//갤러리 select
	@Override
	public List<Object> selectGallery(Attachment a) {
		
		return dd.selectGallery(sqlSession, a);
	}


	//댓글 select
	@Override
	public List<Reply> replyList(int bno) {
		
		return dd.replyList(sqlSession, bno);
	}


	//댓글 insert
	@Override
	public int insertReply(Reply rep) {
		return dd.insertReply(sqlSession, rep);
		
	}


	//페이징
	@Override
	public int diaryListCount(int mno) {
		
		return dd.diaryListCount(sqlSession, mno);
	}


	//다이어리 delete
	/*
	 * @Override public int deleteDiary(String bNo) {
	 * 
	 * return dd.deleteDiary(sqlSession, bNo); }
	 */


	@Override
	public int deleteDiary(Diary d, String bno) {
		
		int result = 0;
		
		int result1 = dd.deleteDiary(sqlSession, bno);
		
		System.out.println("result1 : " + result1);
		
		int result2 = dd.deleteGallery(sqlSession, bno);
		
		System.out.println("result2 : " + result2);
		
		if(result1 > 0 && result2 > 0) {
			
			result = 1;
			
		}else {
			
			
		}
		
		return result;
		
	}

	

}
