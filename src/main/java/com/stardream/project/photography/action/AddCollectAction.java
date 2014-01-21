package com.stardream.project.photography.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.Collect;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class AddCollectAction {

	private Integer userId;
	private Integer worksId;
	private long dateTime;
	private String errormessage;

	@Autowired
	private GenericService<Collect, Integer> collectService;

	public String addcollect() {
		Collect collect = new Collect();
		collect.setUserId(userId);
		collect.setWorksId(worksId);
		collect.setDateTime(new Date().getTime());
		try {
			collectService.saveorupdate(collect);
		} catch (Exception e) {
			errormessage = ",收藏作品出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getWorksId() {
		return worksId;
	}

	public void setWorksId(Integer worksId) {
		this.worksId = worksId;
	}

	public long getDateTime() {
		return dateTime;
	}

	public void setDateTime(long dateTime) {
		this.dateTime = dateTime;
	}

	public String getErrormessage() {
		return errormessage;
	}

	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}

}
