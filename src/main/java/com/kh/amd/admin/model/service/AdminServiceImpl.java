package com.kh.amd.admin.model.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.amd.admin.model.dao.AdminDao;
import com.kh.amd.trainer.model.vo.Payment;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	AdminDao ad;
	

	//결제 내역 리스트
	@Override
	public List<Payment> paymentList() {
		return ad.paymentList(sqlSession); 
	}

}
