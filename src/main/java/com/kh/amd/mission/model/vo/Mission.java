package com.kh.amd.mission.model.vo;

public class Mission {
	
	private int mtrainerNo;
	private int schNo;
	private int tno;
	private String mcontent;
	private String register;
	
	public Mission() {}

	public Mission(int mtrainerNo, int schNo, int tno, String mcontent, String register) {
		super();
		this.mtrainerNo = mtrainerNo;
		this.schNo = schNo;
		this.tno = tno;
		this.mcontent = mcontent;
		this.register = register;
	}

	public int getMtrainerNo() {
		return mtrainerNo;
	}

	public void setMtrainerNo(int mtrainerNo) {
		this.mtrainerNo = mtrainerNo;
	}

	public int getSchNo() {
		return schNo;
	}

	public void setSchNo(int schNo) {
		this.schNo = schNo;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getMcontent() {
		return mcontent;
	}

	public void setMcontent(String mcontent) {
		this.mcontent = mcontent;
	}

	public String getRegister() {
		return register;
	}

	public void setRegister(String register) {
		this.register = register;
	}

	@Override
	public String toString() {
		return "Mission [mtrainerNo=" + mtrainerNo + ", schNo=" + schNo + ", tno=" + tno + ", mcontent=" + mcontent
				+ ", register=" + register + "]";
	}
	
	

}
