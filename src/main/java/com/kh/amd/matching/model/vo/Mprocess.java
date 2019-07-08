package com.kh.amd.matching.model.vo;

import java.util.Date;

public class Mprocess implements java.io.Serializable {
	private int processNo;
	private int estNo;
	private int uno;
	private int tno;
	private int matchingLevel;
	private String matchingAccept;
	private String matchingStatus;
	private Date processDate;
	
	public Mprocess() {}

	public Mprocess(int processNo, int estNo, int uno, int tno, int matchingLevel, String matchingAccept,
			String matchingStatus, Date processDate) {
		super();
		this.processNo = processNo;
		this.estNo = estNo;
		this.uno = uno;
		this.tno = tno;
		this.matchingLevel = matchingLevel;
		this.matchingAccept = matchingAccept;
		this.matchingStatus = matchingStatus;
		this.processDate = processDate;
	}

	public int getProcessNo() {
		return processNo;
	}

	public int getEstNo() {
		return estNo;
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

	public String getMatchingAccept() {
		return matchingAccept;
	}

	public String getMatchingStatus() {
		return matchingStatus;
	}

	public Date getProcessDate() {
		return processDate;
	}

	public void setProcessNo(int processNo) {
		this.processNo = processNo;
	}

	public void setEstNo(int estNo) {
		this.estNo = estNo;
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

	public void setMatchingAccept(String matchingAccept) {
		this.matchingAccept = matchingAccept;
	}

	public void setMatchingStatus(String matchingStatus) {
		this.matchingStatus = matchingStatus;
	}

	public void setProcessDate(Date processDate) {
		this.processDate = processDate;
	}

	@Override
	public String toString() {
		return "Mprocess [processNo=" + processNo + ", estNo=" + estNo + ", uno=" + uno + ", tno=" + tno
				+ ", matchingLevel=" + matchingLevel + ", matchingAccept=" + matchingAccept + ", matchingStatus="
				+ matchingStatus + ", processDate=" + processDate + "]";
	}
	
	
}
