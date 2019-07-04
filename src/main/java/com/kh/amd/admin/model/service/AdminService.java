package com.kh.amd.admin.model.service;

import java.util.List;

import com.kh.amd.trainer.model.vo.Payment;

public interface AdminService {

	//결제 내역 리스트
	List<Payment> paymentList();

}
