package com.stardream.project.photography.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stardream.project.photography.service.LoginService;
import com.stardream.project.photography.dao.BaseDAO;
import com.stardream.project.photography.dao.LoginDao;
import com.stardream.project.photography.domain.UserInfo;
/**
 * 登录业务类
 * @author duyanjun
 *
 */
@Service("LoginService")
@Transactional
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	@Autowired
	protected BaseDAO<UserInfo, Integer> baseDAO;
	
	@Override
	public String getPassword(String username) {
		String password = loginDao.getPassword(username);
		if(null != password || !"".equals(password)){
			return password;
		}
		
		return null;
	}
	
	public UserInfo findEntityBySQL(UserInfo userInfo){
		if(null == userInfo || null == userInfo.getUsername()){
			return null;
		}
		String hql = "FROM UserInfo WHERE username = '"+userInfo.getUsername()+"'";
		UserInfo userInfoR = loginDao.findEntityBySQL(userInfo, hql);
		if(null == userInfoR){
			return null;
		}
		return userInfoR;
	}

}
