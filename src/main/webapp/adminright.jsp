<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>三边摄影网后台管理系统</title>
<jsp:include page="admininclude.jsp" />
</head>
<body>
	<h2>资讯分类信息</h2>
	<table id="rounded-corner" summary="2007 Major IT Companies' Profit">
		<thead>
			<tr>
				<th scope="col" class="rounded-company"></th>
				<th scope="col" class="rounded">名称</th>
				<th scope="col" class="rounded">详细描述</th>
				<th scope="col" class="rounded">创建时间</th>
				<th scope="col" class="rounded">编辑</th>
				<th scope="col" class="rounded-q4">删除</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="6" class="rounded-foot-left"><em>
					包括协会信息，三边文化，新闻资讯，夏都旅行社，
				</em></td>
				<td class="rounded-foot-right">&nbsp;</td>

			</tr>
		</tfoot>
		<tbody>
		
			<s:iterator value="newsCategorys" var="newsCategory">
				<tr>
					<td><input type="checkbox" name="" /></td>
					<td><s:property value="#newsCategory.name"/></td>
					<td><s:property value="#newsCategory.description"/></td>
					<td><s:date name="currentDate" format="yyyy/MM/dd/HH:mm"/></td>
	
					<td><a href="#"><img src="images/user_edit.png" alt=""
							title="" border="0" /></a></td>
					<td><a href="#" class="ask"><img src="images/trash.png"
							alt="" title="" border="0" /></a></td>
				</tr>
			</s:iterator>
		<!--
			<tr>
				<td><input type="checkbox" name="" /></td>
				<td>Product name</td>
				<td>details</td>
				<td>150$</td>
				<td>12/05/2010</td>

				<td><a href="#"><img src="images/user_edit.png" alt=""
						title="" border="0" /></a></td>
				<td><a href="#" class="ask"><img src="images/trash.png"
						alt="" title="" border="0" /></a></td>
			</tr>
			
			 <tr>
				<td><input type="checkbox" name="" /></td>
				<td>Product name</td>
				<td>details</td>
				<td>150$</td>
				<td>12/05/2010</td>

				<td><a href="#"><img src="images/user_edit.png" alt=""
						title="" border="0" /></a></td>
				<td><a href="#" class="ask"><img src="images/trash.png"
						alt="" title="" border="0" /></a></td>
			</tr>

			<tr>
				<td><input type="checkbox" name="" /></td>
				<td>Product name</td>
				<td>details</td>
				<td>150$</td>
				<td>12/05/2010</td>

				<td><a href="#"><img src="images/user_edit.png" alt=""
						title="" border="0" /></a></td>
				<td><a href="#" class="ask"><img src="images/trash.png"
						alt="" title="" border="0" /></a></td>
			</tr>

			<tr>
				<td><input type="checkbox" name="" /></td>
				<td>Product name</td>
				<td>details</td>
				<td>150$</td>
				<td>12/05/2010</td>

				<td><a href="#"><img src="images/user_edit.png" alt=""
						title="" border="0" /></a></td>
				<td><a href="#" class="ask"><img src="images/trash.png"
						alt="" title="" border="0" /></a></td>
			</tr>
			<tr>
				<td><input type="checkbox" name="" /></td>
				<td>Product name</td>
				<td>details</td>
				<td>150$</td>
				<td>12/05/2010</td>

				<td><a href="#"><img src="images/user_edit.png" alt=""
						title="" border="0" /></a></td>
				<td><a href="#" class="ask"><img src="images/trash.png"
						alt="" title="" border="0" /></a></td>
			</tr>

			<tr>
				<td><input type="checkbox" name="" /></td>
				<td>Product name</td>
				<td>details</td>
				<td>150$</td>
				<td>12/05/2010</td>

				<td><a href="#"><img src="images/user_edit.png" alt=""
						title="" border="0" /></a></td>
				<td><a href="#" class="ask"><img src="images/trash.png"
						alt="" title="" border="0" /></a></td>
			</tr> -->

		</tbody>
	</table>

	<a href="#" class="bt_green"><span class="bt_green_lft"></span><strong>增加新分类</strong><span class="bt_green_r"></span></a>
	<a href="#" class="bt_blue"><span class="bt_blue_lft"></span><strong>显示所有分类</strong><span class="bt_blue_r"></span></a>
	<a href="#" class="bt_red"><span class="bt_red_lft"></span><strong>删除选中项</strong><span class="bt_red_r"></span></a>


	<%-- <div class="pagination">
		<span class="disabled"><< prev</span><span class="current">1</span><a
			href="">2</a><a href="">3</a><a href="">4</a><a href="">5</a>…<a
			href="">10</a><a href="">11</a><a href="">12</a>...<a href="">100</a><a
			href="">101</a><a href="">next >></a>
	</div> --%>


</body>
</html>