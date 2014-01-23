dojo.require("dojo.parser");
dojo.require("dojo.dnd.Source");
dojo.require("dojo.dom-construct");
dojo.require("dojox.uuid.generateRandomUuid");
dojo.require("dojox.encoding.base64");

function save() {
	if(!validate()){
		return false;
	}else{
		var uuid = dojox.uuid.generateRandomUuid();
		var imgUrl = dojox.encoding.base64.encode(uuid);
		var title = $("#title").val();
		var summary = $("#summary").val();
		var content = editor.getData();
		editor.updateElement(); //非常重要的一句代码
		var contentDatas = new Array();
		contentDatas[0] = new Object();
		contentDatas[0]["title"] = title;
		contentDatas[0]["summary"] = summary;
		contentDatas[0]["id"] = imgUrl;
		contentDatas[0]["premiereDate"] = new Date().getTime();
		contentDatas[0]["isShow"] = selectTypes();
		contentDatas[0]["newscategory"] = selectCategory();
		contentDatas[0]["content"] = content;

		var updateCommands = "{\"add\":";
		updateCommands += dojo.toJson(contentDatas);
		updateCommands += ",";
		updateCommands += "\"commit\": {}";
		updateCommands += "}";
		require([ "dojo/_base/xhr" ], function(xhr) {
			xhr.post({
				url : "http://localhost:6635/solr/news"
						+ "/update?commit=true&wt=json",
				handleAs : "json",
				headers : {
					"Content-Type" : "application/json; charset=utf-8"
				},
				postData : updateCommands,
				load : function(data) {
					closeWindow("资讯发布成功！！");
					Javascript:history.go(0);
				},
				error : function(error) {
					alert(error);
				}
			});
		});
//		location.href=home+"listnews.jsp";
		return true;
	}

}

