package com.kh.amd.survey.model.vo;

import java.sql.Date;

public class Survey implements java.io.Serializable{
	
	private String hopePeriod;
	private String hopeBody;
	private String hopeMethod;
	private String hopeGender;
	private String hopeAge;
	private String dietFail;
	private String hopeStart;
	private String dietReason;
	private String hopeExercise;
	private String datExercise;
	private String datFood;
	private String disease;
	private String dayTime;
	private int surveyNo;
	private Date enrollDate;
	private Date modifyDate;	
	private int height;
	private int weight;
	private int hopeWeight;
	private String uAge;
	private int mNo;
	
	public Survey() {}

	public String getHopePeriod() {
		return hopePeriod;
	}

	public void setHopePeriod(String hopePeriod) {
		this.hopePeriod = hopePeriod;
	}

	public String getHopeBody() {
		return hopeBody;
	}

	public void setHopeBody(String hopeBody) {
		this.hopeBody = hopeBody;
	}

	public String getHopeMethod() {
		return hopeMethod;
	}

	public void setHopeMethod(String hopeMethod) {
		this.hopeMethod = hopeMethod;
	}

	public String getHopeGender() {
		return hopeGender;
	}

	public void setHopeGender(String hopeGender) {
		this.hopeGender = hopeGender;
	}

	public String getHopeAge() {
		return hopeAge;
	}

	public void setHopeAge(String hopeAge) {
		this.hopeAge = hopeAge;
	}

	public String getDietFail() {
		return dietFail;
	}

	public void setDietFail(String dietFail) {
		this.dietFail = dietFail;
	}

	public String getHopeStart() {
		return hopeStart;
	}

	public void setHopeStart(String hopeStart) {
		this.hopeStart = hopeStart;
	}

	public String getDietReason() {
		return dietReason;
	}

	public void setDietReason(String dietReason) {
		this.dietReason = dietReason;
	}

	public String getHopeExercise() {
		return hopeExercise;
	}

	public void setHopeExercise(String hopeExercise) {
		this.hopeExercise = hopeExercise;
	}

	public String getDatExercise() {
		return datExercise;
	}

	public void setDatExercise(String datExercise) {
		this.datExercise = datExercise;
	}

	public String getDatFood() {
		return datFood;
	}

	public void setDatFood(String datFood) {
		this.datFood = datFood;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getDayTime() {
		return dayTime;
	}

	public void setDayTime(String dayTime) {
		this.dayTime = dayTime;
	}

	public int getSurveyNo() {
		return surveyNo;
	}

	public void setSurveyNo(int surveyNo) {
		this.surveyNo = surveyNo;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public int getHopeWeight() {
		return hopeWeight;
	}

	public void setHopeWeight(int hopeWeight) {
		this.hopeWeight = hopeWeight;
	}

	public String getuAge() {
		return uAge;
	}

	public void setuAge(String uAge) {
		this.uAge = uAge;
	}

	public int getmNo() {
		return mNo;
	}

	public void setmNo(int mNo) {
		this.mNo = mNo;
	}

	public Survey(String hopePeriod, String hopeBody, String hopeMethod, String hopeGender, String hopeAge,
			String dietFail, String hopeStart, String dietReason, String hopeExercise, String datExercise,
			String datFood, String disease, String dayTime, int surveyNo, Date enrollDate, Date modifyDate, int height,
			int weight, int hopeWeight, String uAge, int mNo) {
		super();
		this.hopePeriod = hopePeriod;
		this.hopeBody = hopeBody;
		this.hopeMethod = hopeMethod;
		this.hopeGender = hopeGender;
		this.hopeAge = hopeAge;
		this.dietFail = dietFail;
		this.hopeStart = hopeStart;
		this.dietReason = dietReason;
		this.hopeExercise = hopeExercise;
		this.datExercise = datExercise;
		this.datFood = datFood;
		this.disease = disease;
		this.dayTime = dayTime;
		this.surveyNo = surveyNo;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.height = height;
		this.weight = weight;
		this.hopeWeight = hopeWeight;
		this.uAge = uAge;
		this.mNo = mNo;
	}

	@Override
	public String toString() {
		return "Survey [hopePeriod=" + hopePeriod + ", hopeBody=" + hopeBody + ", hopeMethod=" + hopeMethod
				+ ", hopeGender=" + hopeGender + ", hopeAge=" + hopeAge + ", dietFail=" + dietFail + ", hopeStart="
				+ hopeStart + ", dietReason=" + dietReason + ", hopeExercise=" + hopeExercise + ", datExercise="
				+ datExercise + ", datFood=" + datFood + ", disease=" + disease + ", dayTime=" + dayTime + ", surveyNo="
				+ surveyNo + ", enrollDate=" + enrollDate + ", modifyDate=" + modifyDate + ", height=" + height
				+ ", weight=" + weight + ", hopeWeight=" + hopeWeight + ", uAge=" + uAge + ", mNo=" + mNo + "]";
	}

	
}




