package com.stardream.project.photography.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.Collect;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class AddCollectAction {

	private Integer user;
	private Integer photoId;
	private long dateTime;
	private String errormessage;

	@Autowired
	private GenericService<Collect, Integer> collectService;

	public String addcollect() {
		Collect collect = new Collect();
		collect.setUser(user);
		collect.setPhotoId(photoId);
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

	

	public Integer getUser() {
		return user;
	}



	public void setUser(Integer user) {
		this.user = user;
	}



	public Integer getPhotoId() {
		return photoId;
	}



	public void setPhotoId(Integer photoId) {
		this.photoId = photoId;
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
