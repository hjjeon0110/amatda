package com.kh.amd.schedule.model.service;

import java.util.HashMap;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.schedule.model.dao.ScheduleDao;

@Service
public class ScheduleServiceImpl implements ScheduleService{

	@Autowired
	SqlSessionTemplate sqlSession;
	
	/*
	 * @Autowired ScheduleDao sd;
	 */

	//트레이너가 미션 등록
	/*
	 * @Override public int insertMission(HashMap<String, Object> map) { return
	 * sd.insertMission(sqlSession, map); }
	 */
	
	
	

}
