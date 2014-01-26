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
<div id="main_container">
	<div class="header">
    <div class="logo"><a href="#"><img src="images/logo.gif" alt="" title="" border="0" /></a></div>
    
    <div class="right_header">欢迎访问<a href="#">三边摄影网</a> | <a href="#" class="messages">(3) 消息</a> | <a href="#" class="logout">注销</a></div>
    <div id="clock_a"></div>
    </div>
    <div class="main_content">
              <div class="menu">
              	 <jsp:include page="adminmenu.jsp" />
              </div>      
			<div class="center_content">
				<div class="left_content">
					<jsp:include page="adminleft.jsp" />
				</div>
				<div class="right_content">
					 <s:action name="listnewscategory" namespace="/" executeResult="true">
                      </s:action>
				</div><!-- end of right content-->
			</div><!--end of center content -->
			<div class="clear"></div>
    </div> <!--end of main content-->
    <div class="footer">
    	<div class="left_footer" align="center">三边摄影网</a></div>
    	<div class="right_footer"></div>
    </div>
</div>		
</body>
</html>