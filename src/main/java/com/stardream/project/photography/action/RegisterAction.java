package com.stardream.project.photography.action;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.UserInfo;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class RegisterAction {

	private String nickname;
	private String realname;
	private String userpass;
	private String email;
	private String phone;
	private String birthday;
	private String imgUrl;
	private long dateTime;
	private int islock;
	private String errormessage;
	private int level;
	private int ismanager; //是否是论坛管理员
	private String alternateField1;
	private String alternateField2;

	@Autowired
	private GenericService<UserInfo, Integer> userService;

	public String register() {
		UserInfo userInfo=new UserInfo();
		userInfo.setNickname(nickname);
		userInfo.setRealname(realname);
		userInfo.setEmail(email);
		userInfo.setPhone(phone);
		userInfo.setBirthday(birthday);
		userInfo.setImgUrl(imgUrl);
		userInfo.setDateTime(new Date().getTime());
		userInfo.setIslock(islock);
		userInfo.setAlternateField1(alternateField1);
		userInfo.setAlternateField2(alternateField2);
		userInfo.setLevel(level);
		userInfo.setIsmanager(ismanager);
		try {
			userService.saveorupdate(userInfo);
		} catch (Exception e) {
			errormessage = ",用户注册出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getUserpass() {
		return userpass;
	}

	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public long getDateTime() {
		return dateTime;
	}

	public void setDateTime(long dateTime) {
		this.dateTime = dateTime;
	}

	public int getIslock() {
		return islock;
	}

	public void setIslock(int islock) {
		this.islock = islock;
	}

	public String getErrormessage() {
		return errormessage;
	}

	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getIsmanager() {
		return ismanager;
	}

	public void setIsmanager(int ismanager) {
		this.ismanager = ismanager;
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
