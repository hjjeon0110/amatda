package com.kh.amd.diary.model.vo;

import java.util.Date;

import com.kh.amd.member.model.vo.Member;

public class Diary implements java.io.Serializable{
	
	private int bNo;
	private int bType;
	private String blCategory;
	private String bmCategory;
	private String bsCategory;
	private Date bWriteDate;
	private Date bModifyDate;
	private String bTitle;
	private int bWriter;
	private String bContent;
	private int bCount;
	private int bLike;
	private String bStatus;
	
	private Member member;
	
	private int mno;
	public Diary() {}

	public Diary(int bNo, int bType, String blCategory, String bmCategory, String bsCategory, Date bWriteDate,
			Date bModifyDate, String bTitle, int bWriter, String bContent, int bCount, int bLike, String bStatus,
			Member member) {
		super();
		this.bNo = bNo;
		this.bType = bType;
		this.blCategory = blCategory;
		this.bmCategory = bmCategory;
		this.bsCategory = bsCategory;
		this.bWriteDate = bWriteDate;
		this.bModifyDate = bModifyDate;
		this.bTitle = bTitle;
		this.bWriter = bWriter;
		this.bContent = bContent;
		this.bCount = bCount;
		this.bLike = bLike;
		this.bStatus = bStatus;
		this.member = member;
	}

	public int getbNo() {
		return bNo;
	}

	public void setbNo(int bNo) {
		this.bNo = bNo;
	}

	public int getbType() {
		return bType;
	}

	public void setbType(int bType) {
		this.bType = bType;
	}

	public String getBlCategory() {
		return blCategory;
	}

	public void setBlCategory(String blCategory) {
		this.blCategory = blCategory;
	}

	public String getBmCategory() {
		return bmCategory;
	}

	public void setBmCategory(String bmCategory) {
		this.bmCategory = bmCategory;
	}

	public String getBsCategory() {
		return bsCategory;
	}

	public void setBsCategory(String bsCategory) {
		this.bsCategory = bsCategory;
	}

	public Date getbWriteDate() {
		return bWriteDate;
	}

	public void setbWriteDate(Date bWriteDate) {
		this.bWriteDate = bWriteDate;
	}

	public Date getbModifyDate() {
		return bModifyDate;
	}

	public void setbModifyDate(Date bModifyDate) {
		this.bModifyDate = bModifyDate;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public int getbWriter() {
		return bWriter;
	}

	public void setbWriter(int bWriter) {
		this.bWriter = bWriter;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public int getbLike() {
		return bLike;
	}

	public void setbLike(int bLike) {
		this.bLike = bLike;
	}

	public String getbStatus() {
		return bStatus;
	}

	public void setbStatus(String bStatus) {
		this.bStatus = bStatus;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	@Override
	public String toString() {
		return "Diary [bNo=" + bNo + ", bType=" + bType + ", blCategory=" + blCategory + ", bmCategory=" + bmCategory
				+ ", bsCategory=" + bsCategory + ", bWriteDate=" + bWriteDate + ", bModifyDate=" + bModifyDate
				+ ", bTitle=" + bTitle + ", bWriter=" + bWriter + ", bContent=" + bContent + ", bCount=" + bCount
				+ ", bLike=" + bLike + ", bStatus=" + bStatus + ", member=" + member + "]";
	}

	
	

}
