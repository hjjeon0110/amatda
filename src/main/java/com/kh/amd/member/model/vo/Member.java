package com.kh.amd.member.model.vo;

import java.sql.Date;

public class Member implements java.io.Serializable{
	private int mno;
	private String name;
	private String userId;
	private String userPwd;
	private String phone;
	private String gender;
	private String email;
	private String mtype;
	private String status;
	private int matchTime;
	private String emailYn;  //이메일 인증여부
	private Date enrollDate;
	private Date modifyDate;
	private String completeSurvey;
	
	private int tno;
	private String accountName;
	private String bankCode;
	private String accountNo;
	private String tage;
	private String topen;
	private int remainNum;
	
	public Member() {}

	public Member(int mno, String name, String userId, String userPwd, String phone, String gender, String email,
			String mtype, String status, int matchTime, String emailYn, Date enrollDate, Date modifyDate,
			String completeSurvey, int tno, String accountName, String bankCode, String accountNo, String tage,
			String topen, int remainNum) {
		super();
		this.mno = mno;
		this.name = name;
		this.userId = userId;
		this.userPwd = userPwd;
		this.phone = phone;
		this.gender = gender;
		this.email = email;
		this.mtype = mtype;
		this.status = status;
		this.matchTime = matchTime;
		this.emailYn = emailYn;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.completeSurvey = completeSurvey;
		this.tno = tno;
		this.accountName = accountName;
		this.bankCode = bankCode;
		this.accountNo = accountNo;
		this.tage = tage;
		this.topen = topen;
		this.remainNum = remainNum;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMtype() {
		return mtype;
	}

	public void setMtype(String mtype) {
		this.mtype = mtype;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getMatchTime() {
		return matchTime;
	}

	public void setMatchTime(int matchTime) {
		this.matchTime = matchTime;
	}

	public String getEmailYn() {
		return emailYn;
	}

	public void setEmailYn(String emailYn) {
		this.emailYn = emailYn;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getCompleteSurvey() {
		return completeSurvey;
	}

	public void setCompleteSurvey(String completeSurvey) {
		this.completeSurvey = completeSurvey;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getTage() {
		return tage;
	}

	public void setTage(String tage) {
		this.tage = tage;
	}

	public String getTopen() {
		return topen;
	}

	public void setTopen(String topen) {
		this.topen = topen;
	}

	public int getRemainNum() {
		return remainNum;
	}

	public void setRemainNum(int remainNum) {
		this.remainNum = remainNum;
	}

	@Override
	public String toString() {
		return "Member [mno=" + mno + ", name=" + name + ", userId=" + userId + ", userPwd=" + userPwd + ", phone="
				+ phone + ", gender=" + gender + ", email=" + email + ", mtype=" + mtype + ", status=" + status
				+ ", matchTime=" + matchTime + ", emailYn=" + emailYn + ", enrollDate=" + enrollDate + ", modifyDate="
				+ modifyDate + ", completeSurvey=" + completeSurvey + ", tno=" + tno + ", accountName=" + accountName
				+ ", bankCode=" + bankCode + ", accountNo=" + accountNo + ", tage=" + tage + ", topen=" + topen
				+ ", remainNum=" + remainNum + "]";
	}

	
	
	
	
	
}
