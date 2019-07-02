package com.kh.amd.mission.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.mission.model.vo.Mission;


@Repository
public class MissionDaoImpl implements MissionDao{

	@Override
	public int insertBreakfast(SqlSessionTemplate sqlSession, Mission mis) {
		System.out.println("Dao Break mis: " + mis);
		return sqlSession.insert("Mission.insertBreakfast",mis);
	}

	@Override
	public int insertLunch(SqlSessionTemplate sqlSession, Mission mis) {
		System.out.println("Dao Lunch mis: " + mis);
		return sqlSession.insert("Mission.insertLunch",mis);
		
	}

	@Override
	public int insertDinner(SqlSessionTemplate sqlSession, Mission mis) {
		System.out.println("Dao Dinne rmis: " + mis);
		return sqlSession.insert("Mission.insertDinner",mis);
	}

	@Override
	public int insertBreakEx(SqlSessionTemplate sqlSession, Mission mis) {
		System.out.println("Dao BreakEx mis: " + mis);
		return sqlSession.insert("Mission.insertBreakEx",mis);
	}

	@Override
	public int insertLunchEx(SqlSessionTemplate sqlSession, Mission mis) {
		return sqlSession.insert("Mission.insertLunchEx",mis);
	}

	@Override
	public int insertDinnerEx(SqlSessionTemplate sqlSession, Mission mis) {
		return sqlSession.insert("Mission.insertDinnerEx",mis);
	}

	/*
	 * @Override public List<Object> selectMission(SqlSessionTemplate sqlSession,
	 * String today) { return sqlSession.selectList("Mission.selectMission",today);
	 * }
	 */

	@Override
	public Mission selectMission(SqlSessionTemplate sqlSession, Mission m) {
		 System.out.println("dao breakMission: "+m);
		 return sqlSession.selectOne("Mission.selectMission",m);
	}

	@Override
	public Mission selectLunchMission(SqlSessionTemplate sqlSession, Mission m) {
		 System.out.println("dao lunchMission: "+m);
		 return sqlSession.selectOne("Mission.selectLunctMission",m);
	}

	@Override
	public Mission selectDinnerMission(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectDinnerMission",m);
	}

	@Override
	public Mission selectEatBreakMission(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectEatBreakMission",m);
	}

	@Override
	public Mission selectEatLunchkMission(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectEatLunchMission",m);
	}

	@Override
	public Mission selectEatDinnerkMission(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectEatDinnerMission",m);
	}

	@Override
	public Mission selectMissionList(SqlSessionTemplate sqlSession, Mission m) {
		System.out.println("Dao에서 mDate0: " + m);
		return sqlSession.selectOne("Mission.selectMissionList",m);
	}

	@Override
	public Mission selectMissionExList(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectMissionExList",m);
	}

	@Override
	public Mission selectMissionExLunchList(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectMissionExLunchList",m);
	}

	@Override
	public Mission selectMissionExDinnerList(SqlSessionTemplate sqlSession,Mission m) {
		return sqlSession.selectOne("Mission.selectMissionExDinnerList",m);
	}


	@Override
	public Mission selectMissionLunchList(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectMissionLunchList",m);
	}

	@Override
	public Mission sselectMissionDinnerList(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectMissionDinnerList",m);
	}

	@Override
	public Mission selectBreakEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectBreakEx",m);
	}

	
	
	@Override 
	public Mission selectLunchEx(SqlSessionTemplate sqlSession, Mission m) { 
		return sqlSession.selectOne("Mission.selectLunchEx",m); 
	}

	@Override
	public Mission selectDinnerEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectOne("Mission.selectDinnerEx",m); 
	}
	
	
	
	//운동링크 수정
	
	
	@Override
	public int updateBreakExLink(SqlSessionTemplate sqlSession, Mission m) {
		System.out.println("Dao m: "  + m);
		return sqlSession.update("Mission.updateBreakExLink",m);
	}

	@Override
	public int updateLunchExLink(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateLunchExLink",m);
	}

	@Override
	public int updateBreakEat(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateBreakEat",m);
	}

	@Override
	public int updateLunchEat(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateLunchEat",m);
	}

	@Override
	public int updateDinnerEat(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateDinnerEat",m);
	}

	@Override
	public int updateBreakEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateBreakEx",m);
	}

	@Override
	public int updateLunchEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateLunchEx",m);
	}

	@Override
	public int updateDinnerEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateDinnerEx",m);
	}

	@Override
	public int insertCheckBreak(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateCheckBreak",m);
	}

	@Override
	public int insertCheckLunch(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateCheckLunch",m);
	}

	@Override
	public int insertCheckDinner(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateCheckDinner",m);
	}

	@Override
	public int insertCheckBreakEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateCheckBreakEx",m);
	}

	@Override
	public int insertCheckLunchEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateCheckLunchEx",m);
	}

	@Override
	public int insertCheckDinnerEx(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.update("Mission.updateCheckDinnerEx",m);
	}

	@Override
	public List<Mission> selectMissionResult(SqlSessionTemplate sqlSession, Mission m) {
		return sqlSession.selectList("Mission.selectMissionResult",m);
	}
	 

	

}
