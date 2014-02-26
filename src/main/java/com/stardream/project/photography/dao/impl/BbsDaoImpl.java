package com.stardream.project.photography.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stardream.project.photography.dao.BbsDao;
import com.stardream.project.photography.domain.Forum;
import com.stardream.project.photography.domain.UserInfo;

@Component("BbsDao")
public class BbsDaoImpl implements BbsDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public Boolean saveOrPublishBbs(Forum forum){
		getSession().save(forum);
		return true;
	}
	
	public UserInfo findEntityBySQL(UserInfo userInfo,String hql){
        UserInfo userInfoR = new UserInfo();
    	List<UserInfo> list = getSession().createQuery(hql).list();
    	if(null != list && list.size()>0){
    		userInfoR = list.get(0);
    		return userInfoR;
    	}
    	
    	return null;
	}
}
