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

	Mission selectMissionList(Mission m);

	Mission selectMissionExList(Mission m);

	Mission selectMissionExLunchList(Mission m);

	Mission selectMissionExDinnerList(Mission m);

	Mission selectMissionLunchList(Mission m);

	Mission selectMissionDinnerList(Mission m);

	Mission selectBreakEx(Mission m);

	Mission selectLunchEx(Mission m);

	Mission selectDinnerEx(Mission m); 

	
	
	int updateBreakExLink(Mission m);

	int updateLunchExLink(Mission m);

	
	//진짜 미션 수정
	int updateBreakEat(Mission m);

	int updateLunchEat(Mission m);

	int updateDinnerEat(Mission m);

	int updateBreakEx(Mission m);

	int updateLunchEx(Mission m);

	int updateDinnerEx(Mission m);
	
}
