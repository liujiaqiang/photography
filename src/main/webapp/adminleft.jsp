<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>三边摄影网后台管理系统</title>
	<jsp:include page="admininclude.jsp" />
</head>
<body>
<div class="sidebar_search">
            <form>
            <input type="text" name="" class="search_input" value="关键字" onclick="this.value=''" />
            <input type="image" class="search_submit" src="images/search.png" />
            </form>            
            </div>
    
            <div class="sidebarmenu">
            
                <a class="menuitem submenuheader" href="">个人资料</a>
                <div class="submenu">
                    <ul>
                    <li><a href="">详细资料</a></li>
                    <li><a href="">修改密码</a></li>
                    </ul>
                </div>
                <a class="menuitem" href="index.jsp" target="_black">门户首页</a>
                <a class="menuitem_green" href="">Green button</a>
                <a class="menuitem_red" href="">Red button</a>
                    
            </div>
            
            
            <div class="sidebar_box">
                <div class="sidebar_box_top"></div>
                <div class="sidebar_box_content">
                <h3>公告</h3>
                <img src="images/info.png" alt="" title="" class="sidebar_icon_right" />
              	 <ul>
                 <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                 </s:action>
                </ul>                
                </div>
                <div class="sidebar_box_bottom"></div>
            </div>
            
            <div class="sidebar_box">
                <div class="sidebar_box_top"></div>
                <div class="sidebar_box_content">
                <h4>协会活动资讯</h4>
                <img src="images/info.png" alt="" title="" class="sidebar_icon_right" />
                <ul>
                 <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                 </s:action>
                </ul>               
                </div>
                <div class="sidebar_box_bottom"></div>
            </div>
            
            <div class="sidebar_box">
                <div class="sidebar_box_top"></div>
                <div class="sidebar_box_content">
                <h5>夏都旅行社活动</h5>
                <img src="images/info.png" alt="" title="" class="sidebar_icon_right" />
                 <ul>
                 <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                 </s:action>
                </ul>               
                </div>
                <div class="sidebar_box_bottom"></div>
            </div>  
            
            <div class="sidebar_box">
                <div class="sidebar_box_top"></div>
                <div class="sidebar_box_content">
                <h3>西部传媒活动</h3>
                <img src="images/info.png" alt="" title="" class="sidebar_icon_right" />
                <ul>
                 <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                 </s:action>
                </ul>                
                </div>
                <div class="sidebar_box_bottom"></div>
            </div>
            
            <div class="sidebar_box">
                <div class="sidebar_box_top"></div>
                <div class="sidebar_box_content">
                <h3>本周影赛排行榜</h3>
                <img src="images/info.png" alt="" title="" class="sidebar_icon_right" />
                <ul>
                 <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                 </s:action>
                </ul>                
                </div>
                <div class="sidebar_box_bottom"></div>
            </div>
</body>
</html>