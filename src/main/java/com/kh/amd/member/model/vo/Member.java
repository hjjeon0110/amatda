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
	private int emailYn;  //이메일 인증여부
	private Date enrollDate;
	private Date modifyDate;
	
	
	public Member() {}


	
	
	
	public Member(int mno, String name, String userId, String userPwd, String phone, String gender, String email, String mtype,
			String status, int matchTime, int emailYn, Date enrollDate, Date modifyDate) {
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


	public int getEmailYn() {
		return emailYn;
	}


	public void setEmailYn(int emailYn) {
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





	@Override
	public String toString() {
		return "Member [mno=" + mno + ", name=" + name + ", userId=" + userId + ", userPwd=" + userPwd + ", phone=" + phone
				+ ", gender=" + gender + ", email=" + email + ", mtype=" + mtype + ", status=" + status + ", matchTime="
				+ matchTime + ", emailYn=" + emailYn + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate
				+ "]";
	}
	
	
}
