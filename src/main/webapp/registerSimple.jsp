<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>简易注册</title>
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
	              <td>用户名:</td>
	              <td><input name="username" type="text" id="username" onblur="chkUserName()"></td>
	              <td><font color="red">*</font></td>
	          </tr>
	          <tr>
	              <td>密码:</td>
	              <td><input name="userpass" type="password" id="userpass" onblur="chkPass()"></td>
	              <td><font color="red">*</font></td>
	          </tr>
	          <tr>
	              <td>确认密码:</td>
	              <td><input name="userpass1" type="password" id="userpass1" onblur="chkPass1()"></td>
	              <td><font id="" color="red">*</font></td>
	          </tr>
	          <tr>
	              <td>昵称:</td>
	              <td><input name="nickname" type="text" id="nickname" onblur="chkNickName()"></td>
	              <td><span style="color: red" id="nicknameF">*</span></td>
	          </tr>
	          <tr>
	              <td>Email:</td>
	              <td><input name="email" type="text" id="email" onblur="chkEmail()"></td>
	              <td><span style="color: red" id="emailF"></span></td>
	          </tr>
	          <tr>
	              <td>手机号码:</td>
	              <td><input name="phone" type="text" id="phone" onblur="chkPhone()"></td>
	              <td><span style="color: red" id="phoneF"></span></td>
	          </tr>
	          <tr> 
	              <td colspan="3" align="center"><input onclick="chkSub()" value="提交"  type="submit"><input value="重置"  type="reset"></td>
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
    	if(null == userName || userName == ""){
    		alert("用户名不能为空");
    		return;
    	}
    }
    function chkPass(){
    	var userpass = document.getElementById("userpass").value;
    	if(null == userpass || userpass == ""){
    		alert("密码不能为空");
    		return;
    	}
    }
    
    function chkPass1(){
    	var userpass1 = document.getElementById("userpass1").value;
    	var userpass = document.getElementById("userpass").value;
    	if(userpass != userpass1){
    		alert("俩次密码必须一致！！！");
    		return;
    	}
    }

    function chkNickName(){
    	var nickname = document.getElementById("nickname").value;
    	if(null == nickname || nickname == ""){
    		alert("昵称不能为空");
    		return;
    	}
    }
    function chkEmail(){
    	var email = document.getElementById("email").value;
    	var emailF = document.getElementById("emailF");
    	var pattern = /^\w+[@]\w+[.][\w.]+$/;
    	if(pattern.test(email)){
    		emailF.innerText = "正确";
    		
    	}else{
    		alert("邮箱格式不正确,请重新输入");
    		return;
    	}
    	
    }
    function chkPhone(){
    	var phone = document.getElementById("phone").value;
    	if(null == phone || phone == ""){
    		alert("电话不能为空");
    		return;
    	}
    }
    
    function chkSub(){
    	chkUserName();
    }
   
</script>
</html>