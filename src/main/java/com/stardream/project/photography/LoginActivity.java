package com.stardream.project.photography;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.UserInfo;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.LoginService;

/**
 * 登录类
 * @author duyanjun
 *
 */
public class LoginActivity {
	private String username;
	private String userpass;
	private String errormessage;
	
	@Autowired
	private LoginService loginService;
	
	/**
	 * 
	 * @param arg
	 * @return
	 */
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
		
		try {
			String password = "";
			//password = loginService.getPassword(username);
			userInfo = loginService.findEntityBySQL(userInfo);
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
			
			session.setAttribute("nickName", userInfo.getNickname());
			
		} catch (Exception e) {
			errormessage = ",用户登录出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		
		return Action.SUCCESS;
	}
	
	
	public String loginExit(){
		ServletRequest arg = ServletActionContext.getRequest();
		HttpServletRequest request = (HttpServletRequest)arg;
		HttpSession session = request.getSession();
		
		session.removeAttribute("nickName");
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
