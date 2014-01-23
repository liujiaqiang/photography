function validate(){
	 
	if($("#title").val().trim()==""){
		closeWindow("请输入资讯标题!");
		$("#title").focus(1000);
		return false;
	}
	
	if($("#summary").val().trim()==""){
		closeWindow("请输入资讯摘要！");
		$("#summary").focus(1000);
		return false;
	}
	if(editor.getData().trim()==""){
		closeWindow("请输入资讯内容！");
		$("#content").focus(1000);
		return false;
	}
	return true;
}

function closeWindow(hint){
	$( "#dialog-modal" ).html(hint);
	$( "#dialog-modal" ).dialog({
		  width: 200,
	      height: 140,
	      modal: true,
	      draggable:false,
	      resizable:false,
	      show: { effect: "fade", duration: 600},
	      hide:{ effect: "drop", duration: 1500 }
	    });
	$( "#dialog-modal" ).dialog( "close",1000);
}