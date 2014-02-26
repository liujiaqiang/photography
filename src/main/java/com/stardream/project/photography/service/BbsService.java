package com.stardream.project.photography.service;

import com.stardream.project.photography.domain.Forum;
import com.stardream.project.photography.domain.UserInfo;

public interface BbsService {
	public Boolean saveOrPublishBbs(Forum forum);
	
	public UserInfo findEntityBySQL(String userName);

}
