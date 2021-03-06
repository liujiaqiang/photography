<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>表单</title>
<jsp:include page="admininclude.jsp" />
</head>
<body>
	<div id="main_container">
		<div class="header">
			<div class="logo">
				<a href="#"><img src="../images/logo.gif" alt="" title=""
					border="0" /></a>
			</div>
			<div class="right_header">
				欢迎访问<a href="#">三边摄影网</a> | <a href="#" class="messages">(3) 消息</a>
				| <a href="#" class="logout">注销</a>
			</div>
			<div id="clock_a"></div>
		</div>
		<div class="main_content">
			<div class="menu">
				<jsp:include page="adminmenu.jsp" />
			</div>
			<div class="center_content">
				<div class="right_content">
				<!-- 	<h2>Warning Box examples</h2>

					<div class="warning_box">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</div>
					<div class="valid_box">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</div>
					<div class="error_box">Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</div> -->

					<h2>Nice Form example</h2>

					<div class="form">
						<form action="" method="post" class="niceform">

							<fieldset>
								<dl>
									<dt>
										<label for="email">Email Address:</label>
									</dt>
									<dd>
										<input type="text" name="" id="" size="54" />
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="password">Password:</label>
									</dt>
									<dd>
										<input type="text" name="" id="" size="54" />
									</dd>
								</dl>


								<dl>
									<dt>
										<label for="gender">Select categories:</label>
									</dt>
									<dd>
										<select size="1" name="gender" id="">
											<option value="">Select option 1</option>
											<option value="">Select option 2</option>
											<option value="">Select option 3</option>
											<option value="">Select option 4</option>
											<option value="">Select option 5</option>
										</select>
									</dd>
								</dl>
								<dl>
									<dt>
										<label for="interests">Select tags:</label>
									</dt>
									<dd>
										<input type="checkbox" name="interests[]" id="" value="" /><label
											class="check_label">Web design</label> <input type="checkbox"
											name="interests[]" id="" value="" /><label
											class="check_label">Business</label> <input type="checkbox"
											name="interests[]" id="" value="" /><label
											class="check_label">Simple</label> <input type="checkbox"
											name="interests[]" id="" value="" /><label
											class="check_label">Clean</label>
									</dd>
								</dl>

								<dl>
									<dt>
										<label for="color">Select type</label>
									</dt>
									<dd>
										<input type="radio" name="type" id="" value="" /><label
											class="check_label">Basic</label> <input type="radio"
											name="type" id="" value="" /><label class="check_label">Medium</label>
										<input type="radio" name="type" id="" value="" /><label
											class="check_label">Premium</label>
									</dd>
								</dl>



								<dl>
									<dt>
										<label for="upload">Upload a File:</label>
									</dt>
									<dd>
										<input type="file" name="upload" id="upload" />
									</dd>
								</dl>

								<dl>
									<dt>
										<label for="comments">Message:</label>
									</dt>
									<dd>
										<textarea name="comments" id="comments" rows="5" cols="36"></textarea>
									</dd>
								</dl>

								<dl>
									<dt>
										<label></label>
									</dt>
									<dd>
										<input type="checkbox" name="interests[]" id="" value="" /><label
											class="check_label">I agree to the <a href="#">terms
												&amp; conditions</a></label>
									</dd>
								</dl>

								<dl class="submit">
									<input type="submit" name="submit" id="submit" value="Submit" />
								</dl>


							</fieldset>

						</form>
					</div>
				</div>
				<!-- end of right content-->
			</div>
			<!--end of center content -->
			<div class="clear"></div>
		</div>
		<!--end of main content-->
		<div class="footer">
			<div class="left_footer" align="center">
				三边摄影网</a>
			</div>
			<div class="right_footer"></div>
		</div>
	</div>

</body>
</html>