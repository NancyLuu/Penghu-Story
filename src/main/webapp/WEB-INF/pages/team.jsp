<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<script>
function openAboutBlock(evt, cityName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
} 
</script>
<title>計畫支援團隊</title>
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
	<div>
    <img src="/resources/pic/R0192990.jpg" width="100%" height="100%" alt=""/> </div>	
    
    <ul class="tab">
  <li><a href="javascript:void(0)" class="tablinks" onclick="openAboutBlock(event, 'Description')">議題說明</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openAboutBlock(event, 'Database_build')">資料庫建置計畫團隊</a></li>
</ul>

<div id="Description" class="tabcontent" style="display: block">
  <h3>推動與協調計畫團隊</h3>
<p>負責「人文創新與社會實踐計畫」之協調、整合、實地訪視與觀察紀錄的工作。針對獲得補助學校，協助科技部對研究團隊進行協調整合、研究計畫推動過程記錄與個案書寫、計畫實施成效之評估與稽核、辦理人文創新與社會實踐定期工作會議、以及人文創新與社會實踐案例寫作工坊等工作。</p>

<p>透過定期討論和意見交換、操作經驗分享交流發展各種可能的推動模式、系統性的記錄和實地訪視累積細緻的操作程序、評估研究團隊學術研究和社會實踐的具體影響。期待透過「人文創新與社會實踐計畫」先期全校型計畫的有效推動，建立成功的案例，提供其他學校進行人文創新和社會實踐的各項計畫之參考，逐漸產生有單點連結到線，並擴大到面的影響。</p>
<h3>團隊成員</h3>
<div style="height: 500px">
<div class="member">
	<h3>計畫主持人</h3>
	<h2>name</h2>
	<p>經歷</p>
</div>
<div class="member">
	<h3>計畫主持人</h3>
	<h2>name</h2>
	<p>經歷</p>
</div>
<div class="member">
	<h3>計畫主持人</h3>
	<h2>name</h2>
	<p>經歷</p>
</div>
<div class="member">
	<h3>計畫主持人</h3>
	<h2>name</h2>
	<p>經歷</p>
</div>
</div>

</div>

<div id="Database_build" class="tabcontent">
  <h3>資料庫建置計畫團隊</h3>
	  <div>
<p>人文創新與社會實踐資料庫建置目的在於，有系統蒐集全球文獻與代表性實踐案例，進行比較分析彙整，協助學術實踐、社會運動及在地培力的相關研究及實踐者，掌握國內外人文創新與社會實踐之理論和實踐結合的不同可能性，以促成台灣特色的實踐模式與學術新典範的建構發展。本計畫除相關資料儲存與成果共享外，亦期待發展為國內外人文創新與社會實踐經驗及研究的交流平台。</p>
  </div>
  <div style="height: 500px">
<div class="member">
	<h3>計畫主持人</h3>
	<h2>name</h2>
	<p>經歷</p>
</div>
<div class="member">
	<h3>計畫主持人</h3>
	<h2>name</h2>
	<p>經歷</p>
</div>
<div class="member">
	<h3>計畫主持人</h3>
	<h2>name</h2>
	<p>經歷</p>
</div>
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
