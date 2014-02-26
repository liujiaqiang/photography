<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<ul>
     <li><a href="<%=request.getContextPath()%>/index.jsp"  class="current">首页</a></li>
     <li><a href="<%=request.getContextPath()%>/bbs/listBBS.jsp">摄影论坛</a></li>
     <li><a href="<%=request.getContextPath()%>/newsdetail.shtml?id=AAAAAwMICAAABQAABAAEAAIAAAgJBAMAAAgBAAAEAAAAAAAA">个人影展</a></li>  
     <li><a href="<%=request.getContextPath()%>/newsdetail.shtml?id=AAYCAAACAgYACAQJCQAEAgAAAAgFAgAAAAAAAAIAAAQDCAIB">影展影赛</a></li>
     <li><a href="<%=request.getContextPath()%>/newsdetail.shtml?id=CAAAAAQDAAAAAAAGBwAEBgAAAAgGAAAACAcFAAACAwgGCAkA">影友专区</a></li> 
     <li><a href="<%=request.getContextPath()%>/getnewsdetail.shtml?newscategory=4">协会信息</a></li>                     
     <li><a href="<%=request.getContextPath()%>/getnewsdetail.shtml?newscategory=6">三边文化</a></li>                      
 </ul> 