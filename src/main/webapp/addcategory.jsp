<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加资讯分类</title>
<jsp:include page="admininclude.jsp" />
</head>
<body>
	<div id="main_container">
		<div class="header">
			<div class="logo">
				<a href="#"><img src="images/logo.gif" alt="" title=""
					border="0" /></a>
			</div>
			<div class="right_header">
				欢迎访问<a href="#">三边摄影网</a> | <a href="#" class="messages">(3) 消息</a>
				| <a href="#" class="logout">注销</a>
			</div>
			<div id="clock_a"></div>
		</div>
		<div class="main_content" style="min-height: 500px;">
			<div class="menu">
				<jsp:include page="adminmenu.jsp" />
			</div>
			<div class="center_content">
				<div class="left_content">
					<jsp:include page="adminleft.jsp" />
				</div>
				<div class="right_content">
					<h2 align="center">增加分类</h2>
					<div class="form">
							<form action="addcategory.shtml" method="post" class="niceform">
							<fieldset>
								<dl>
									<dt>
										<label for="name">名称:</label>
									</dt>
									<dd>
										<input type="text" name="name" id="name" size="42" />
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="description">描述:</label>
									</dt>
									<dd>
										<textarea name="description" id="description" rows="5" cols="34"></textarea>
									</dd>
								</dl>
								<dl class="submit">
								<input type="submit" value="提交" /><input value="重置" type="reset">
								</dl>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div class="clear"></div>
		</div>
		<div class="footer">
			<div class="left_footer" align="center">
			</div>
			<div class="right_footer"></div>
		</div>
	</div>
</body>
</html>