package com.stardream.project.photography.action;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.UserInfo;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.ManagerLoginService;
import com.stardream.project.photography.util.Constants;

public class ManagerAction {
	private String username;
	private String userpass;
	private String errormessage;
	
	@Autowired
	private ManagerLoginService managerLoginService;
	
	public String login(){
		ServletRequest arg = ServletActionContext.getRequest();
		HttpServletRequest request = (HttpServletRequest)arg;
		HttpSession session = request.getSession();
		
		if(null == username || "".equals(username) || null== userpass || "".equals(userpass))
		{
			request.setAttribute("errorMessage", "用户名或者密码不能为空"); 
			return "loginError";
		}
		UserInfo userInfo = new UserInfo();
		userInfo.setUsername(username);
		userInfo.setIsmanager(Constants.user_system_manager); //系统管理员
		
		try {
			String password = "";
			userInfo = managerLoginService.findEntityBySQL(userInfo);
			if(null == userInfo){
				request.setAttribute("errorMessage", "用户名不存在"); 
				return "loginError";
			}
			password = userInfo.getPassword();
			if(null == password || "".equals(password)){
				request.setAttribute("errorMessage", "用户名不存在"); 
				return "loginError";
			}else if(!password.equals(userpass)){
				request.setAttribute("errorMessage", "密码错误"); 
				return "loginError";
			}
			
			session.setAttribute("nickName", "系统管理员："+userInfo.getNickname());
			session.setAttribute("manager", 2);
		} catch (Exception e) {
			errormessage = ",用户登录出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		
		return Action.SUCCESS;
	}
	
	public String register(){
		
		return null;
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

	public String getErrormessage() {
		return errormessage;
	}

	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}
}
