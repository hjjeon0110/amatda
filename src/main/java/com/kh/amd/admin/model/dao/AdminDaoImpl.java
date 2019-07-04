package com.kh.amd.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.amd.trainer.model.vo.Payment;

@Repository
public class AdminDaoImpl implements AdminDao{

	//결제 내역 리스트
	@Override
	public List<Payment> paymentList(SqlSessionTemplate sqlSession) {
		return sqlSession.selectList("Admin.paymentList");
	}

}
