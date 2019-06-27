package com.kh.amd.schedule.model.vo;

import java.sql.Date;

public class Schedule {
	private int scheduleNo;
	private int uno;
	private String mTime; //미션시간(아침, 점심 , 저녁)
	private String mType; //미션유형(운동,식단)
	private Date mDate;
	private String onoff;
	
	public Schedule() {}

	public Schedule(int scheduleNo, int uno, String mTime, String mType, Date mDate, String onoff) {
		super();
		this.scheduleNo = scheduleNo;
		this.uno = uno;
		this.mTime = mTime;
		this.mType = mType;
		this.mDate = mDate;
		this.onoff = onoff;
	}

	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public int getUno() {
		return uno;
	}

	public void setUno(int uno) {
		this.uno = uno;
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

	public Date getmDate() {
		return mDate;
	}

	public void setmDate(Date mDate) {
		this.mDate = mDate;
	}

	public String getOnoff() {
		return onoff;
	}

	public void setOnoff(String onoff) {
		this.onoff = onoff;
	}

	@Override
	public String toString() {
		return "Schedule [scheduleNo=" + scheduleNo + ", uno=" + uno + ", mTime=" + mTime + ", mType=" + mType
				+ ", mDate=" + mDate + ", onoff=" + onoff + "]";
	}
	
	
}
