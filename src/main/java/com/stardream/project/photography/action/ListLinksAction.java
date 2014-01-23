package com.stardream.project.photography.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.Links;
import com.stardream.project.photography.exception.PhotoGraphyException;
import com.stardream.project.photography.service.GenericService;

public class ListLinksAction {

	private String errormessage;

	private List<Links> links;

	@Autowired
	private GenericService<Links, Integer> linksService;

	public String listlinks() {
		try {
			links = linksService.findEntity(Links.class);
		} catch (Exception e) {
			errormessage = ",查询友情链接列表出现错误！";
			new PhotoGraphyException(errormessage.substring(1));
			e.printStackTrace();
			return "error";
		}
		return Action.SUCCESS;
	}

	public List<Links> getLinks() {
		return links;
	}

	public void setLinks(List<Links> links) {
		this.links = links;
	}

	public String getErrormessage() {
		return errormessage;
	}

	public void setErrormessage(String errormessage) {
		this.errormessage = errormessage;
	}

}
