package com.stardream.project.photography.service;

import com.stardream.project.photography.domain.UserInfo;

public interface LoginService {
	public String getPassword(String username);
	
	public UserInfo findEntityBySQL(UserInfo userInfo);

}
