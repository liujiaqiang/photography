<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>三边摄影网</title>
<meta name="keywords" content="三边摄影网" />
<meta name="description" content="三边摄影网" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<script type="text/javascript" src="js/contentslider.js">
</script>
</head>
<body>
	<div id="templatemo_header_panel">
    	<div id="templatemo_header_section">
            <div id="templatemo_title_section">
                                                  三边摄影网
			</div>
            <div id="templatemo_search_section">
                <form method="get" action="#">
                    <input type="radio" name="search" value="thissite" />本站 <input type="radio" name="search" value="theweb" checked="checked" /> 百度 <br />
                    <input type="text" name="q" size="10" id="searchfield" title="searchfield" />
                    <input type="submit" name="Search" value="搜索" alt="搜索" id="searchbutton" title="搜索" />
                </form>
            </div>
        </div>
    </div> <!-- end of templatemo header panel -->
    
    <div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
            <ul>
                <li><a href="index.html"  class="current">首页</a></li>
                <li><a href="#">摄影论坛</a></li>
                <li><a href="#">个人影展</a></li>  
                <li><a href="#">影展影赛</a></li>
                <li><a href="#">影友专区</a></li> 
                <li><a href="#">协会信息</a></li>                     
                <li><a href="#">三边文化</a></li>                     
            </ul> 
		</div>
    </div> <!-- end of menu -->
    
	<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
				
                <div class="templatemo_post">
                	<h1>优秀作品</h1>
           
                    <div id="slider2" class="sliderwrapper">
                    <div class="contentdiv"><img src="images/templatemo_image_2.jpg" alt="image" /></div>
                    <div class="contentdiv"><img src="images/templatemo_image_3.jpg" alt="image" /></div>
                    <div class="contentdiv"><img src="images/templatemo_image_4.jpg" alt="image" /></div>
                    </div>
                    
                    <div id="paginate-slider2" class="pagination">
                    
                    <a href="#" class="toc">1</a> <a href="#" class="toc anotherclass">2</a> <a href="#" class="toc">3</a>
                    </div>
                    <script type="text/javascript">
                    
                    featuredcontentslider.init({
                    id: "slider2",  //id of main slider DIV
                    contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
                    toc: "markup",  //Valid values: "#increment", "markup", ["label1", "label2", etc]
                    nextprev: ["Previous", "Next"],  //labels for "prev" and "next" links. Set to "" to hide.
                    revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
                    enablefade: [true, 0.2],  //[true/false, fadedegree]
                    autorotate: [true, 3000],  //[true/false, pausetime]
                    onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
                    //previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
                    //curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
                    }
                    })
            
           			 </script>
                </div> <!-- end of one post -->
                
                <div class="templatemo_post">
                    <div class="post_title">
                    	个人影展
                        <div class="post_info">
                    		本作品由杜艳军同学于2014年1月23日在北京天安门拍摄！
	                    </div>
                    </div>
                    
                    <div class="post_body">
                        <img src="images/templatemo_image_1.jpg" alt="Free CSS" />
                        <p>Credits go to  for the texture and for photos.</p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三边摄影网由三边摄影协会主办,以摄影为主的网络信息传播平台。它以向社会传播摄影的声音，促进摄影改革与发展为己任，在保持中国摄影报权威性的同时，充分发挥互联网特性，增强吸引力、可读性、亲和力，力求打造成为摄影信息网络传播中心。</p>
                        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;三边摄影网由三边摄影协会主办,以摄影为主的网络信息传播平台。它以向社会传播摄影的声音，促进摄影改革与发展为己任，在保持中国摄影报权威性的同时，充分发挥互联网特性，增强吸引力、可读性、亲和力，力求打造成为摄影信息网络传播中心。三边摄影网由三边摄影协会主办,以摄影为主的网络信息传播平台。它以向社会传播摄影的声音，促进摄影改革与发展为己任，在保持中国摄影报权威性的同时，充分发挥互联网特性，增强吸引力、可读性、亲和力，力求打造成为摄影信息网络传播中心。</p>
                    </div>
                    <div class="post_comment">
                    	<a href="#">没有评论</a>
                    </div>
                </div> <!-- end of post two -->

                
            </div> <!-- end of content left -->
        
            <div id="templatemo_content_right">
            
                <div class="templatemo_right_section">
                    <h2>公告</h2>
                   	<ul>
                       <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                       </s:action>
                    </ul>    
                </div>
            
            	<div class="templatemo_right_section">
                	<h2>协会活动资讯</h2>
					<ul>
                       <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                       </s:action>
                    </ul>    
                </div>
                
                <div class="templatemo_right_section">
                	<h2>夏都旅行社活动发布</h2>
					<ul>
                        <s:action name="listnews" namespace="/" executeResult="true">
                        	<s:param name="newscategory" value="1"></s:param>
                        </s:action>
                    </ul>  
                </div>
                
                <div class="templatemo_right_section">
	                <h2>西部传媒活动发布</h2>
                	<ul>	
                        <s:action name="listnews" namespace="/" executeResult="true">
                        	<s:param name="newscategory" value="1"></s:param>
                        </s:action>
                    </ul>
                </div>
                
                <div class="templatemo_right_section">
	                <h2>本周影赛排行榜</h2>
                	<ul>	
                        <s:action name="listnews" namespace="/" executeResult="true">
                        	<s:param name="newscategory" value="1"></s:param>
                        </s:action>
                    </ul>
                </div>
                
            </div> <!-- end of right content -->
	    </div> <!-- end of content -->
    </div> <!-- end of content container -->

	<div id="templatemo_bottom_panel">
    	<div id="templatemo_bottom_section">
        
	        <div class="templatemo_bottom_section_content">
                <h3>本站简介</h3>
                <p>三边摄影网由三边摄影协会主办,以摄影为主的网络信息传播平台。它以向社会传播摄影的声音，促进摄影改革与发展为己任，在保持中国摄影报权威性的同时，充分发挥互联网特性，增强吸引力、可读性、亲和力，力求打造成为摄影信息网络传播中心。</p>
            	
            </div>
            <div class="templatemo_bottom_section_content">
                <h3>友情链接</h3>
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
                    <li><a href="#">夏都旅行社</a></li>
                    <li><a href="#">西部传媒</a></li>
                    <li><a href="#">夏都旅行社</a></li>
                    <li><a href="#">西部传媒</a></li>
                    <li><a href="#">夏都旅行社</a></li>
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