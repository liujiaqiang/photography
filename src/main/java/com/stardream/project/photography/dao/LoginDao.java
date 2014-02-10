package com.stardream.project.photography.dao;

import com.stardream.project.photography.domain.UserInfo;


public interface LoginDao {
	
    public String getPassword(String username) ;
    public UserInfo findEntityBySQL(UserInfo userInfo, String hql);
}
