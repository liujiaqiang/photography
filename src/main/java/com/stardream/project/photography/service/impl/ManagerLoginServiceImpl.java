package com.stardream.project.photography.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stardream.project.photography.dao.LoginDao;
import com.stardream.project.photography.domain.UserInfo;
import com.stardream.project.photography.service.ManagerLoginService;

@Service("ManagerLoginService")
@Transactional
public class ManagerLoginServiceImpl implements ManagerLoginService{
	
	@Autowired
	private LoginDao loginDao;
	
	public UserInfo findEntityBySQL(UserInfo userInfo){
		if(null == userInfo || null == userInfo.getUsername()){
			return null;
		}
		String hql = "FROM UserInfo WHERE username = '"+userInfo.getUsername()+"' and ismanager = '"+userInfo.getIsmanager()+"'";
		UserInfo userInfoR = loginDao.findEntityBySQL(userInfo, hql);
		if(null == userInfoR){
			return null;
		}
		return userInfoR;
	}
}
