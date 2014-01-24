package com.stardream.project.photography.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.News;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.SolrService;

public class ListNewsAction {

	private String errormessage;

	private List<News> news;
	
	private int newscategory;

	@Autowired
	private SolrService solrService;

	public String listnews() {
		try {
			news = solrService.listNews(0, 4, newscategory, 1);
		} catch (Exception e) {
			errormessage = ",查询活动列表出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public List<News> getNews() {
		return news;
	}

	public void setNews(List<News> news) {
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
