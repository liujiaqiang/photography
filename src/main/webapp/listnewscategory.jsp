<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><s:property value="news.title" /></title>
<meta name="keywords" content="三边摄影网" />
<meta name="description" content="三边摄影网" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="js/base.js"></script>
</head>
<body>
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
            <ul>
                <li><a href="index.jsp"  class="current">首页</a></li>
                <li><a href="newsdetail.shtml?id=AwAHBwgBAQYAAQAGAAAEBgAAAAgJAAAAAAAABwQDCAgGAAAB">摄影论坛</a></li>
                <li><a href="newsdetail.shtml?id=AAAAAwMICAAABQAABAAEAAIAAAgJBAMAAAgBAAAEAAAAAAAA">个人影展</a></li>  
                <li><a href="newsdetail.shtml?id=AAYCAAACAgYACAQJCQAEAgAAAAgFAgAAAAAAAAIAAAQDCAIB">影展影赛</a></li>
                <li><a href="newsdetail.shtml?id=CAAAAAQDAAAAAAAGBwAEBgAAAAgGAAAACAcFAAACAwgGCAkA">影友专区</a></li> 
                <li><a href="newsdetail.shtml?id=AwAHBwgBAQYAAQAGAAAEBgAAAAgJAAAAAAAABwQDCAgGAAAB">协会信息</a></li>                     
                <li><a href="newsdetail.shtml?id=AAAAAwMICAAABQAABAAEAAIAAAgJBAMAAAgBAAAEAAAAAAAA">三边文化</a></li>                        
            </ul> 
		</div>
    </div> <!-- end of menu -->
    
	<div id="templatemo_content_container">
        <div id="templatemo_content" style="color: #dbb4e0;min-height: 500px;">
			<ul>
	            <s:action name="listnews" namespace="/" executeResult="true">
	            	<s:param name="newscategory" value="1"></s:param>
	            </s:action>
           </ul>  
	    </div> <!-- end of content -->
    </div> <!-- end of content container -->

	<div id="templatemo_bottom_panel">
    	<div id="templatemo_bottom_section">
        
	        <div class="templatemo_bottom_section_content">
                <h3>本站简介</h3>
                <p>三边摄影网由三边摄影协会主办,以摄影为主的网络信息传播平台。它以向社会传播摄影的声音，促进摄影改革与发展为己任，在保持中国摄影报权威性的同时，充分发挥互联网特性，增强吸引力、可读性、亲和力，力求打造成为摄影信息网络传播中心。</p>
            	
            </div>
            <div class="templatemo_bottom_section_content">
                <h3>友情链接 </h3>
                <ul>
                    <li><a href="http://www.baidu.com" target="_parent">百度</a></li>
                    <li><a href="http://www.baidu.com" target="_parent">淘宝</a></li>
                    <li><a href="http://www.baidu.com" target="_parent">京东商城</a></li>
                    <li><a href="http://www.baidu.com" target="_parent">当当网</a></li>
                    <li><a href="http://www.baidu.com" target="_parent">一号店</a></li>
                </ul>
            </div>
            
            <div class="templatemo_bottom_section_content">
                <h3>合作伙伴</h3>
                 <ul>
                    <li><a href="http://www.mobifox.cn" target="_parent">夏都旅行社</a></li>
                    <li><a href="http://www.mobifox.cn" target="_parent">西部传媒</a></li>
                    <li><a href="http://www.mobifox.cn" target="_parent">夏都旅行社</a></li>
                    <li><a href="http://www.mobifox.cn" target="_parent">西部传媒</a></li>
                    <li><a href="http://www.mobifox.cn" target="_parent">夏都旅行社</a></li>
                </ul>
            </div>
        </div> <!-- end of templatemo bottom section -->
    </div> <!-- end of templatemo bottom panel -->
    <!--  HTML CSS Template from www.cssmoban.com  --> 
    <div id="templatemo_footer_panel">
    	<div id="templatemo_footer_section">
			Copyright © 2014 <a href="#">三边摄影网</a>
        </div>
    </div>
</body>
</html>