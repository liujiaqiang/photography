<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>论坛展示</title>
<link rel="stylesheet" type="text/css" href="../css/contentslider.css" />
<link href="../css/templatemo_style.css" rel="stylesheet" type="text/css" />
</head>
<body>
 <div id="templatemo_header_login">
     <s:if test="#session.nickName==null">
      <a href="<%=request.getContextPath()%>/login.jsp" class="toc">登录</a>
      <a href="<%=request.getContextPath()%>/registerSimple.jsp" class="toc">注册</a>
     </s:if>
     <s:else>
       <s:property value="#session.nickName"></s:property>
       <a href="<%=request.getContextPath()%>/loginExit.shtml">退出登录</a>
       <font ></font>
     </s:else>
    </div>
	<div id="templatemo_header_panel">
    	<div id="templatemo_header_section">
            <div id="templatemo_title_section">
                                                  三边摄影网
			</div>
            <div id="templatemo_search_section">
                <form method="get"  target="_blank" id="myform">
                    <input type="radio" name="search" value="thissite" checked="checked" />本站 <input type="radio" name="search" value="theweb"/> 百度 <br />
                    <input type="text" name="word" size="10" id="searchfield" title="searchfield" />
                    <input type="submit" onclick="return checksearch();" name="Search" value="搜索" alt="搜索" id="searchbutton" title="搜索" />
                </form>
            </div>
        </div>
    </div> <!-- end of templatemo header panel -->
    
    <div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <jsp:include page="../menu.jsp" />
		</div>
    </div> <!-- end of menu -->
    
    <div id="content" align="center">
    	<a href="<%=request.getContextPath()%>/bbs/addBBS.jsp" target="_blank">发帖</a>
    	<a href="<%=request.getContextPath()%>/bbs/addBBS.jsp" target="_blank">我的帖子</a>
    </div> 
    
    <div id="listBBS">
    
    </div>
    
    <div id="templatemo_footer_panel">
    	<div id="templatemo_footer_section">
			Copyright © 2014 <a href="#">三边摄影网</a>
        </div>
    </div>
</body>
</html>