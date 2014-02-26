<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>发帖</title>
</head>
<body>
<h1 align="center">三边摄影论坛发布</h1>
<p class="titleline" style="background-color: #00cccc;height: 30px; border-radius: 4px 4px 4px 4px;"></p>
    <div align="center">
      <form action="bbsPublish.shtml" id="form1" method="post">
        <table>
            <tr>
                <td>帖子标题</td>
                <td><input type="text" id="bbs_name" name="name" style="width:500px"></td>
            </tr>
        
            <tr>
                <td>帖子分类</td>
                <td><select name="classify" id="bbs_Classify" style="width:150px">
                    <option value="1">摄影</option>
                    <option value="2">非摄影</option>
                 
                </select></td>
            </tr>
            
            <tr>
                <td>帖子内容</td>
                <td><textarea name="comtent" id="bbs_comtent" rows="10"  style="width:500px"></textarea></td>
            </tr>
            
            <tr>
                <td>帖子关键字</td>
                <td><input type="text" name="remark" id="bbs_remark"  style="width:500px"></td>
            </tr>
            
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" onclick="return chkSub()" value="发表帖子"><input type="button" onclick="setStatus()" value="保存草稿">
                </td>
            </tr>
            <tr>
                <td><input type="hidden" id="status" name="status" value="1">
                </td>
            </tr>
        </table>
      </form>
    </div>

</body>
<script type="text/javascript">
    function setStatus(){
    	document.getElementById("status").value = 0;
    	if(chkSub()){
    	document.getElementById("form1").submit();    		
    	}
    }
    
    function chkSub(){
    	var bbs_name = document.getElementById("bbs_name").value;
    	var bbs_comtent = document.getElementById("bbs_comtent").value;
    	var bbs_remark = document.getElementById("bbs_remark").value;
    	if(null == bbs_name || bbs_name == ""){
    		alert("标题不能为空");
    		return false;
    	}
    	if(null == bbs_comtent || bbs_comtent == ""){
    		alert("帖子内容不能为空");
    		return false;
    	}
    	if(null == bbs_remark || bbs_remark == ""){
    		alert("帖子关键字不能为空");
    		return false;
    	}
    	return true;
    }

</script>
</html>