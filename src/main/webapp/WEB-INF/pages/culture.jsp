<!doctype html>
<html>
<head>
<meta charset="utf-8">
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0YHjxhTqUPSIQtCRRLPsKmYZ8NUmiX00&callback=initMap">
</script>
<script>
function openBlock(evt, cityName) {
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
<link href="/resources/css/hiasp.css" rel="stylesheet" type="text/css">
<title>文化學習</title>
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
	<div class="contact_map" style="position: relative; overflow: hidden;">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3656.8127310788655!2d119.57870061458547!3d23.575168384676033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346c5add718feef7%3A0xd817f6ff5d943186!2z5ZyL56uL5r6O5rmW56eR5oqA5aSn5a24!5e0!3m2!1szh-TW!2stw!4v1486440591570" width="100%" height="100%" allowfullscreen></iframe> </div>
   <div class="team_header">
   	<h3>附屬單位</h3>
   	<h2>單位名稱</h2>
   </div>
<div>
 <ul class="tab" >
  <li><a href="javascript:void(0)" class="tablinks" onclick="openBlock(event, 'Explanation')">議題說明</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openBlock(event, 'Place')">實踐場地</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openBlock(event, 'Design')">行動設計方案</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openBlock(event, 'Member')">成員介紹</a></li>
  <li><a href="javascript:void(0)" class="tablinks" onclick="openBlock(event, 'Situation')">推動現況與成果</a></li>
</ul>
<div id="Explanation" class="tabcontent" style="display:block;">
  <div>
  <h3>展齡中心社區自營模式研究 （北醫行動場域）</h3>
	<p>子計畫一以「展齡中心的自營模式研究」為主要議題，以行動研究方法探索，目前由臺北醫學大學提供服務、公部門提供資源所支持的展齡中心，如何能夠成為社區自主營運活力展齡(active aging)據點？經行動研究人員初步田野參與觀察發現，展齡中心目前在服務使用者心目中，是優良服務提供方，換言之，如何透過行動方案設計，進一步促成長者間的互助合作，社區長者與青壯年的互助合作，讓社區的自主性力量，融入展齡中心的日常運作當中，是最為關鍵的議題。</p>

	<h3>提升高齡社區活躍老化之參與式照護（暖暖行動場域）</h3>

	<p>本次計畫希望透過實踐方案的設計，促進社區中新舊居民相互熟稔，世代之間互助，共同創造社區共老的機制與平台。我們希望『翻轉傳統高齡醫療』，並引入照護資源，創造都市邊緣社區的在地老化機制。此外，我們也希望達成『世代參與、守護家鄉』，透過建立社區平台，促進新舊居民參與公共議題，活絡社區內在的機能與生態。我們將以此兩大目標為導向，去實踐照護（care）的四個面向：醫療、社會、文化、生態，以達到在地老化的願景。</p>
	  <h3>以原民文化與生態為特色的泰雅族在地展齡模式 （尖石後山行動場域）</h3>
	<p>本計畫關心的議題與實作方向在於，如何建構以泰雅文化為基礎的健康照護與在地老化機制。每個文化都有自己的醫療與照護體系，當代主流的醫療照護追隨歐美的發展而日新月異，但在醫護關係中的文化敏感度卻一直懸宕不前。因此，我們未來希望透過本計畫，以尖石部落為實作場域，欲達成以下目標：1. 建構生態健康服務的在地知識2. 提升展齡照護的文化敏感度3. 強化自主的照護經濟模式。</p>

	<h3>影響活力展齡社區發展之社會結構與組織特性：跨城鄉與族群比較 (跨領域行動場域)</h3>

	<p>對本計畫而言，實作與反思可以說是並重並行的二個部份。在行動方面，我們透過各種在地的行動，與當地居民、團體合作達到活力展齡的目標。因此，我們在行動的同時，仍然持續的進行反思。透過參與各場域的活動、蒐集資料，我們研擬相關研究以瞭解各種行動的成效。除此之外，我們也透過比較各場域的不同脈絡來思考未來行動的可能方向。計畫中的各個場域有各自的脈絡，不論以城鄉、人口、族群、經濟面向來看皆然。如何瞭解各場域的社會結構，進而調整行動的方向，又如何在不同的脈絡中達到一致的願景（活力展齡），這亦是重要的議題。</p>
</div>
</div>
<div id="Place" class="tabcontent">
  <div style="height: 1200px">
  	<div class="place_block">
  		<h3>中平部落：一串小米工作室</h3>
	<p>中平部落行政區屬於花蓮縣卓溪鄉太平村，太平村由Tavila（太平）部落、Nakahila（中平）與Valau（中興）三個部落組成。人口約800人，95%為布農族人，以巒社群（Tabaknuaz）分佈最廣。太平村的布農族人自18世紀開始因耕地獵場不足、日人集團移住等不同原因，陸續自南投經中央山脈遷移至此。</p>
 	<p>由於郡社群的布農語是布農族裡的主導語言，比如巒社群這樣的非優勢方言在學校布農語教育中也處於劣勢地位，而且有越來越被邊緣化的危險。部落的小朋友在學校學習布農語后與家人的個別發音甚至會產生分歧，同樣的直到近期巒社布農語的歌本、聖經才在教會中逐漸取代郡社群布農語。布農語在不同年齡層呈現極大的分化差異。六十歲以上的老年族人大都講一口流利的布農語，詞匯量及表達的靈活程度都很高；三、四十歲以上的中年人布農語在詞匯量和流利程度上有明顯差異，但他們的優勢在於布農語與漢語都具有比較高的運用水平，因此可以成為漢語與布農語、主流文化與布農文化溝通的重要橋樑；二十歲左右的青年族人族語掌握退化尤其嚴重，比較好的可以聽懂，差一些的完全無法使用族語進行溝通。仍在學校的國高中生如果沒有足夠的族語教學，恐怕布農語的流失會無法挽回。由於部落中還有相當一部分族語流利的中老年人，在此的人口結構下，提供全心致力於推行布農語的良好環境。也是成立「一串小米族語獨立出版工作室」的背景。</p>
  	</div>
  	<div class="place_block">
  		<h3>中平部落：一串小米工作室</h3>
	<p>中平部落行政區屬於花蓮縣卓溪鄉太平村，太平村由Tavila（太平）部落、Nakahila（中平）與Valau（中興）三個部落組成。人口約800人，95%為布農族人，以巒社群（Tabaknuaz）分佈最廣。太平村的布農族人自18世紀開始因耕地獵場不足、日人集團移住等不同原因，陸續自南投經中央山脈遷移至此。</p>
 	<p>由於郡社群的布農語是布農族裡的主導語言，比如巒社群這樣的非優勢方言在學校布農語教育中也處於劣勢地位，而且有越來越被邊緣化的危險。部落的小朋友在學校學習布農語后與家人的個別發音甚至會產生分歧，同樣的直到近期巒社布農語的歌本、聖經才在教會中逐漸取代郡社群布農語。布農語在不同年齡層呈現極大的分化差異。六十歲以上的老年族人大都講一口流利的布農語，詞匯量及表達的靈活程度都很高；三、四十歲以上的中年人布農語在詞匯量和流利程度上有明顯差異，但他們的優勢在於布農語與漢語都具有比較高的運用水平，因此可以成為漢語與布農語、主流文化與布農文化溝通的重要橋樑；二十歲左右的青年族人族語掌握退化尤其嚴重，比較好的可以聽懂，差一些的完全無法使用族語進行溝通。仍在學校的國高中生如果沒有足夠的族語教學，恐怕布農語的流失會無法挽回。由於部落中還有相當一部分族語流利的中老年人，在此的人口結構下，提供全心致力於推行布農語的良好環境。也是成立「一串小米族語獨立出版工作室」的背景。</p>
  	</div>
  	<div class="place_block">
  		<h3>中平部落：一串小米工作室</h3>
	<p>中平部落行政區屬於花蓮縣卓溪鄉太平村，太平村由Tavila（太平）部落、Nakahila（中平）與Valau（中興）三個部落組成。人口約800人，95%為布農族人，以巒社群（Tabaknuaz）分佈最廣。太平村的布農族人自18世紀開始因耕地獵場不足、日人集團移住等不同原因，陸續自南投經中央山脈遷移至此。</p>
 	<p>由於郡社群的布農語是布農族裡的主導語言，比如巒社群這樣的非優勢方言在學校布農語教育中也處於劣勢地位，而且有越來越被邊緣化的危險。部落的小朋友在學校學習布農語后與家人的個別發音甚至會產生分歧，同樣的直到近期巒社布農語的歌本、聖經才在教會中逐漸取代郡社群布農語。布農語在不同年齡層呈現極大的分化差異。六十歲以上的老年族人大都講一口流利的布農語，詞匯量及表達的靈活程度都很高；三、四十歲以上的中年人布農語在詞匯量和流利程度上有明顯差異，但他們的優勢在於布農語與漢語都具有比較高的運用水平，因此可以成為漢語與布農語、主流文化與布農文化溝通的重要橋樑；二十歲左右的青年族人族語掌握退化尤其嚴重，比較好的可以聽懂，差一些的完全無法使用族語進行溝通。仍在學校的國高中生如果沒有足夠的族語教學，恐怕布農語的流失會無法挽回。由於部落中還有相當一部分族語流利的中老年人，在此的人口結構下，提供全心致力於推行布農語的良好環境。也是成立「一串小米族語獨立出版工作室」的背景。</p>
  	</div>
  </div> 
  </div>
<div id="Design" class="tabcontent">
  
  <h3>展齡中心社區自營模式研究 （北醫行動場域）</h3>

<p>社區安全守門員：在人社計畫啟動前，展齡中心即已伸出觸角與社區進一步接觸。社區安全守門員的構想，是借重長者對社區空間的認識與觀察力，辨認出社區內有安全疑慮的角落，成立一支「發現社區問題的巡守隊」。<br>
社區角落攝影課：搭配社區安全守門員方案，透過人社實踐計畫，展齡中心將連結信義社區大學講師與課程，嘗試以影像創作及展覽為媒介，以社區空間及人事物為主題，作為展齡中心與周邊社區民眾及公民團體的對話平台。<br>
社區主題生活地圖：以長者日常生活的活動內容與空間為主題，共同製作社區生活地圖，例如公園綠地、市場、醫院診所藥局、里民活動中心、廟口等，除了可以更了解長者在社區中的生活空間及需求，也可以幫助團隊跳脫行政區劃，以「共同生活圈」來界定都市中的「社區」。<br>
食農課程結合長者生命故事食譜：面對多元族群的社區居民背景，人社計畫預定結合通識與保健系課程，以大眾最容易接受的「食」為媒介，一方面帶出對彼此過去生活軌跡的互相理解，另一方面探索共同合作的可能性。</p>
	<h3>提升高齡社區活躍老化之參與式照護（暖暖行動場域）</h3>

<p>為了達到建立在地老化的機制與平台，我們將以以下為我們的實踐方針：

人我關係的鏈結：從滿足老人的自我照顧/安全需求，到與多元團體的發展/連結，強化共同照顧基礎。<br>
與歷史文化的關係重建：透過社區文史工作調查，聯繫老人與暖暖在地歷史，促進社會互動與支持。<br>
與生態環境的關係發展：從醫療模式走向與環境共生的生態模式，融入暖暖特有的人文生態與公共意識。<br>
以原民文化與生態為特色的泰雅族在地展齡模式 （尖石後山行動場域）<br>

目前根據我們對於尖石後山社會需求的理解，我們提出以下五個行動的方針：<br>

促進在地的互助經濟<br>
尋求各方參與和合作<br>
肯認在地傳統與文化價值<br>
可持續地使用環境資源<br>
建立代間的互助照護模式<br>
影響活力展齡社區發展之社會結構與組織特性：跨城鄉與族群比較 (跨領域行動場域)<br>

透過實證研究來瞭解：在不同場域、不同實踐模式的情況下，健康、安全、參與各構面對高齡者生活品質之關係。我們的行動方案有二：首先，量表的建立。我們建構健康、安全、參與三構面的量表，分析這些構面與展齡的關係。再者，參與觀察。我們透過參與各場域的實作行程，除了觀察各場域的樣貌，同時也瞭解實作活動中行動者（人、組織）間互動的情況，由此評估行動的影響。</p>
 
</div>
<div id="Member" class="tabcontent">
  <div style="height: 300px">
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
<div id="Situation" class="tabcontent">
	<p> 105年10月季會北醫工作報告</p>  File
 <p>尖石後山_全球環境危機與永續發展課程_行動式工作坊</p>  Youtube
 <p>105年8月季會北醫工作報告</p>  File
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
