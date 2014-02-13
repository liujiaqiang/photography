<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<ul>
     <li><a href="index.jsp"  class="current">首页</a></li>
     <li><a href="newsdetail.shtml?id=AwAHBwgBAQYAAQAGAAAEBgAAAAgJAAAAAAAABwQDCAgGAAAB">摄影论坛</a></li>
     <li><a href="newsdetail.shtml?id=AAAAAwMICAAABQAABAAEAAIAAAgJBAMAAAgBAAAEAAAAAAAA">个人影展</a></li>  
     <li><a href="newsdetail.shtml?id=AAYCAAACAgYACAQJCQAEAgAAAAgFAgAAAAAAAAIAAAQDCAIB">影展影赛</a></li>
     <li><a href="newsdetail.shtml?id=CAAAAAQDAAAAAAAGBwAEBgAAAAgGAAAACAcFAAACAwgGCAkA">影友专区</a></li> 
     <li><a href="getnewsdetail.shtml?newscategory=1">协会信息</a></li>                     
     <li><a href="getnewsdetail.shtml?newscategory=5">三边文化</a></li> 
     <s:if test="#session.manager!=null">
        <li><a href="getnewsdetail.shtml?newscategory=5">系统管理</a></li> 
     </s:if>                            
 </ul> 