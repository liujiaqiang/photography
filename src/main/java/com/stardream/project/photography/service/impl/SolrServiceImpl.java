package com.stardream.project.photography.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.stardream.project.photography.dao.SolrDao;
import com.stardream.project.photography.domain.News;
import com.stardream.project.photography.service.SolrService;

@Service("solrService")
@Transactional
public class SolrServiceImpl implements SolrService {
	
	@Autowired
	private SolrDao solrDao;

	@Override
	public List<News> listNews(int start, int pageSize, int newscategory,
			int isShow) {
		return solrDao.listNews(start, pageSize, newscategory, isShow);
	}

	@Override
	public News getNewsById(String id) {
		return solrDao.getNewsById(id);
	}

	@Override
	public List<News> searchNewsByKeyword(int start, int pageSize,
			String keyword, int isShow) {
		return solrDao.searchNewsByKeyword(start, pageSize, keyword, isShow);
	}
}
