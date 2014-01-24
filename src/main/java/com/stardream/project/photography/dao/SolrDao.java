package com.stardream.project.photography.dao;

import java.util.List;

import com.stardream.project.photography.domain.News;

public interface SolrDao {
	
	public List<News> listNews(int start, int pageSize,int newscategory,int isShow) ;

	public News getNewsById(String id) ;
}
