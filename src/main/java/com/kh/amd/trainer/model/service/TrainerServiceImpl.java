package com.kh.amd.trainer.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.trainer.model.dao.TrainerDao;

@Service
public class TrainerServiceImpl implements TrainerService {

	@Autowired
	private SqlSessionTemplate sqlSession;
	@Autowired
	private TrainerDao td;
	
}
