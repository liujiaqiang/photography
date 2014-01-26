package com.stardream.project.photography.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 个人评论表
 * 用于存储对于会员个人的评论
 * @author duyanjun
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "t_ userComment")
public class UserComment implements Serializable {
	private Integer id;
	private Integer byCommentId;
	private Integer user;
	private String content;
	private Long dateTime;
	private Integer userComId;  //评论的评论
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

	public Integer getByCommentId() {
		return byCommentId;
	}

	public void setByCommentId(Integer byCommentId) {
		this.byCommentId = byCommentId;
	}

	public Integer getUser() {
		return user;
	}

	public void setUser(Integer user) {
		this.user = user;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getDateTime() {
		return dateTime;
	}

	public void setDateTime(Long dateTime) {
		this.dateTime = dateTime;
	}

	public Integer getUserComId() {
		return userComId;
	}

	public void setUserComId(Integer userComId) {
		this.userComId = userComId;
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
