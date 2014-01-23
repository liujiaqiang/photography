<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:select list="newsCategorys" headerKey="1" headerValue="--请选择资讯类型--"
	listKey="id" listValue="name" id="newsCategory" name="id"  labelposition=""></s:select>