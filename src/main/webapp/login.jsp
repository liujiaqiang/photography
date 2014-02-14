<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link REL="SHORTCUT ICON" HREF="images/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="js/contentslider.js">
</script>
</head>
<jsp:include page="include.jsp" />
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
           <jsp:include page="menu.jsp" />
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
                </div>
            </div>    
            <div id="templatemo_content_right">
            <form action="login.shtml" method="post">
	          <table>
	            <tr>
	              <td>用户名:</td>
	              <td><input  name="username" type="text"><br></td>
	            </tr>
	            <tr>
	              <td>密码:</td>
	              <td><input name="userpass" type="password"><br></td>
	            </tr> 
	            <tr>
	                <td colspan="2" align="center"><input value="提交"  type="submit"><a href="<%=request.getContextPath()%>/registerSimple.jsp">注册</a></td>
	            </tr>
	            <tr>
	                <td colspan="2" align="center"><a href="#">忘记密码</a></td>
	            </tr>
	            <tr>
	              <s:if test="#request.errorMessage!=null">
	                <td colspan="2" align="center"><font color="red"><s:property value="#request.errorMessage"></s:property></font></td>
	              </s:if>
	            </tr>
	          </table>
	        </form>
            </div>
        </div>
    </div>   
	
	<div id="templatemo_footer_panel">
    	<div id="templatemo_footer_section">
			Copyright © 2014 <a href="#">三边摄影网</a>
        </div>
    </div>
</body>
</html>