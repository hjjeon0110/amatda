package com.kh.amd.diary.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

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

	@Override
	public int insertDiary(Diary d, String mno) {
		
		return dd.insertDiary(sqlSession, d, mno);
	}

}
