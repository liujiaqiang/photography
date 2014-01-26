package com.stardream.project.photography.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 帖子表
 * 论坛中发表的帖子
 * @author duyanjun
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "t_forum")
public class Forum implements Serializable {
	private Integer id;
	private String name;
	private Integer Classify;
	private Integer user;
	private Integer photographyId;   //帖子引用的影集id
	private String comtent;
	private Long dateTime;
	private String remark;
	private Integer Status;
	private String alternateField1;
	private String alternateField2;


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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

	public Integer getClassify() {
		return Classify;
	}

	public void setClassify(Integer classify) {
		Classify = classify;
	}

	public Integer getUser() {
		return user;
	}

	public void setUser(Integer user) {
		this.user = user;
	}

	public Integer getPhotographyId() {
		return photographyId;
	}

	public void setPhotographyId(Integer photographyId) {
		this.photographyId = photographyId;
	}

	public String getComtent() {
		return comtent;
	}

	public void setComtent(String comtent) {
		this.comtent = comtent;
	}

	public Long getDateTime() {
		return dateTime;
	}

	public void setDateTime(Long dateTime) {
		this.dateTime = dateTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getStatus() {
		return Status;
	}

	public void setStatus(Integer status) {
		Status = status;
	}

	public String getAlternateField1() {
		return alternateField1;
	}

	public void setAlternateField1(String alternateField1) {
		this.alternateField1 = alternateField1;
	}

	public String getAlternateField2() {
		return alternateField2;
	}

	public void setAlternateField2(String alternateField2) {
		this.alternateField2 = alternateField2;
	}
	
}
