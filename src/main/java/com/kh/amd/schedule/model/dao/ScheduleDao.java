package com.kh.amd.schedule.model.dao;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;

public interface ScheduleDao {

	int insertMission(SqlSessionTemplate sqlSession, HashMap<String, Object> map);

}
