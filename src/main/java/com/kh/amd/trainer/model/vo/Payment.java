package com.kh.amd.trainer.model.vo;

import java.sql.Date;

public class Payment implements java.io.Serializable{
	private int payNo;
	private int membershipNo;
	private int tno;
	private String process;
	private String payType;
	private Date payDate;
	private String refundReason;
	private String membershipType;
	private int membershipPrice;
	private int membershipCount;
	
	public Payment () {}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public int getMembershipNo() {
		return membershipNo;
	}

	public void setMembershipNo(int membershipNo) {
		this.membershipNo = membershipNo;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}

	public Date getPayDate() {
		return payDate;
	}

	public void setPayDate(Date payDate) {
		this.payDate = payDate;
	}

	public String getRefundReason() {
		return refundReason;
	}

	public void setRefundReason(String refundReason) {
		this.refundReason = refundReason;
	}

	public String getMembershipType() {
		return membershipType;
	}

	public void setMembershipType(String membershipType) {
		this.membershipType = membershipType;
	}

	public int getMembershipPrice() {
		return membershipPrice;
	}

	public void setMembershipPrice(int membershipPrice) {
		this.membershipPrice = membershipPrice;
	}

	public int getMembershipCount() {
		return membershipCount;
	}

	public void setMembershipCount(int membershipCount) {
		this.membershipCount = membershipCount;
	}

	public Payment(int payNo, int membershipNo, int tno, String process, String payType, Date payDate,
			String refundReason, String membershipType, int membershipPrice, int membershipCount) {
		super();
		this.payNo = payNo;
		this.membershipNo = membershipNo;
		this.tno = tno;
		this.process = process;
		this.payType = payType;
		this.payDate = payDate;
		this.refundReason = refundReason;
		this.membershipType = membershipType;
		this.membershipPrice = membershipPrice;
		this.membershipCount = membershipCount;
	}

	@Override
	public String toString() {
		return "Payment [payNo=" + payNo + ", membershipNo=" + membershipNo + ", tno=" + tno + ", process=" + process
				+ ", payType=" + payType + ", payDate=" + payDate + ", refundReason=" + refundReason
				+ ", membershipType=" + membershipType + ", membershipPrice=" + membershipPrice + ", membershipCount="
				+ membershipCount + "]";
	}
	
	
	
}
