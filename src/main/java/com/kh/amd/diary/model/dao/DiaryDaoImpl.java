package com.kh.amd.diary.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.diary.model.vo.Diary;

@Repository
public class DiaryDaoImpl implements DiaryDao{

	@Override
	public int insertDiary(SqlSessionTemplate sqlSession, Diary d, String mno) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("d", d);
		map.put("mno", mno);
		
		return sqlSession.insert("Diary.insertDiary", map);
	}

}
