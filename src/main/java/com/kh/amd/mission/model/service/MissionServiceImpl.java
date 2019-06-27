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

	//해당날짜의 미션 자동 조회
	/*
	 * @Override public List<Object> selectMission(String today) {
	 * 
	 * }
	 */

	@Override
	public Mission selectMission(Mission m) {
		return md.selectMission(sqlSession,m);
	}
	

}
