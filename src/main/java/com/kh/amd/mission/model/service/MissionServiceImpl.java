package com.kh.amd.mission.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.mission.model.dao.MissionDao;
import com.kh.amd.mission.model.vo.Mission;

@Service
public class MissionServiceImpl implements MissionService{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	MissionDao md;
	
	//트레이너가 아침식단 등록
	@Override
	public int insertBreakfast(Mission mis) {
		System.out.println("Service mis: " + mis);
		return md.insertBreakfast(sqlSession,mis);
		
	}

	@Override
	public int insertLunch(Mission mis) {
		System.out.println("Service Lunch mis: " + mis);
		return md.insertLunch(sqlSession,mis);
	
	}

	@Override
	public int insertDinner(Mission mis) {
		System.out.println("Service Dinner mis: " + mis);
		return md.insertDinner(sqlSession,mis);
	}

	
	//아침 운동 등록
	@Override
	public int insertBreakEx(Mission mis) {
		System.out.println("Service BreakEx mis: " + mis);
		return md.insertBreakEx(sqlSession,mis);
	}

	@Override
	public int insertLunchEx(Mission mis) {
		return md.insertLunchEx(sqlSession,mis);
	}

	@Override
	public int insertDinnerEx(Mission mis) {
		return md.insertDinnerEx(sqlSession,mis);
	}

	
	//아침운동 & 링크 조회
	@Override
	public Mission selectMission(Mission m) {
		return md.selectMission(sqlSession,m);
	}

	//점심운동 & 링크 조회
	@Override
	public Mission selectLunchMission(Mission m) {
		return md.selectLunchMission(sqlSession,m);
	}
	
	//저녁운동 & 링크 조회
	@Override
	public Mission selectDinnerMission(Mission m) {
		return md.selectDinnerMission(sqlSession,m);
	}
	
	//아침 식사 조회
	@Override
	public Mission selectEatBreakMission(Mission m) {
		return md.selectEatBreakMission(sqlSession,m);
	}
	
	//점심 식사 조회
	@Override
	public Mission selectEatLunchMission(Mission m) {
		return md.selectEatLunchkMission(sqlSession,m);
	}

	//저녁 식사 조회
	@Override
	public Mission selectEatDinnerMission(Mission m) {
		return md.selectEatDinnerkMission(sqlSession,m);
	}

	@Override
	public Mission selectMissionList(String mDate0) {
		System.out.println("Service에서 mDate0: " + mDate0);
		return md.selectMissionList(sqlSession,mDate0);
	}

	@Override
	public Mission selectMissionExList(String mDate0) {
		return md.selectMissionExList(sqlSession,mDate0);
	}

	@Override
	public Mission selectMissionExLunchList(String mDate0) {
		return md.selectMissionExLunchList(sqlSession,mDate0);
	}

	@Override
	public Mission selectMissionExDinnerList(String mDate0) {
		return md.selectMissionExDinnerList(sqlSession,mDate0);
	}

	@Override
	public int updateBreakExLink(Mission m) {
		System.out.println("Service m: "  + m);
		return md.updateBreakExLink(sqlSession,m);
	}

	@Override
	public Mission selectMissionLunchList(String mDate0) {
		return md.selectMissionLunchList(sqlSession,mDate0);
	}

	@Override
	public Mission selectMissionDinnerList(String mDate0) {
		return md.sselectMissionDinnerList(sqlSession,mDate0);
	}

	@Override
	public Mission selectBreakEx(String mDate0) {
		return md.selectBreakEx(sqlSession,mDate0);
	}

	/*
	 * @Override public Mission selectLunchEx(Mission m) { return
	 * md.selectLunchEx(sqlSession,m); }
	 */

	/*
	 * @Override public Mission selectLunchEx(String mDate0) { return
	 * md.selectLunchEx(sqlSession,mDate0); }
	 */

	
	
	
	

}
