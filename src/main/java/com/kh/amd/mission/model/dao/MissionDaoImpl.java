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
	public Mission selectMissionList(SqlSessionTemplate sqlSession, String mDate0) {
		System.out.println("Dao에서 mDate0: " + mDate0);
		return sqlSession.selectOne("Mission.selectMissionList",mDate0);
	}

	@Override
	public Mission selectMissionExList(SqlSessionTemplate sqlSession, String mDate0) {
		return sqlSession.selectOne("Mission.selectMissionExList",mDate0);
	}

	@Override
	public Mission selectMissionExLunchList(SqlSessionTemplate sqlSession, String mDate0) {
		return sqlSession.selectOne("Mission.selectMissionExLunchList",mDate0);
	}

	@Override
	public Mission selectMissionExDinnerList(SqlSessionTemplate sqlSession, String mDate0) {
		return sqlSession.selectOne("Mission.selectMissionExDinnerList",mDate0);
	}

	@Override
	public int updateBreakExLink(SqlSessionTemplate sqlSession, Mission m) {
		System.out.println("Dao m: "  + m);
		return sqlSession.update("Mission.updateBreakExLink",m);
	}

	@Override
	public Mission selectMissionLunchList(SqlSessionTemplate sqlSession, String mDate0) {
		return sqlSession.selectOne("Mission.selectMissionLunchList",mDate0);
	}

	@Override
	public Mission sselectMissionDinnerList(SqlSessionTemplate sqlSession, String mDate0) {
		return sqlSession.selectOne("Mission.selectMissionDinnerList",mDate0);
	}

	@Override
	public Mission selectBreakEx(SqlSessionTemplate sqlSession, String mDate0) {
		return sqlSession.selectOne("Mission.selectBreakEx",mDate0);
	}

	/*
	 * @Override public Mission selectLunchEx(SqlSessionTemplate sqlSession, String
	 * mDate0) { return sqlSession.selectOne("Mission.selectLunchEx",mDate0); }
	 */

	/*
	 * @Override public Mission selectLunchEx(SqlSessionTemplate sqlSession, Mission
	 * m) { return sqlSession.selectOne("Mission.selectLunchEx",m); }
	 */

	

}
