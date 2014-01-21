package com.stardream.project.photography.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.Links;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class AddLinksAction {

	private String name;
	private String address;
	private String imgUrl;
	private int isShow;
	private long dateTime;
	private String errormessage;

	@Autowired
	private GenericService<Links, Integer> linksService;

	public String addlinks() {
		Links links=new Links();
		links.setAddress(address);
		links.setDateTime(new Date().getTime());
		links.setImgUrl(imgUrl);
		links.setName(name);
		links.setIsShow(isShow);
		try {
			linksService.saveorupdate(links);
		} catch (Exception e) {
			errormessage = ",增加友情链接出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public int getIsShow() {
		return isShow;
	}

	public void setIsShow(int isShow) {
		this.isShow = isShow;
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
