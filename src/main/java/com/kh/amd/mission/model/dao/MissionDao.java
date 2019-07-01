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

	Mission selectMissionList(SqlSessionTemplate sqlSession, String mDate0);

	Mission selectMissionExList(SqlSessionTemplate sqlSession, String mDate0);

	Mission selectMissionExLunchList(SqlSessionTemplate sqlSession, String mDate0);

	Mission selectMissionExDinnerList(SqlSessionTemplate sqlSession, String mDate0);

	int updateBreakExLink(SqlSessionTemplate sqlSession, Mission m);

	Mission selectMissionLunchList(SqlSessionTemplate sqlSession, String mDate0);

	Mission sselectMissionDinnerList(SqlSessionTemplate sqlSession, String mDate0);

	Mission selectBreakEx(SqlSessionTemplate sqlSession, String mDate0);

	/* Mission selectLunchEx(SqlSessionTemplate sqlSession, String mDate0); */

	/* Mission selectLunchEx(SqlSessionTemplate sqlSession, Mission m); */

	/* int updateBreakfast2(SqlSessionTemplate sqlSession, String breakfast2); */

}
