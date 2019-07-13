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
	
	//DB에서받아와서 견적서 내용을 보여주기 위한 필드 선언(김진환)
	private String matchEstName;
	private int matchEstDay;
	private String matchEstContents;
	private String matchEstPrice;
	
	//매칭견적서 컬랙션 추가(김진환)
	private Estimate matchEstimate;
	
	public Mprocess() {}

	public Mprocess(int processNo, int uno, int tno, int matchingLevel, String transferStatus, String matchingAccept,
			String matchingStatus, Date processDate, String matchEstName, int matchEstDay, String matchEstContents,
			String matchEstPrice, Estimate matchEstimate) {
		super();
		this.processNo = processNo;
		this.uno = uno;
		this.tno = tno;
		this.matchingLevel = matchingLevel;
		this.transferStatus = transferStatus;
		this.matchingAccept = matchingAccept;
		this.matchingStatus = matchingStatus;
		this.processDate = processDate;
		this.matchEstName = matchEstName;
		this.matchEstDay = matchEstDay;
		this.matchEstContents = matchEstContents;
		this.matchEstPrice = matchEstPrice;
		this.matchEstimate = matchEstimate;
	}

	public int getProcessNo() {
		return processNo;
	}

	public void setProcessNo(int processNo) {
		this.processNo = processNo;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public int getMatchingLevel() {
		return matchingLevel;
	}

	public void setMatchingLevel(int matchingLevel) {
		this.matchingLevel = matchingLevel;
	}

	public String getTransferStatus() {
		return transferStatus;
	}

	public void setTransferStatus(String transferStatus) {
		this.transferStatus = transferStatus;
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

	public String getMatchEstName() {
		return matchEstName;
	}

	public void setMatchEstName(String matchEstName) {
		this.matchEstName = matchEstName;
	}

	public int getMatchEstDay() {
		return matchEstDay;
	}

	public void setMatchEstDay(int matchEstDay) {
		this.matchEstDay = matchEstDay;
	}

	public String getMatchEstContents() {
		return matchEstContents;
	}

	public void setMatchEstContents(String matchEstContents) {
		this.matchEstContents = matchEstContents;
	}

	public String getMatchEstPrice() {
		return matchEstPrice;
	}

	public void setMatchEstPrice(String matchEstPrice) {
		this.matchEstPrice = matchEstPrice;
	}

	public Estimate getMatchEstimate() {
		return matchEstimate;
	}

	public void setMatchEstimate(Estimate matchEstimate) {
		this.matchEstimate = matchEstimate;
	}

	@Override
	public String toString() {
		return "Mprocess [processNo=" + processNo + ", uno=" + uno + ", tno=" + tno + ", matchingLevel=" + matchingLevel
				+ ", transferStatus=" + transferStatus + ", matchingAccept=" + matchingAccept + ", matchingStatus="
				+ matchingStatus + ", processDate=" + processDate + ", matchEstName=" + matchEstName + ", matchEstDay="
				+ matchEstDay + ", matchEstContents=" + matchEstContents + ", matchEstPrice=" + matchEstPrice
				+ ", matchEstimate=" + matchEstimate + "]";
	}
	

	
	
	
	
}
