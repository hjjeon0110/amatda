package com.kh.amd.matching.model.vo;

import java.util.Date;

import com.kh.amd.trainer.model.vo.Estimate;

public class Mprocess implements java.io.Serializable {
	//estNo삭제, sendUser, receiveUser로 이름 변경 (김진환)
	private int processNo;
	private int uno;
	private int tno;
	private int matchingLevel;
	private String transferStatus;
	private String matchingAccept;
	private String matchingStatus;
	private Date processDate;
	
	//매칭견적서 컬랙션 추가(김진환)
	private Estimate matchEstimate;
	
	public Mprocess() {}

	public Mprocess(int processNo, int uno, int tno, int matchingLevel, String transferStatus, String matchingAccept,
			String matchingStatus, Date processDate, Estimate matchEstimate) {
		super();
		this.processNo = processNo;
		this.uno = uno;
		this.tno = tno;
		this.matchingLevel = matchingLevel;
		this.transferStatus = transferStatus;
		this.matchingAccept = matchingAccept;
		this.matchingStatus = matchingStatus;
		this.processDate = processDate;
		this.matchEstimate = matchEstimate;
	}

	public int getProcessNo() {
		return processNo;
	}

	public int getUno() {
		return uno;
	}

	public int getTno() {
		return tno;
	}

	public int getMatchingLevel() {
		return matchingLevel;
	}

	public String getTransferStatus() {
		return transferStatus;
	}

	public String getMatchingAccept() {
		return matchingAccept;
	}

	public String getMatchingStatus() {
		return matchingStatus;
	}

	public Date getProcessDate() {
		return processDate;
	}

	public Estimate getMatchEstimate() {
		return matchEstimate;
	}

	public void setProcessNo(int processNo) {
		this.processNo = processNo;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public void setMatchingLevel(int matchingLevel) {
		this.matchingLevel = matchingLevel;
	}

	public void setTransferStatus(String transferStatus) {
		this.transferStatus = transferStatus;
	}

	public void setMatchingAccept(String matchingAccept) {
		this.matchingAccept = matchingAccept;
	}

	public void setMatchingStatus(String matchingStatus) {
		this.matchingStatus = matchingStatus;
	}

	public void setProcessDate(Date processDate) {
		this.processDate = processDate;
	}

	public void setMatchEstimate(Estimate matchEstimate) {
		this.matchEstimate = matchEstimate;
	}

	@Override
	public String toString() {
		return "Mprocess [processNo=" + processNo + ", uno=" + uno + ", tno=" + tno + ", matchingLevel=" + matchingLevel
				+ ", transferStatus=" + transferStatus + ", matchingAccept=" + matchingAccept + ", matchingStatus="
				+ matchingStatus + ", processDate=" + processDate + ", matchEstimate=" + matchEstimate + "]";
	}

	
	
	
}
