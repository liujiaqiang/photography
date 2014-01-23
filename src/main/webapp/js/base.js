var home="http://localhost:6635/photography/"; //上线地址
var channel="http://localhost:6635/solr/news";

function logout(){
	location.href=home+"logout";
}

function selectTypes(){
	var state=document.getElementById("state");
	for(var i=0;i<10;i++){
		if(state.options[i].selected){
			 return state.options[i].value;
		}
	}
}

function selectCategory(){
	var newsCategory=document.getElementById("newsCategory");
	for(var i=0;i<20;i++){
		if(newsCategory.options[i].selected){
			return newsCategory.options[i].value;
		}
	}
}
