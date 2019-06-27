package com.kh.amd.mission.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.mission.model.vo.Mission;

public interface MissionDao {

	int insertBreakfast(SqlSessionTemplate sqlSession, Mission mis);

	int insertLunch(SqlSessionTemplate sqlSession, Mission mis);

	int insertDinner(SqlSessionTemplate sqlSession, Mission mis);

	int insertBreakEx(SqlSessionTemplate sqlSession, Mission mis);

	int insertLunchEx(SqlSessionTemplate sqlSession, Mission mis);

	int insertDinnerEx(SqlSessionTemplate sqlSession, Mission mis);

	Mission selectMission(SqlSessionTemplate sqlSession, Mission m);

}
