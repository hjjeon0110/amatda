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
		System.out.println(m);
		 return sqlSession.selectOne("Mission.selectMission",m);
	}

}
