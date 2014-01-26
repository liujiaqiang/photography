<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>三边摄影网</title>
<link rel="stylesheet" type="text/css" href="css/contentslider.css" />
<script type="text/javascript" src="js/contentslider.js">
</script>
<jsp:include page="include.jsp" />
</head>
<body>
	<div id="templatemo_header_panel">
    	<div id="templatemo_header_section">
            <div id="templatemo_title_section">
                                                  三边摄影网
			</div>
            <div id="templatemo_search_section">
                <form method="get"  target="_blank" id="myform">
                    <input type="radio" name="search" value="thissite" checked="checked" />本站 <input type="radio" name="search" value="theweb"/> 百度 <br />
                    <input type="text" name="word" size="10" id="searchfield" title="searchfield" />
                    <input type="submit" onclick="return checksearch();" name="Search" value="搜索" alt="搜索" id="searchbutton" title="搜索" />
                </form>
            </div>
        </div>
    </div> <!-- end of templatemo header panel -->
    
    <div id="templatemo_menu_panel">
    	<div id="templatemo_menu_section">
           <jsp:include page="menu.jsp" />
		</div>
    </div> <!-- end of menu -->
    
	<div id="templatemo_content_container">
        <div id="templatemo_content">
            <div id="templatemo_content_left">
				
                <div class="templatemo_post">
                	<h1>优秀作品</h1>
           
                    <div id="slider2" class="sliderwrapper">
                    <div class="contentdiv"><img src="images/templatemo_image_2.jpg" alt="image" /></div>
                    <div class="contentdiv"><img src="images/templatemo_image_3.jpg" alt="image" /></div>
                    <div class="contentdiv"><img src="images/templatemo_image_4.jpg" alt="image" /></div>
                    </div>
                    
                    <div id="paginate-slider2" class="pagination">
                    
                    <a href="#" class="toc">1</a> <a href="#" class="toc anotherclass">2</a> <a href="#" class="toc">3</a>
                    </div>
                    <script type="text/javascript">
                    
                    featuredcontentslider.init({
                    id: "slider2",  //id of main slider DIV
                    contentsource: ["inline", ""],  //Valid values: ["inline", ""] or ["ajax", "path_to_file"]
                    toc: "markup",  //Valid values: "#increment", "markup", ["label1", "label2", etc]
                    nextprev: ["Previous", "Next"],  //labels for "prev" and "next" links. Set to "" to hide.
                    revealtype: "click", //Behavior of pagination links to reveal the slides: "click" or "mouseover"
                    enablefade: [true, 0.2],  //[true/false, fadedegree]
                    autorotate: [true, 3000],  //[true/false, pausetime]
                    onChange: function(previndex, curindex){  //event handler fired whenever script changes slide
                    //previndex holds index of last slide viewed b4 current (1=1st slide, 2nd=2nd etc)
                    //curindex holds index of currently shown slide (1=1st slide, 2nd=2nd etc)
                    }
                    })
            
           			 </script>
                </div> <!-- end of one post -->
                
                <div class="templatemo_post">
                    <div class="post_title">
                    	个人影展
                        <div class="post_info">
                    		本作品由杜艳军同学于2014年1月23日在北京天安门拍摄！
	                    </div>
                    </div>

					<div class="post_body">
						<p style="text-align:center">
							<span style="font-size:20px"><strong>习近平同党外人士共迎新春</strong></span>
						</p>
						<p style="text-align:justify">
							<strong>代表中共中央，向各民主党派、工商联和无党派人士，向统一战线广大成员，致以新春的祝福</strong>
						</p>
						<p style="text-align:justify">
							<strong>俞正声、张高丽出席</strong>
						</p>
						<img src="http://localhost:6635/news/images/1390489813_lUGnCp.jpg" alt="习近平同党外人士共迎新春" />
						<p style="text-align:justify">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;新华网北京1月23日电(记者霍小光)
							&nbsp;&nbsp;&nbsp;&nbsp;在春节即将到来之际，中共中央总书记、国家主席、中央军委主席习近平22日下午在人民大会堂同各民主党派中央、全国工商联负责人和无党派人士代表欢聚一堂，共迎新春。他代表中共中央，向各民主党派、工商联和无党派人士，向统一战线广大成员，致以诚挚的问候和新春的祝福。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中共中央政治局常委、全国政协主席俞正声，中共中央政治局常委、国务院副总理张高丽出席。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;民革中央主席万鄂湘、民盟中央主席张宝文、民建中央主席陈昌智、民进中央主席严隽琪、农工党中央主席陈竺、致公党中央主席万钢、九三学社中央主席韩启德、台盟中央主席林文漪、全国工商联主席王钦敏和无党派人士代表林毅夫、邓中翰等应邀出席。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;陈竺代表各民主党派中央、全国工商联和无党派人士致辞。他指出，2013年，以习近平同志为总书记的中共中央带领全国人民团结奋斗，谋局开篇大略已定，首战奏捷大势已成。中共十八届三中全会对全面深化改革作出了总体部署，作为中国特色社会主义参政党，我们一定要与中国共产党风雨同舟、肝胆相照，做挚友、做诤友，讲真话、建诤言，加强自身建设，旗帜鲜明支持改革，既要献良策，也要出大力，彰显中国共产党领导的多党合作和政治协商制度的旺盛活力。他还就加强党外人士民主监督工作等提出意见和建议。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;在听取了陈竺同志致辞后，习近平发表重要讲话。他首先表示，再过几天，就是农历马年春节了。我念两副报纸上刊登的春联送给大家，一副是&ldquo;骏马追风扬气魄，寒梅傲雪见精神&rdquo;，另一副是&ldquo;昂首扬鬃，骏马舞东风，追求梦想；斗寒傲雪，红梅开大地，实现复兴。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;习近平指出，2013年，对我们国家来说，是很不平凡的一年。面对复杂多变的国际形势和艰巨繁重的国内改革发展稳定任务，中国共产党紧紧依靠包括各民主党派、工商联和无党派人士在内的全国各族人民，共同战胜了各种困难和挑战，取得了新的显著成就。在过去的一年里，各民主党派、工商联和无党派人士适应时代要求，充分发挥自身优势，主动奋发有为，同中国共产党一道，推动统一战线和多党合作事业向前发展，为全面建成小康社会作出了新的贡献。习近平代表中共中央，向各民主党派、工商联和无党派人士，向统一战线广大成员表示衷心的感谢。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;习近平指出，做好今年各项工作，需要中国共产党同各民主党派、工商联和无党派人士加强团结合作，共同不懈努力。一个篱笆三个桩，一个好汉三个帮。实践证明，建立新中国，建设新中国，开拓改革路，实现中国梦，都需要各党派团体和各界人士齐心努力。越是处于改革攻坚期，越需要汇集众智、增强合力；越是处于发展关键期，越需要凝聚人心、众志成城。希望同志们积极引导所联系群众，凝聚广泛共识，积聚强大能量，深入考察调研，提出真知灼见，让党和政府看问题更全面，作决策更科学。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;习近平强调，协商民主是我国社会主义民主政治的重要组成部分，是我国社会主义民主政治的特有形式和独特优势，也是中国共产党执政和决策的重要方式。希望同志们更加主动发展好协商民主，不断提高协商民主成效和水平。中国共产党各级组织特别是领导干部要以开阔的胸襟、平等的心态、民主的作风广纳群言、广集众智，丰富协商民主形式，增强民主协商实效，为民主党派、工商联和无党派人士发挥作用创造有利条件。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;习近平指出，坚持和发展中国特色社会主义，要求中国共产党加强自身建设，也要求各参政党加强自身建设。希望同志们准确把握建设中国特色社会主义参政党的基本要求，继承优良传统，把握时代要求，不断提高政治把握能力、参政议政能力、组织领导能力、合作共事能力，努力把中国特色社会主义参政党建设提高到一个新的水平。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;最后，习近平以龙马精神、万马奔腾、快马加鞭、马到成功同与会者共勉。</p>
						<p style="text-align:justify">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;栗战书，各民主党派中央、全国工商联有关负责人，中央有关部门负责同志参加活动。</p>
					</div>
                </div> <!-- end of post two -->

                
            </div> <!-- end of content left -->
        
            <div id="templatemo_content_right">
            
                <div class="templatemo_right_section">
                    <h2>公告</h2>
                   	<ul>
                       <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                       </s:action>
                       <li ><a href="listnewscategory.jsp" target="_blank">更多>></a></li>
                    </ul>    
                </div>
            
            	<div class="templatemo_right_section">
                	<h2>协会活动资讯</h2>
					<ul>
                       <s:action name="listnews" namespace="/" executeResult="true">
                       		<s:param name="newscategory" value="1"></s:param>
                       </s:action>
                        <li ><a href="listnewscategory.jsp" target="_blank">更多>></a></li>
                    </ul>    
                </div>
                
                <div class="templatemo_right_section">
                	<h2>夏都旅行社活动</h2>
					<ul>
                        <s:action name="listnews" namespace="/" executeResult="true">
                        	<s:param name="newscategory" value="1"></s:param>
                        </s:action>
                         <li ><a href="listnewscategory.jsp" target="_blank">更多>></a></li>
                    </ul>  
                </div>
                
                <div class="templatemo_right_section">
	                <h2>西部传媒活动</h2>
                	<ul>	
                        <s:action name="listnews" namespace="/" executeResult="true">
                        	<s:param name="newscategory" value="1"></s:param>
                        </s:action>
                         <li ><a href="listnewscategory.jsp" target="_blank">更多>></a></li>
                    </ul>
                </div>
                
                <div class="templatemo_right_section">
	                <h2>本周影赛排行榜</h2>
                	<ul>	
                        <s:action name="listnews" namespace="/" executeResult="true">
                        	<s:param name="newscategory" value="1"></s:param>
                        </s:action>
                         <li ><a href="listnewscategory.jsp" target="_blank">更多>></a></li>
                    </ul>
                </div>
                
            </div> <!-- end of right content -->
	    </div> <!-- end of content -->
    </div> <!-- end of content container -->

	<div id="templatemo_bottom_panel">
    	<div id="templatemo_bottom_section">
           <jsp:include page="bottom.jsp" />
        </div> <!-- end of templatemo bottom section -->
    </div> <!-- end of templatemo bottom panel -->
    <div id="templatemo_footer_panel">
    	<div id="templatemo_footer_section">
			Copyright © 2014 <a href="#">三边摄影网</a>
        </div>
    </div>
</body>
</html>