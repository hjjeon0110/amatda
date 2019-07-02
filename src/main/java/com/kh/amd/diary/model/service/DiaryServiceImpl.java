package com.kh.amd.diary.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.kh.amd.attachment.model.vo.Attachment;
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
//	@Override
//	public int insertDiary(Diary d, String mno) {
//		
//		return dd.insertDiary(sqlSession, d, mno);
//	}

	//다이어리 이미지 insert
	@Override
	public void insertDiaryImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		dd.insertDiaryImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
		
	}

	//다이어리 이미지 존재 여부
	@Override
	public Attachment checkDiaryImg(int mno) {
		
		return dd.checkDiaryImg(sqlSession, mno);
	}

	//다이어리 이미지 update
	@Override
	public void modifyDiaryImg(String mno, String filePath, String originalFilename, String changeName, String ext) {
		
		dd.modifyDiaryImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
		
	}

	//다이어리 list
	@Override
	public List<Diary> diaryList(int mno) {
		
		return dd.diaryList(sqlSession, mno);
	}

	
	//다이어리 insert 190701
	@Override
	public int insertDiary(Diary d, String mno, String filePath, String originalFilename, String changeName,
			String ext) {
		
		int result = 0;
		
		int result1 = dd.insertDiary(sqlSession, d, mno);
		
		int result2 = dd.insertDiaryImg(sqlSession, mno, filePath, originalFilename, changeName, ext);
		
		if(result1 > 0 && result2 > 0) {
			result = 1;
		}else {
			result = 0;
		}
		return result;
		
		
	}

	//다이어리 상세보기
	@Override
	public Object selectDetailDiary(int bNo) {
		
				
		return dd.selectDetailDiary(sqlSession, bNo);
	}

	

}
