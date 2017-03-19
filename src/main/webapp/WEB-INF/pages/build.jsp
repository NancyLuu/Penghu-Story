<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<title>生物</title>
<link href="/resources/css/hiasp.css" rel="stylesheet" type="text/css">
</head>

<body>
<header class="primary_header">
 <div class="header_icon">
    <a href="/"><img src="/resources/pic/Icon.jpg" alt=""  width="249" height="auto"/></a>
  <p>Humanity lnnovation and Social Practice </p>
  </div>
  <div class="header_ul">
  <ul class="drop-down-menu">
	  <li><a href="">關於</a>
    	<ul>
			<li><a href="/origin">計畫緣起</a></li>
			<li><a href="/team">計畫支援團隊</a></li>
			<li><a href="/contact">聯絡我們</a></li>
    	</ul>
    </li>
	  <li><a href="">實踐研究團隊</a>
    	<ul>
			<li><a href="/culture">文化學習</a></li>
    	</ul>
	</li>
	  <li><a href="">發表平台</a>
    	<ul>
			<li><a href="/pculture">文化</a></li>
			<li><a href="/build">建築</a></li>
			<li><a href="/animal">生物</a></li>
   			<li><a href="/publish">發表新文章</a></li>
    	</ul>
    </li>
  </ul>
  </div>
</header>
<main class="container">
	<div class="showPubilsh_Right_div">
		<h4>精選消息</h4>
		<!--下方為文章列表-->
		
		
		
	</div>
  <div style="height: auto">
     <h2>研究手札</h2>
     <!--一個文章區塊-->
    <div class="showPubilsh_Left_div">
        <c:forEach items="${buildContent}" var="b">
		    <tr>
		     <div><td><c:out value="${b.publish_time}"/></td></div>
		     <div><td><c:out value="${b.author}" /></td></div>
		     <div><td><c:out value="${b.title}"/></td></div>
		     <div><td><c:out value="${b.Introduction}"/></td></div>
		   </tr>
		 </c:forEach>
    <img src="/resources/pic/sssccc.com_photo_0102248.jpg" width="314" height="209" alt=""/>
    <a href="/build1" >繼續閱讀...</a>
    </div>
  
</div>
</main>
<footer>
<hr>
	<p>
			本網站由中央研究院數位文化中心協助維護。<br><br>
			Copyright © 2014 科技部人文創新與社會實踐資料庫建置計畫 All Rights Reserved.<br><br>
			「新作坊」採用創用CC(Creative Commons)姓名標示─非商業性─禁止改作 3.0 台灣授權條款，歡迎在遵守授權條款的情況下，自由使用與流通本平台的研究資訊與深度調查成果。
  </p>
</footer>
</body>
</html>
