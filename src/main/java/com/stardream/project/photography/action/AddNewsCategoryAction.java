package com.stardream.project.photography.action;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.NewsCategory;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;



public class AddNewsCategoryAction {

	private String name;
	private String description;
	private String errormessage;
	private String alternateField;
	
	@Autowired
	private GenericService<NewsCategory, Integer> newsCategoryService;
	
	public String addCategory(){
		NewsCategory newsCategory=new NewsCategory();
		newsCategory.setName(name);
		newsCategory.setDescription(description);
		newsCategory.setAlternateField(alternateField);
		try {
			newsCategoryService.saveorupdate(newsCategory);
		} catch (Exception e) {
			errormessage = ",增加资讯类别出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

	public String getErrormessage() {
		return errormessage;
	}

	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}

	public String getAlternateField() {
		return alternateField;
	}

	public void setAlternateField(String alternateField) {
		this.alternateField = alternateField;
	}
	
	
}
