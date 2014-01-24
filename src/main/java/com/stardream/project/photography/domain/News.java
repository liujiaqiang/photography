package com.stardream.project.photography.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class News implements Serializable {
	private String id;
	private String title;
	private String summary;
	private long premiereDate;
	private int newscategory;
	private int isShow;
	private String content;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public long getPremiereDate() {
		return premiereDate;
	}
	public void setPremiereDate(long premiereDate) {
		this.premiereDate = premiereDate;
	}
	public int getNewscategory() {
		return newscategory;
	}
	public void setNewscategory(int newscategory) {
		this.newscategory = newscategory;
	}
	public int getIsShow() {
		return isShow;
	}
	public void setIsShow(int isShow) {
		this.isShow = isShow;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
