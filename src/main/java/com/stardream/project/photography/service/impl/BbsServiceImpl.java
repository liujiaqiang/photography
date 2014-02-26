package com.stardream.project.photography.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stardream.project.photography.dao.BbsDao;
import com.stardream.project.photography.domain.Forum;
import com.stardream.project.photography.domain.UserInfo;
import com.stardream.project.photography.service.BbsService;

@Service("BbsService")
@Transactional
public class BbsServiceImpl implements BbsService{
	
	@Autowired
	private BbsDao bbsDao;
	
	public Boolean saveOrPublishBbs(Forum forum){
		if(null != forum){
			bbsDao.saveOrPublishBbs(forum);
			return true;
		}
		
		return false;
	}
	
	public UserInfo findEntityBySQL(String userName){
		if(null == userName || "".equals(userName)){
			return null;
		}
		String hql = "FROM UserInfo WHERE username = '"+userName+"'";
		UserInfo userInfo = new UserInfo();
		userInfo.setUsername(userName);
		UserInfo userInfoR = bbsDao.findEntityBySQL(userInfo, hql);
		if(null == userInfoR){
			return null;
		}
		return userInfoR;
	}
}
