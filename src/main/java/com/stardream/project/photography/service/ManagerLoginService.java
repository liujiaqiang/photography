package com.stardream.project.photography.service;

import com.stardream.project.photography.domain.UserInfo;

public interface ManagerLoginService {
	public UserInfo findEntityBySQL(UserInfo userInfo);
}
