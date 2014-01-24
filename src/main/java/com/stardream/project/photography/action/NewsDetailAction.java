package com.stardream.project.photography.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.News;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.SolrService;

public class NewsDetailAction {

	private String errormessage;

	private News news;
	
	private String id;

	@Autowired
	private SolrService solrService;

	public String newsdetail() {
		try {
			news = solrService.getNewsById(id);
		} catch (Exception e) {
			errormessage = ",查询友情链接列表出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public News getNews() {
		return news;
	}

	public void setNews(News news) {
		this.news = news;
	}

	public String getErrormessage() {
		return errormessage;
	}

	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

}
