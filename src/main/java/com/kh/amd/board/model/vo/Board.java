package com.kh.amd.board.model.vo;

import java.util.Date;

public class Board implements java.io.Serializable{
	
	public int bNo;
	public int bType;
	public String blCategory;
	public String bmCategory;
	public Date bWriteDate;
	public Date bModifyDate;
	public String bTitle;
	public String bContent;
	public int bCount;
	public int bLike;
	public String bStatus;
	public int bWriter;
	
	public Board() {}

	public Board(int bNo, int bType, String blCategory, String bmCategory, Date bWriteDate, Date bModifyDate,
			String bTitle, String bContent, int bCount, int bLike, String bStatus, int bWriter) {
		super();
		this.bNo = bNo;
		this.bType = bType;
		this.blCategory = blCategory;
		this.bmCategory = bmCategory;
		this.bWriteDate = bWriteDate;
		this.bModifyDate = bModifyDate;
		this.bTitle = bTitle;
		this.bContent = bContent;
		this.bCount = bCount;
		this.bLike = bLike;
		this.bStatus = bStatus;
		this.bWriter = bWriter;
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

	public int getbWriter() {
		return bWriter;
	}

	public void setbWriter(int bWriter) {
		this.bWriter = bWriter;
	}

	@Override
	public String toString() {
		return "Board [bNo=" + bNo + ", bType=" + bType + ", blCategory=" + blCategory + ", bmCategory=" + bmCategory
				+ ", bWriteDate=" + bWriteDate + ", bModifyDate=" + bModifyDate + ", bTitle=" + bTitle + ", bContent="
				+ bContent + ", bCount=" + bCount + ", bLike=" + bLike + ", bStatus=" + bStatus + ", bWriter=" + bWriter
				+ "]";
	}

	
	
	
	
	

}
