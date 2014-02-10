<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<jsp:include page="include.jsp" />
<script type="text/javascript" src="js/contentslider.js">
</script>
<title>用户注册</title>
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
           <jsp:include page="menu.jsp" />
		</div>
    </div> <!-- end of menu -->
    
    <div id="templatemo_content_container">
      <div id="templatemo_content">
        <div id="templatemo_content_middle">
	    <form action="register.shtml" method="post">
	    <table>
	      <tr>
	          <td>用户名:</td>
	          <td><input name="username" type="text"><br></td>
	      </tr>
	      <tr>
	          <td>密码:</td>
	          <td><input name="userpass1" type="password"><br></td>
	      </tr>
	      <tr>
	          <td>确认密码:</td>
	          <td><input name="userpass" type="password"><br></td>
	      </tr>
	      <tr>
	          <td>昵称:</td>
	          <td><input name="nickname" type="text"><br></td>
	      </tr>
	      <tr>
	          <td>真实姓名:</td>
	          <td><input name="realname" type="text"><br></td>
	      </tr>
	      <tr>
	          <td>Email:</td>
	          <td><input name="email" type="text"><br></td>
	      </tr>
	      <tr>
	          <td>手机号码:</td>
	          <td><input name="phone" type="text"><br></td>
	      </tr>
	      <tr>
	          <td>生日:</td>
	          <td><input name="birthday" type="text"><br></td>
	      </tr>
	      <tr>
	          <td>图像地址:</td>
	          <td><input name="imgUrl" type="text"><br></td>
	      </tr>
	      <tr>
	          <td colspan="2" align="center"><input value="提交"  type="submit"><input value="重置"  type="reset">
	          </td>
	      </tr>
	    </table>
	    </form>
	   </div>
	  </div>
	</div>
</body>
</html>