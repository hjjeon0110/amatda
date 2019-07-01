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

	Mission selectLunchMission(SqlSessionTemplate sqlSession, Mission m);

	Mission selectDinnerMission(SqlSessionTemplate sqlSession, Mission m);

	Mission selectEatBreakMission(SqlSessionTemplate sqlSession, Mission m);

	Mission selectEatLunchkMission(SqlSessionTemplate sqlSession, Mission m);

	Mission selectEatDinnerkMission(SqlSessionTemplate sqlSession, Mission m);

	Mission selectMissionList(SqlSessionTemplate sqlSession, Mission m);

	Mission selectMissionExList(SqlSessionTemplate sqlSession, Mission m);

	Mission selectMissionExLunchList(SqlSessionTemplate sqlSession, Mission m);

	Mission selectMissionExDinnerList(SqlSessionTemplate sqlSession, Mission m);

	

	Mission selectMissionLunchList(SqlSessionTemplate sqlSession, Mission m);

	Mission sselectMissionDinnerList(SqlSessionTemplate sqlSession, Mission m);

	Mission selectBreakEx(SqlSessionTemplate sqlSession, Mission m);

	

    Mission selectLunchEx(SqlSessionTemplate sqlSession, Mission m);

	Mission selectDinnerEx(SqlSessionTemplate sqlSession, Mission m); 

	int updateBreakExLink(SqlSessionTemplate sqlSession, Mission m);

	int updateLunchExLink(SqlSessionTemplate sqlSession, Mission m);

	int updateBreakEat(SqlSessionTemplate sqlSession, Mission m);

	int updateLunchEat(SqlSessionTemplate sqlSession, Mission m);

	int updateDinnerEat(SqlSessionTemplate sqlSession, Mission m);

	int updateBreakEx(SqlSessionTemplate sqlSession, Mission m);

	int updateLunchEx(SqlSessionTemplate sqlSession, Mission m);

	int updateDinnerEx(SqlSessionTemplate sqlSession, Mission m);

	int insertCheckBreak(SqlSessionTemplate sqlSession, Mission m);

	int insertCheckLunch(SqlSessionTemplate sqlSession, Mission m);

	int insertCheckDinner(SqlSessionTemplate sqlSession, Mission m);

	int insertCheckBreakEx(SqlSessionTemplate sqlSession, Mission m);

	int insertCheckLunchEx(SqlSessionTemplate sqlSession, Mission m);

	int insertCheckDinnerEx(SqlSessionTemplate sqlSession, Mission m);

}
