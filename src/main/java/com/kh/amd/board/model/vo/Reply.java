package com.kh.amd.board.model.vo;

import java.util.Date;

import com.kh.amd.member.model.vo.Member;

public class Reply implements java.io.Serializable{
	
	private int repNo;
	private int bNo;
	private int repWriter;
	private String repContent;
	private Date repDate;
	private Date repMdate;
	private String repStatus;
	
	private Board board;
	private Member member;
	private int mno;
	public Reply() {}
	public Reply(int repNo, int bNo, int repWriter, String repContent, Date repDate, Date repMdate, String repStatus,
			Board board, Member member, int mno) {
		super();
		this.repNo = repNo;
		this.bNo = bNo;
		this.repWriter = repWriter;
		this.repContent = repContent;
		this.repDate = repDate;
		this.repMdate = repMdate;
		this.repStatus = repStatus;
		this.board = board;
		this.member = member;
		this.mno = mno;
	}
	public int getRepNo() {
		return repNo;
	}
	public void setRepNo(int repNo) {
		this.repNo = repNo;
	}
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public int getRepWriter() {
		return repWriter;
	}
	public void setRepWriter(int repWriter) {
		this.repWriter = repWriter;
	}
	public String getRepContent() {
		return repContent;
	}
	public void setRepContent(String repContent) {
		this.repContent = repContent;
	}
	public Date getRepDate() {
		return repDate;
	}
	public void setRepDate(Date repDate) {
		this.repDate = repDate;
	}
	public Date getRepMdate() {
		return repMdate;
	}
	public void setRepMdate(Date repMdate) {
		this.repMdate = repMdate;
	}
	public String getRepStatus() {
		return repStatus;
	}
	public void setRepStatus(String repStatus) {
		this.repStatus = repStatus;
	}
	public Board getBoard() {
		return board;
	}
	public void setBoard(Board board) {
		this.board = board;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	@Override
	public String toString() {
		return "Reply [repNo=" + repNo + ", bNo=" + bNo + ", repWriter=" + repWriter + ", repContent=" + repContent
				+ ", repDate=" + repDate + ", repMdate=" + repMdate + ", repStatus=" + repStatus + ", board=" + board
				+ ", member=" + member + ", mno=" + mno + "]";
	}

	
	
}
