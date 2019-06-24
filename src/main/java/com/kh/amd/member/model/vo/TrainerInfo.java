package com.kh.amd.member.model.vo;

public class TrainerInfo implements java.io.Serializable{
	private int tno;
	private String accountName;
	private String bankCode;
	private String accountNo;
	private String tage;
	private String topen;
	private int remainNum;
	
	public TrainerInfo() {}

	public TrainerInfo(int tno, String accountName, String bankCode, String accountNo, String tage, String topen,
			int remainNum) {
		super();
		this.tno = tno;
		this.accountName = accountName;
		this.bankCode = bankCode;
		this.accountNo = accountNo;
		this.tage = tage;
		this.topen = topen;
		this.remainNum = remainNum;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	public String getTage() {
		return tage;
	}

	public void setTage(String tage) {
		this.tage = tage;
	}

	public String getTopen() {
		return topen;
	}

	public void setTopen(String topen) {
		this.topen = topen;
	}

	public int getRemainNum() {
		return remainNum;
	}

	public void setRemainNum(int remainNum) {
		this.remainNum = remainNum;
	}

	@Override
	public String toString() {
		return "TrainerInfo [tno=" + tno + ", accountName=" + accountName + ", bankCode=" + bankCode + ", accountNo="
				+ accountNo + ", tage=" + tage + ", topen=" + topen + ", remainNum=" + remainNum + "]";
	}
	
	
}
