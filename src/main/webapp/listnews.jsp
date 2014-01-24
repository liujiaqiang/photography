<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<s:iterator value="news" var="mnews">
	<li ><a href="newsdetail.shtml?id=<s:property value="#mnews.id"/>" target="_blank"><s:property value="#mnews.title"/></a></li>
</s:iterator>
