<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>管理员注册</title>
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
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
       <div id="templatemo_content_middle">
        <form action="register.shtml" method="post">
	        <table>
	          <tr>
	              <td>管理员用户名:</td>
	              <td><input name="username" type="text" id="username" onblur="chkUserName()"></td>
	              <td align="left"><span style="color: red" id="usernameF">*</span></td>
	          </tr>
	          <tr>
	              <td>密码:</td>
	              <td><input name="userpass" type="password" id="userpass" onblur="chkPass()"></td>
	              <td align="left"><span style="color: red" id="userpassF">*</span></td>
	          </tr>
	          <tr>
	              <td>确认密码:</td>
	              <td><input name="userpass1" type="password" id="userpass1" onblur="chkPass1()"></td>
	              <td align="left"><span style="color: red" id="userpass1F">*</span></td>
	          </tr>
	          <tr>
	              <td>昵称:</td>
	              <td><input name="nickname" type="text" id="nickname" onblur="chkNickName()"></td>
	              <td align="left"><span style="color: red" id="nicknameF">*</span></td>
	          </tr>
	          <tr>
	              <td>真实名:</td>
	              <td><input name="realname" type="text" id="realname" onblur="chkRealname()"></td>
	              <td align="left"><span style="color: red" id="realnameF">*</span></td>
	          </tr>
	          <tr>
	              <td>生日:</td>
	              <td><input name="birthday" type="text" id="birthday" onblur="chkBirthday()"></td>
	              <td align="left"><span style="color: red" id="birthdayF">*</span></td>
	          </tr>
	          <tr>
	              <td>头像:</td>
	              <td><input name="imgUrl" type="text" id="imgUrl" onblur="chkRmgUrl()"></td>
	              <td align="left"><span style="color: red" id="imgUrlF">*</span></td>
	          </tr>
	          <tr>
	              <td>Email:</td>
	              <td><input name="email" type="text" id="email" onblur="chkEmail()"></td>
	              <td align="left"><span style="color: red" id="emailF">*</span></td>
	          </tr>
	          <tr>
	              <td>手机号码:</td>
	              <td><input name="phone" type="text" id="phone" onblur="chkPhone()"></td>
	              <td align="left"><span style="color: red" id="phoneF">*</span></td>
	          </tr>
	          <tr> 
	              <td colspan="3" align="center"><input onclick="return chkSub()" value="提交"  type="submit"><input value="重置"  type="reset"></td>
	          </tr>
	          <tr> 
	              <td><input type="hidden" name="ismanager" id="ismanager" value="2"></td>
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
<script type="text/javascript">

    function chkUserName(){
    	var userName = document.getElementById("username").value;
    	var userNameF = document.getElementById("userNameF");
    	if(null == userName || userName == ""){
    		usernameF.innerText = "用户名不能为空";
    		return false;
    	}else{
    		usernameF.innerText = "用户名正确";
    	}
    	
    	return true;
    }
    function chkPass(){
    	var userpass = document.getElementById("userpass").value;
    	var userpassF = document.getElementById("userpassF");
    	if(userpass.length<6){
    		userpassF.innerText = "密码必须大于六位";
    		return false;
    	}else{
    		userpassF.innerText = "密码格式正确";
    	}
    	return true;
    }
    
    function chkPass1(){
    	var userpass1 = document.getElementById("userpass1").value;
    	var userpass1F = document.getElementById("userpass1F");
    	var userpass = document.getElementById("userpass").value;
    	if(userpass != userpass1){
    		userpass1F.innerText = "俩次密码必须一致！！！";
    		return false;
    	}else{
    		userpass1F.innerText = "俩次密码输入正确！！！";
    	}
    	return true;
    }

    function chkNickName(){
    	var nickname = document.getElementById("nickname").value;
    	var nicknameF = document.getElementById("nicknameF");
    	if(null == nickname || nickname == ""){
    		nicknameF.innerText = "昵称不能为空";
    		return false;
    	}
    	return true;
    }
    function chkEmail(){
    	var email = document.getElementById("email").value;
    	var emailF = document.getElementById("emailF");
    	var pattern = /^\w+[@]\w+[.][\w.]+$/;
    	if(pattern.test(email)){
    		emailF.innerText = "正确";
    		
    	}else{
    		emailF.innerText = "邮箱格式不正确,请重新输入";
    		return false;
    	}
    	return true;
    	
    }
    function chkPhone(){
    	var phone = document.getElementById("phone").value;
    	var phoneF = document.getElementById("phoneF");
    	var pattern=/(^[0-9]{3,4}\-[0-9]{3,8}$)|(^[0-9]{3,8}$)|(^\([0-9]{3,4}\)[0-9]{3,8}$)|(^0{0,1}13[0-9]{9}$)/; 
    	if(pattern.test(phone)){
    		phoneF.innerText = "电话格式正确";
    		
    	}else{
    		phoneF.innerText = "电话格式不正确";
    		return false;
    	}
    	return true;
    }
    
    function chkSub(){
    	if(chkUserName() && chkPass() && chkPass1() && chkNickName() && chkEmail() && chkPhone()){
    		document.frm.submit();
    	}
    	return false;
    }
   
</script>
</html>