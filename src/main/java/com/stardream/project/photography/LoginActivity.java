package com.stardream.project.photography;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.UserInfo;
import com.stardream.project.photography.exception.PhotoGraphyException;

/**
 * 登录类
 * @author duyanjun
 *
 */
public class LoginActivity {
	private String username;
	private String userpass;
	private String errormessage;
	
	public String login(){
		if(null == username || "".equals(username) || null== userpass || "".equals(userpass))
		{
			return Action.ERROR;
		}
		
		UserInfo userInfo=new UserInfo();
		try {
			String password = "";
		} catch (Exception e) {
			errormessage = ",用户登录出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		
		return Action.SUCCESS;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpass() {
		return userpass;
	}
	public void setUserpass(String userpass) {
		this.userpass = userpass;
	}

}
