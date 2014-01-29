<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<jsp:include page="include.jsp" />
<title>用户注册</title>
</head>
<body>

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
	    </table>
		<input value="提交"  type="submit"><input value="重置"  type="reset">
		<input value="返回首页" >
	</form>
</body>
</html>