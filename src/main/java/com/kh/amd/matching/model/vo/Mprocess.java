package com.kh.amd.matching.model.vo;

import java.util.Date;

import com.kh.amd.trainer.model.vo.Estimate;

public class Mprocess implements java.io.Serializable {
	//estNo삭제, sendUser, receiveUser로 이름 변경 (김진환)
	private int processNo;
	private int sendUser;
	private int receiveUser;
	private int matchingLevel;
	private String matchingAccept;
	private String matchingStatus;
	private Date processDate;
	
	//매칭견적서 컬랙션 추가(김진환)
	private Estimate matchEstimate;
	
	public Mprocess() {}

	public int getProcessNo() {
		return processNo;
	}

	public void setProcessNo(int processNo) {
		this.processNo = processNo;
	}

	public int getSendUser() {
		return sendUser;
	}

	public void setSendUser(int sendUser) {
		this.sendUser = sendUser;
	}

	public int getReceiveUser() {
		return receiveUser;
	}

	public void setReceiveUser(int receiveUser) {
		this.receiveUser = receiveUser;
	}

	public int getMatchingLevel() {
		return matchingLevel;
	}

	public void setMatchingLevel(int matchingLevel) {
		this.matchingLevel = matchingLevel;
	}

	public String getMatchingAccept() {
		return matchingAccept;
	}

	public void setMatchingAccept(String matchingAccept) {
		this.matchingAccept = matchingAccept;
	}

	public String getMatchingStatus() {
		return matchingStatus;
	}

	public void setMatchingStatus(String matchingStatus) {
		this.matchingStatus = matchingStatus;
	}

	public Date getProcessDate() {
		return processDate;
	}

	public void setProcessDate(Date processDate) {
		this.processDate = processDate;
	}

	public Estimate getMatchEstimate() {
		return matchEstimate;
	}

	public void setMatchEstimate(Estimate matchEstimate) {
		this.matchEstimate = matchEstimate;
	}

	public Mprocess(int processNo, int sendUser, int receiveUser, int matchingLevel, String matchingAccept,
			String matchingStatus, Date processDate, Estimate matchEstimate) {
		super();
		this.processNo = processNo;
		this.sendUser = sendUser;
		this.receiveUser = receiveUser;
		this.matchingLevel = matchingLevel;
		this.matchingAccept = matchingAccept;
		this.matchingStatus = matchingStatus;
		this.processDate = processDate;
		this.matchEstimate = matchEstimate;
	}

	@Override
	public String toString() {
		return "Mprocess [processNo=" + processNo + ", sendUser=" + sendUser + ", receiveUser=" + receiveUser
				+ ", matchingLevel=" + matchingLevel + ", matchingAccept=" + matchingAccept + ", matchingStatus="
				+ matchingStatus + ", processDate=" + processDate + ", matchEstimate=" + matchEstimate + "]";
	}

	
	
	
	
}
