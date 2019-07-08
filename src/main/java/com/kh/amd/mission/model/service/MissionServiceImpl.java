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
	public Mission selectMissionList(Mission m) {
		System.out.println("Service에서 mDate0: " + m);
		return md.selectMissionList(sqlSession,m);
	}

	@Override
	public Mission selectMissionExList(Mission m) {
		return md.selectMissionExList(sqlSession,m);
	}

	@Override
	public Mission selectMissionExLunchList(Mission m) {
		return md.selectMissionExLunchList(sqlSession,m);
	}

	@Override
	public Mission selectMissionExDinnerList(Mission m) {
		return md.selectMissionExDinnerList(sqlSession,m);
	}
	
	
	

	@Override
	public Mission selectMissionLunchList(Mission m) {
		return md.selectMissionLunchList(sqlSession,m);
	}

	@Override
	public Mission selectMissionDinnerList(Mission m) {
		return md.sselectMissionDinnerList(sqlSession,m);
	}
	
	
	//미션 수정 전, 아침식단 조회
	@Override
	public Mission selectBreakEx(Mission m) {
		return md.selectBreakEx(sqlSession,m);
	}

	
	@Override 
	public Mission selectLunchEx(Mission m) {
		return md.selectLunchEx(sqlSession,m); 
	}

	@Override
	public Mission selectDinnerEx(Mission m) {
		return md.selectDinnerEx(sqlSession,m); 
	}
	 
	@Override
	public int updateBreakExLink(Mission m) {
		System.out.println("Service m: "  + m);
		return md.updateBreakExLink(sqlSession,m);
	}

	@Override
	public int updateLunchExLink(Mission m) {
		return md.updateLunchExLink(sqlSession,m);
	}

	@Override
	public int updateBreakEat(Mission m) {
		return md.updateBreakEat(sqlSession,m);

	}

	@Override
	public int updateLunchEat(Mission m) {
		return md.updateLunchEat(sqlSession,m);
	}

	@Override
	public int updateDinnerEat(Mission m) {
		return md.updateDinnerEat(sqlSession,m);
	}

	@Override
	public int updateBreakEx(Mission m) {
		return md.updateBreakEx(sqlSession,m);
	}

	@Override
	public int updateLunchEx(Mission m) {
		return md.updateLunchEx(sqlSession,m);
	}

	@Override
	public int updateDinnerEx(Mission m) {
		return md.updateDinnerEx(sqlSession,m);
	}
	
	
	
	//사용자 아침 식단 체크
	@Override
	public int insertCheckBreak(Mission m) {
		return md.insertCheckBreak(sqlSession,m);
	}

	@Override
	public int insertCheckLunch(Mission m) {
		return md.insertCheckLunch(sqlSession,m);
	}

	@Override
	public int insertCheckDinner(Mission m) {
		return md.insertCheckDinner(sqlSession,m);
	}

	@Override
	public int insertCheckBreakEx(Mission m) {
		return md.insertCheckBreakEx(sqlSession,m);
	}

	@Override
	public int insertCheckLunchEx(Mission m) {
		return md.insertCheckLunchEx(sqlSession,m);
	}

	@Override
	public int insertCheckDinnerEx(Mission m) {
		return md.insertCheckDinnerEx(sqlSession,m);
	}

	@Override
	public List<Mission> selectMissionResult(Mission m) {
		
		
		
		return md.selectMissionResult(sqlSession,m);
	}

	
	//해당하는 uno의 모든 캘린더 내용 조회
	@Override
	public List<Mission> selectAllCalendar(int mno) {
		System.out.println("캘린더 서블릿 mno: " + mno);
		return md.selectAllCalendar(sqlSession,mno);
	}

	@Override
	public List<Mission> selectAllExCalender(int mno) {
		return md.selectAllExCalender(sqlSession,mno);
	}

	

	
	
	
	

}
