package com.nv.model;


public class AdDataBean {
	private int id;
	private String title;
	private String details;
	private int group;
	private int category;
	
	public String getTitle() {
		return title;
	}
	public String getDetails() {
		return details;
	}
	public int getGroup() {
		return group;
	}
	public int getCategory() {
		return category;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public void setGroup(int group) {
		this.group = group;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String toString(){
		return id + " : " +title;
	}
	
}
