<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" href="images/favicon.ico" type="image/x-icon" />
<link REL="SHORTCUT ICON" HREF="images/favicon.ico" type="image/x-icon" />
<title>增加公告</title>
</head>
<body>
	<form action="addAnnouncement.shtml" method="post">
		标题:<input name="title" type="text"><br>
		内容:<input name="content" type="text"><br>
		发布者:<input name="author" type="text"><br>
		状态<input name="isShow" type="text"><br>
		<input value="提交"  type="submit"><input value="重置"  type="reset"><br>
	</form>
</body>
</html>