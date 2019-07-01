package com.kh.amd.mission.model.service;

import java.util.List;

import com.kh.amd.mission.model.vo.Mission;

public interface MissionService {

	int insertBreakfast(Mission mis);

	int insertLunch(Mission mis);

	int insertDinner(Mission mis);

	int insertBreakEx(Mission mis);

	int insertLunchEx(Mission mis);

	int insertDinnerEx(Mission mis);

	Mission selectMission(Mission m);

	Mission selectLunchMission(Mission m);

	Mission selectDinnerMission(Mission m);

	Mission selectEatBreakMission(Mission m);

	Mission selectEatLunchMission(Mission m);

	Mission selectEatDinnerMission(Mission m);

	Mission selectMissionList(String mDate0);

	Mission selectMissionExList(String mDate0);

	Mission selectMissionExLunchList(String mDate0);

	Mission selectMissionExDinnerList(String mDate0);

	int updateBreakExLink(Mission m);

	Mission selectMissionLunchList(String mDate0);

	Mission selectMissionDinnerList(String mDate0);

	Mission selectBreakEx(String mDate0);

	

	/* Mission selectLunchEx(Mission m); */

	
	
}
