package com.kh.amd.admin.model.vo;

public class Statistics implements java.io.Serializable{
	
	private String exercise;
	private int count;
	
	public Statistics() {}

	public Statistics(String exercise, int count) {
		super();
		this.exercise = exercise;
		this.count = count;
	}

	public String getExercise() {
		return exercise;
	}

	public void setExercise(String exercise) {
		this.exercise = exercise;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Statistics [exercise=" + exercise + ", count=" + count + "]";
	}
	
	

}
