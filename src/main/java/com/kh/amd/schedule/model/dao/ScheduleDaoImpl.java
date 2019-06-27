package com.kh.amd.schedule.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

public class ScheduleDaoImpl implements ScheduleDao{

	//트레이너가 미션 등록
	@Override
	public int insertMission(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.insert("Scheudule.insertSchedule", map);
	}

}
