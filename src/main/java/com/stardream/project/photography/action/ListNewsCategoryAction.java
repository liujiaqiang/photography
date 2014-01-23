package com.stardream.project.photography.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.NewsCategory;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class ListNewsCategoryAction {

	private String errormessage;
	private List<NewsCategory> newsCategorys;

	@Autowired
	private GenericService<NewsCategory, Integer> newsCategoryService;

	public String listCategory() {
		try {
			newsCategorys = newsCategoryService.findEntity(NewsCategory.class);
		} catch (Exception e) {
			errormessage = ",查询资讯类别列表出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public List<NewsCategory> getNewsCategorys() {
		return newsCategorys;
	}

	public void setNewsCategorys(List<NewsCategory> newsCategorys) {
		this.newsCategorys = newsCategorys;
	}

	public String getErrormessage() {
		return errormessage;
	}

	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}
}
