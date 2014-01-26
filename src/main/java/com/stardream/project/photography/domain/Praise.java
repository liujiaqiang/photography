package com.stardream.project.photography.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 影展个人赞表
 * 用于存储对于作品或者是会员的赞
 * @author duyanjun
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "t_ praise")
public class Praise implements Serializable {
	private Integer id;
	private Integer byPraiseId;
	private Integer user;
	private Long dateTime;
	private Integer isUser;   //是作品还是会员
	private String alternateField;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getByPraiseId() {
		return byPraiseId;
	}

	public void setByPraiseId(Integer byPraiseId) {
		this.byPraiseId = byPraiseId;
	}

	public Integer getUser() {
		return user;
	}

	public void setUser(Integer user) {
		this.user = user;
	}

	public Long getDateTime() {
		return dateTime;
	}

	public void setDateTime(Long dateTime) {
		this.dateTime = dateTime;
	}

	public Integer getIsUser() {
		return isUser;
	}

	public void setIsUser(Integer isUser) {
		this.isUser = isUser;
	}

	public String getAlternateField() {
		return alternateField;
	}

	public void setAlternateField(String alternateField) {
		this.alternateField = alternateField;
	}
	
}
