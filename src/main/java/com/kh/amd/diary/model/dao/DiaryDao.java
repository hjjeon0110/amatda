package com.kh.amd.diary.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.diary.model.vo.Diary;

public interface DiaryDao {

	int insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno);

}
