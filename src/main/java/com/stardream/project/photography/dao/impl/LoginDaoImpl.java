package com.stardream.project.photography.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.stardream.project.photography.dao.LoginDao;
import com.stardream.project.photography.domain.UserInfo;

@Component("LoginDao")
public class LoginDaoImpl implements LoginDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
    public String getPassword(String username) {
    	String sql="SELECT PASSWORD FROM t_user WHERE username = '"+username+"';";
    	List list = getSession().createSQLQuery(sql).list();
    	String password = null;
    	if(null != list && list.size()>0){
    		password = (String)list.get(0);
    	}
		if(null!=password || !"".equals(password)){
			return password;
		}
		return null;
	}
    
    public UserInfo findEntityBySQL(UserInfo userInfo, String hql){
    	
    	UserInfo userInfoR = new UserInfo();
    	
    	List<UserInfo> list = getSession().createQuery(hql).list();
    	if(null != list && list.size()>0){
    		userInfoR = list.get(0);
    		return userInfoR;
    	}
    	
    	return null;
    }
    

}
