package com.kh.amd.trainer.model.vo;

public class Estimate implements java.io.Serializable{
	private int estNo; //견적서 번호
	private int estPrice; //견적서가격
	private int estDay; //견적서일자(일단위)
	private String estContents; //견적서 커리큘럼(내용)
	private int estType; // 견적서 타입
	private int tno; //견적서 트레이너 번호
	private String estName; //견적서 제목
	
	public Estimate() {
		
	}

	public int getEstNo() {
		return estNo;
	}

	public void setEstNo(int estNo) {
		this.estNo = estNo;
	}

	public int getEstPrice() {
		return estPrice;
	}

	public void setEstPrice(int estPrice) {
		this.estPrice = estPrice;
	}

	public int getEstDay() {
		return estDay;
	}

	public void setEstDay(int estDay) {
		this.estDay = estDay;
	}

	public String getEstContents() {
		return estContents;
	}

	public void setEstContents(String estContents) {
		this.estContents = estContents;
	}

	public int getEstType() {
		return estType;
	}

	public void setEstType(int estType) {
		this.estType = estType;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getEstName() {
		return estName;
	}

	public void setEstName(String estName) {
		this.estName = estName;
	}

	public Estimate(int estNo, int estPrice, int estDay, String estContents, int estType, int tno, String estName) {
		super();
		this.estNo = estNo;
		this.estPrice = estPrice;
		this.estDay = estDay;
		this.estContents = estContents;
		this.estType = estType;
		this.tno = tno;
		this.estName = estName;
	}

	@Override
	public String toString() {
		return "Estimate [estNo=" + estNo + ", estPrice=" + estPrice + ", estDay=" + estDay + ", estContents="
				+ estContents + ", estType=" + estType + ", tno=" + tno + ", estName=" + estName + "]";
	}
	
	
	
	
	

}
