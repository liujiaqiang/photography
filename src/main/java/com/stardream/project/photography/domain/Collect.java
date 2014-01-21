package com.stardream.project.photography.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@SuppressWarnings("serial")
@Entity
@Table(name="t_collect")
public class Collect implements Serializable {
	private Integer id;
	private Integer worksId;
	private Integer userId;
	private long dateTime;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getWorksId() {
		return worksId;
	}
	public void setWorksId(Integer worksId) {
		this.worksId = worksId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public long getDateTime() {
		return dateTime;
	}
	public void setDateTime(long dateTime) {
		this.dateTime = dateTime;
	}
}
