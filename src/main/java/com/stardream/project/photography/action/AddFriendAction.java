package com.stardream.project.photography.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.Friend;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class AddFriendAction {

	private Integer userId;
	private Integer friendId;
	private long dateTime;
	private Integer status;
	private String alternateField;
	private String errormessage;

	@Autowired
	private GenericService<Friend, Integer> friendService;

	public String addfriend() {
		Friend friend = new Friend();
		friend.setUserId(userId);
		friend.setFriendId(friendId);
		friend.setDateTime(new Date().getTime());
		friend.setStatus(status);
		friend.setAlternateField(alternateField); 
		
		try {
			friendService.saveorupdate(friend);
		} catch (Exception e) {
			errormessage = ",增加好友出现错误！";
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

	public Integer getFriendId() {
		return friendId;
	}

	public void setFriendId(Integer friendId) {
		this.friendId = friendId;
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

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getAlternateField() {
		return alternateField;
	}

	public void setAlternateField(String alternateField) {
		this.alternateField = alternateField;
	}

	
}
