package com.stardream.project.photography.util;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.dispatcher.ng.filter.StrutsPrepareFilter;

public class MyStruts2Filter extends StrutsPrepareFilter{
	
	 public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {  
	        HttpServletRequest request = (HttpServletRequest) req;  
	        String uri = request.getRequestURI();  
	        if(uri.endsWith("/ckfinder/core/connector/java/connector.java")){//其他在线编辑器也可能存在此情况，依此方法解决  
	            chain.doFilter(req, resp);  
	        }else{  
	            super.doFilter(req, resp, chain);  
	        }  
	    }  
}
