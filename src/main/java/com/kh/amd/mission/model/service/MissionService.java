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

}
