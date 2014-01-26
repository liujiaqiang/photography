package com.stardream.project.photography.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.News;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.SolrService;
import com.stardream.project.photography.util.Constants;

public class getNewsDetailAction {

	private String errormessage;

	private News news;
	
	private int newscategory;

	@Autowired
	private SolrService solrService;

	public String newsdetail() {
		String id;
		try {
			id=solrService.listNews(0, 1, newscategory, Constants.NEWS_STATE).get(0).getId();
			if(id.equals("")){
				errormessage = "没有找到相关页面，请联系管理员！！";
				return "error";
			}
			news = solrService.getNewsById(id);
		} catch (Exception e) {
			errormessage = "没有找到相关页面，请联系管理员！！！";
			new PhotoGraphyException(errormessage);
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

	
	public int getNewscategory() {
		return newscategory;
	}

	public void setNewscategory(int newscategory) {
		this.newscategory = newscategory;
	}

}
