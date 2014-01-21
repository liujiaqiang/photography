package com.stardream.project.photography.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.Announcement;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class AddAnnouncementAction {

	private String title;
	private String content;
	private String author;
	private int isShow;
	private long dateTime;
	private String errormessage;

	@Autowired
	private GenericService<Announcement, Integer> announcementService;

	public String addAnnouncement() {
		Announcement announcement = new Announcement();
		announcement.setAuthor(author);
		announcement.setContent(content);
		announcement.setIsShow(isShow);
		announcement.setTitle(title);
		announcement.setDateTime(new Date().getTime());
		try {
			announcementService.saveorupdate(announcement);
		} catch (Exception e) {
			errormessage = ",增加公告出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
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
