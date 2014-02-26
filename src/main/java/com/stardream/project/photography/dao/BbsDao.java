package com.stardream.project.photography.dao;

import com.stardream.project.photography.domain.Forum;
import com.stardream.project.photography.domain.UserInfo;

public interface BbsDao {
	public Boolean saveOrPublishBbs(Forum forum);
	
	public UserInfo findEntityBySQL(UserInfo userInfo,String hql);

}
