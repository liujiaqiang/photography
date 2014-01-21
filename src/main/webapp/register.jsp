<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
</head>
<body>
	<form action="register.shtml" method="post">
		用户名:<input name="username" type="text"><br>
		密码:<input name="userpass" type="password"><br>
		昵称:<input name="nickname" type="text"><br>
		真实姓名:<input name="realname" type="text"><br>
		Email:<input name="email" type="text"><br>
		手机号码:<input name="phone" type="text"><br>
		生日:<input name="birthday" type="text"><br>
		图像地址:<input name="imgUrl" type="text"><br>
		状态:<input name="islock" type="text"><br>
		<input value="提交"  type="submit"><input value="重置"  type="reset"><br>
	</form>
</body>
</html>