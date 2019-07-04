package com.kh.amd.admin.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.amd.trainer.model.vo.Payment;

public interface AdminDao {

	//결제 내역 리스트
	List<Payment> paymentList(SqlSessionTemplate sqlSession);

}
