package com.stardream.project.photography.domain;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 级别表
 * 用于制定用户的级别
 * @author duyanjun
 *
 */
@SuppressWarnings("serial")
@Entity
@Table(name = "t_level")
public class Level implements Serializable {
	private Integer id;
	private String name;
	private String destiction;

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

	public String getDestiction() {
		return destiction;
	}

	public void setDestiction(String destiction) {
		this.destiction = destiction;
	}

}
