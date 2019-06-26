package com.kh.amd.board.model.vo;

import java.sql.Date;

import com.kh.amd.member.model.vo.Member;

public class Declaration implements java.io.Serializable{

	private int decl_no;
	private String decl_category;
	private String decl_classification;
	private int writer;
	private String target;
	private String decl_title;
	private String decl_content;
	private Date write_date;
	private String status;
	
	private Member member;
	
	public Declaration() {}

	public int getDecl_no() {
		return decl_no;
	}

	public void setDecl_no(int decl_no) {
		this.decl_no = decl_no;
	}

	public String getDecl_category() {
		return decl_category;
	}

	public void setDecl_category(String decl_category) {
		this.decl_category = decl_category;
	}

	public String getDecl_classification() {
		return decl_classification;
	}

	public void setDecl_classification(String decl_classification) {
		this.decl_classification = decl_classification;
	}

	public int getWriter() {
		return writer;
	}

	public void setWriter(int writer) {
		this.writer = writer;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getDecl_title() {
		return decl_title;
	}

	public void setDecl_title(String decl_title) {
		this.decl_title = decl_title;
	}

	public String getDecl_content() {
		return decl_content;
	}

	public void setDecl_content(String decl_content) {
		this.decl_content = decl_content;
	}

	public Date getWrite_date() {
		return write_date;
	}

	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}

	public Declaration(int decl_no, String decl_category, String decl_classification, int writer, String target,
			String decl_title, String decl_content, Date write_date, String status, Member member) {
		super();
		this.decl_no = decl_no;
		this.decl_category = decl_category;
		this.decl_classification = decl_classification;
		this.writer = writer;
		this.target = target;
		this.decl_title = decl_title;
		this.decl_content = decl_content;
		this.write_date = write_date;
		this.status = status;
		this.member = member;
	}

	@Override
	public String toString() {
		return "Declaration [decl_no=" + decl_no + ", decl_category=" + decl_category + ", decl_classification="
				+ decl_classification + ", writer=" + writer + ", target=" + target + ", decl_title=" + decl_title
				+ ", decl_content=" + decl_content + ", write_date=" + write_date + ", status=" + status + ", member="
				+ member + "]";
	}

	
	
	
	
}
