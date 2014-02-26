package com.stardream.project.photography.action;

import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import com.opensymphony.xwork2.Action;
import com.stardream.project.photography.domain.Forum;
import com.stardream.project.photography.service.BbsService;

public class BbsAction {
	private String name;
	private Integer classify;
	private Integer user;
	private Integer photographyId;   //帖子引用的影集id
	private String comtent;
	private Long dateTime;
	private String remark;
	private Integer status;
	private String alternateField1;
	private String alternateField2;
	
	@Autowired
	private BbsService bbsService;
	
	public String bbsPublish(){
		ServletRequest arg = ServletActionContext.getRequest();
		HttpServletRequest request = (HttpServletRequest)arg;
		HttpSession session = request.getSession();
		
		Forum forum = new Forum();
		forum.setName(name);
		forum.setClassify(classify);
		forum.setComtent(comtent);
		forum.setRemark(remark);
		forum.setDateTime(new Date().getTime());
		forum.setStatus(status);
		try{
			Integer userId = (Integer)session.getAttribute("userId");
			forum.setUser(userId);
			bbsService.saveOrPublishBbs(forum);			
		}catch(Exception e){
			e.printStackTrace();
			return "error";
		}
		
		return Action.SUCCESS;
	}
	
	public String bbsList(){
		
		
		
		return Action.SUCCESS;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getClassify() {
		return classify;
	}
	public void setClassify(Integer classify) {
		this.classify = classify;
	}
	public Integer getUser() {
		return user;
	}
	public void setUser(Integer user) {
		this.user = user;
	}
	public Integer getPhotographyId() {
		return photographyId;
	}
	public void setPhotographyId(Integer photographyId) {
		this.photographyId = photographyId;
	}
	public String getComtent() {
		return comtent;
	}
	public void setComtent(String comtent) {
		this.comtent = comtent;
	}
	public Long getDateTime() {
		return dateTime;
	}
	public void setDateTime(Long dateTime) {
		this.dateTime = dateTime;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getStatus() {
		return status;
	}
	public void setStatus(Integer status) {
		this.status = status;
	}
	public String getAlternateField1() {
		return alternateField1;
	}
	public void setAlternateField1(String alternateField1) {
		this.alternateField1 = alternateField1;
	}
	public String getAlternateField2() {
		return alternateField2;
	}
	public void setAlternateField2(String alternateField2) {
		this.alternateField2 = alternateField2;
	}
	
}
