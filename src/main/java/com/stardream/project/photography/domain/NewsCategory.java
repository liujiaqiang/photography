package com.stardream.project.photography.domain;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 * 资讯分类表
 * @author duyanjun
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name="t_news_category")
public class NewsCategory implements Serializable {
	
	private Integer id;
	private String name;
	private String description;
	private long dateTime;
	private String alternateField;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getAlternateField() {
		return alternateField;
	}
	public void setAlternateField(String alternateField) {
		this.alternateField = alternateField;
	}
	public long getDateTime() {
		return dateTime;
	}
	public void setDateTime(long dateTime) {
		this.dateTime = dateTime;
	}
	@Transient
	public Date getCurrentDate() {
		return new Date(this.dateTime);
	}
}
