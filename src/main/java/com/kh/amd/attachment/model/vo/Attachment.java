package com.kh.amd.attachment.model.vo;

import java.sql.Date;

public class Attachment implements java.io.Serializable {
	
	private int fileNo; // 파일번호
	private int bno; // 글번호
	private int pno; // 프로필 번호
	private String link; // 링크
	private String oriName; // 원본파일명
	private String modiName; // 수정파일명
	private int fileLevel; // 파일레벨 (썸네일, 나머지)
	private Date uploadDate; // 등록일자
	private int aType; // 파일타입 (미디어, 자격증)
	private String aStatus; // 파일상태 
	private String filePath; // 파일경로
	
	public Attachment() {}
	
	public Attachment(int fileNo, int bno, int pno, String link, String oriName, String modiName, int fileLevel,
			Date uploadDate, int aType, String aStatus, String filePath) {
		super();
		this.fileNo = fileNo;
		this.bno = bno;
		this.pno = pno;
		this.link = link;
		this.oriName = oriName;
		this.modiName = modiName;
		this.fileLevel = fileLevel;
		this.uploadDate = uploadDate;
		this.aType = aType;
		this.aStatus = aStatus;
		this.filePath = filePath;
	}

	public int getFileNo() {
		return fileNo;
	}

	public int getBno() {
		return bno;
	}

	public int getPno() {
		return pno;
	}

	public String getLink() {
		return link;
	}

	public String getOriName() {
		return oriName;
	}

	public String getModiName() {
		return modiName;
	}

	public int getFileLevel() {
		return fileLevel;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public int getaType() {
		return aType;
	}

	public String getaStatus() {
		return aStatus;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public void setPno(int pno) {
		this.pno = pno;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public void setOriName(String oriName) {
		this.oriName = oriName;
	}

	public void setModiName(String modiName) {
		this.modiName = modiName;
	}

	public void setFileLevel(int fileLevel) {
		this.fileLevel = fileLevel;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}

	public void setaType(int aType) {
		this.aType = aType;
	}

	public void setaStatus(String aStatus) {
		this.aStatus = aStatus;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	@Override
	public String toString() {
		return "Attachment [fileNo=" + fileNo + ", bno=" + bno + ", pno=" + pno + ", link=" + link + ", oriName="
				+ oriName + ", modiName=" + modiName + ", fileLevel=" + fileLevel + ", uploadDate=" + uploadDate
				+ ", aType=" + aType + ", aStatus=" + aStatus + ", filePath=" + filePath + "]";
	}
	
	

}
