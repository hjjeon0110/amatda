package com.kh.amd.trainer.model.vo;

import java.sql.Date;

import com.kh.amd.attachment.model.vo.Attachment;

public class TrainerReview implements java.io.Serializable{
	private int trno;
	private int tno;
	private int writer;
	private Date writeDate;
	private Date modiDate;
	private String content;
	private String starPoint;
	private double reviewRating;
	private String title;
	private int reviewLevel;
	private String name;
	
	
	
	private Attachment attachment;
	
	
	public TrainerReview() {}


	public int getTrno() {
		return trno;
	}


	public void setTrno(int trno) {
		this.trno = trno;
	}


	public int getTno() {
		return tno;
	}


	public void setTno(int tno) {
		this.tno = tno;
	}


	public int getWriter() {
		return writer;
	}


	public void setWriter(int writer) {
		this.writer = writer;
	}


	public Date getWriteDate() {
		return writeDate;
	}


	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}


	public Date getModiDate() {
		return modiDate;
	}


	public void setModiDate(Date modiDate) {
		this.modiDate = modiDate;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getStarPoint() {
		return starPoint;
	}


	public void setStarPoint(String starPoint) {
		this.starPoint = starPoint;
	}


	public double getReviewRating() {
		return reviewRating;
	}


	public void setReviewRating(double reviewRating) {
		this.reviewRating = reviewRating;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public int getReviewLevel() {
		return reviewLevel;
	}


	public void setReviewLevel(int reviewLevel) {
		this.reviewLevel = reviewLevel;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Attachment getAttachment() {
		return attachment;
	}


	public void setAttachment(Attachment attachment) {
		this.attachment = attachment;
	}


	public TrainerReview(int trno, int tno, int writer, Date writeDate, Date modiDate, String content, String starPoint,
			double reviewRating, String title, int reviewLevel, String name, Attachment attachment) {
		super();
		this.trno = trno;
		this.tno = tno;
		this.writer = writer;
		this.writeDate = writeDate;
		this.modiDate = modiDate;
		this.content = content;
		this.starPoint = starPoint;
		this.reviewRating = reviewRating;
		this.title = title;
		this.reviewLevel = reviewLevel;
		this.name = name;
		this.attachment = attachment;
	}


	@Override
	public String toString() {
		return "TrainerReview [trno=" + trno + ", tno=" + tno + ", writer=" + writer + ", writeDate=" + writeDate
				+ ", modiDate=" + modiDate + ", content=" + content + ", starPoint=" + starPoint + ", reviewRating="
				+ reviewRating + ", title=" + title + ", reviewLevel=" + reviewLevel + ", name=" + name
				+ ", attachment=" + attachment + "]";
	}

	

	
	
	

}
