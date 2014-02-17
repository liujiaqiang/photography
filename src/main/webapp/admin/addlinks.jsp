<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link REL="SHORTCUT ICON" HREF="images/favicon.ico" type="image/x-icon" />
<title>增加友情链接</title>
</head>
<body>
	<form action="addlinks.shtml" method="post">
		名称:<input name="name" type="text"><br>
		地址:<input name="address" type="text"><br>
		图片地址:<input name="imgUrl" type="text"><br>
		状态<input name="isShow" type="text"><br>
		<input value="提交"  type="submit"><input value="重置"  type="reset"><br>
	</form>
</body>
</html>