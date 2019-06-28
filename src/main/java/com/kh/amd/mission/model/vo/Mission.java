package com.kh.amd.mission.model.vo;

import java.sql.Date;

public class Mission implements java.io.Serializable{
	
	private int missionNo;
	private int tno;
	private int uno;
	private String mDate;
	private String mTime;
	private String mType;
	private String mContent;
	private String mLink;
	private String completeYN;
	
	public Mission() {}

	public Mission(int missionNo, int tno, int uno, String mDate, String mTime, String mType, String mContent,
			String mLink, String completeYN) {
		super();
		this.missionNo = missionNo;
		this.tno = tno;
		this.uno = uno;
		this.mDate = mDate;
		this.mTime = mTime;
		this.mType = mType;
		this.mContent = mContent;
		this.mLink = mLink;
		this.completeYN = completeYN;
	}

	public int getMissionNo() {
		return missionNo;
	}

	public void setMissionNo(int missionNo) {
		this.missionNo = missionNo;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
	}

	public String getmDate() {
		return mDate;
	}

	public void setmDate(String mDate) {
		this.mDate = mDate;
	}

	public String getmTime() {
		return mTime;
	}

	public void setmTime(String mTime) {
		this.mTime = mTime;
	}

	public String getmType() {
		return mType;
	}

	public void setmType(String mType) {
		this.mType = mType;
	}

	public String getmContent() {
		return mContent;
	}

	public void setmContent(String mContent) {
		this.mContent = mContent;
	}

	public String getmLink() {
		return mLink;
	}

	public void setmLink(String mLink) {
		this.mLink = mLink;
	}

	public String getCompleteYN() {
		return completeYN;
	}

	public void setCompleteYN(String completeYN) {
		this.completeYN = completeYN;
	}

	@Override
	public String toString() {
		return "Mission [missionNo=" + missionNo + ", tno=" + tno + ", uno=" + uno + ", mDate=" + mDate + ", mTime="
				+ mTime + ", mType=" + mType + ", mContent=" + mContent + ", mLink=" + mLink + ", completeYN="
				+ completeYN + "]";
	}
	
	
	
	
	

}
