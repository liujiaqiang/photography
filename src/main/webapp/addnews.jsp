<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>三边摄像网资讯发布平台</title>
<script type="text/javascript" src="dojo/1.7.2/dojo/dojo.js"
	djConfig="parseOnLoad: true"></script>
<link rel="stylesheet" href="css/jquery-ui.css">
<script type="text/javascript" src="ckeditor_4.3.1/ckeditor.js"></script>
<script type="text/javascript" src="ckfinder/ckfinder.js"></script>
<script type="text/javascript" src="js/jquery-1.10.1.js"></script>
<script type="text/javascript" src="js/jquery-ui.js"></script>
<script type="text/javascript" src="js/base.js"></script>
<script type="text/javascript" src="js/validate.js"></script>
<script type="text/javascript" src="js/photography.js"></script>
<script type="text/javascript">
    var editor = null;
    window.onload = function() {
        editor = CKEDITOR.replace( 'content', {
            on: {
                instanceReady: function( ev ) {
                    this.dataProcessor.writer.setRules( 'p', {
                        indent: false,
                        breakBeforeOpen: false,   //<p>之前不加换行
                        breakAfterOpen: false,    //<p>之后不加换行
                        breakBeforeClose: false,  //</p>之前不加换行
                        breakAfterClose: false    //</p>之后不加换行7
                    });
                }
            }
        });
        CKFinder.setupCKEditor( editor, 'ckfinder/' );
    };
</script>
<style type="text/css">
.description {
	border: 1px dotted #B7B7B7;
	margin-bottom: 10px;
	padding: 10px 10px 0;
	overflow: hidden;
}
</style>
</head>
<body>
<div align="right" style="font-size: 14px;"><font color="red" >当前登录用户 :<sec:authentication property="name"/></font>&nbsp;&nbsp;<a onclick="logout();" style="text-decoration: none;cursor: pointer;">注销</a></div>
<div align="right" style="font-size: 14px;"><a href="/healthnewseditor/listnews.jsp" style="text-decoration: none;">资讯列表</a></div>
<h1 align="center">三边摄像网资讯发布平台</h1>
<p class="titleline" style="background-color: #00cccc;height: 30px; border-radius: 4px 4px 4px 4px;"></p>
	<form id="myform" method="post"  enctype="multipart/form-data"> 
		<div class="description">
			<p>
				类型:<select id="state" style="width:150px" onchange="selectTypes()" >
				<option value="1">测试</option>
				<option value="2">发布</option>
				<option value="3">推荐</option>
			</select><br>
			</p>
			<p>
				类型:<select id="newsCategory" style="width:150px" onchange="selectCategory()" >
				<option value="1">夏都旅行社活动</option>
				<option value="2">西部传媒活动</option>
				<option value="3">协会信息</option>
				<option value="4">本周影赛排行榜</option>
				<option value="5">三边文化</option>
			</select><br>
			</p>
			<p>
				标题:<input type="text" id="title" name="title" style="width: 372px;"><br>
			</p>
			<p>
				摘要:<textarea id="summary" name="summary" cols="50" rows="5"style="overflow: auto;"></textarea>
			</p>
			<p>文章内容:</p>
		</div>
		<textarea id="content" name="content"></textarea>
		<p align="center"><input type="button" style="width: 70px;height: 30px;font-size: 16px;font-family: Verdana,Arial,sans-serif;background-color: #00cccc;" value="保存" id="saved" onclick="return save();" />
		<input type="reset" style="width: 70px;height: 30px;font-size: 16px;font-family: Verdana,Arial,sans-serif;background-color: #00cccc;" value="重置" /></p>
	</form> 
	<div id="dialog-modal" title="小编提示您！" style="display: none;">
		<p>Adding the modal overlay screen makes the dialog look more
			prominent because it dims out the page content.</p>
	</div>
</body>
</html>