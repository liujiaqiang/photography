package com.stardream.project.photography.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 帖子评论表
 * 论坛中帖子的评论
 * @author duyanjun
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "t_ forum_comment")
public class ForumComment implements Serializable {
	private Integer id;
	private Integer forumId;
	private Integer user;
	private String comtent;
	private Long dateTime;
	private Integer floors;   //楼数
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

	public Integer getForumId() {
		return forumId;
	}

	public void setForumId(Integer forumId) {
		this.forumId = forumId;
	}

	public Integer getUser() {
		return user;
	}

	public void setUser(Integer user) {
		this.user = user;
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

	public Integer getFloors() {
		return floors;
	}

	public void setFloors(Integer floors) {
		this.floors = floors;
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
