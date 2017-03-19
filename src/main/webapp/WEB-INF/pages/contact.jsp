<!doctype html>
<html>
<head>
<meta charset="utf-8">
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC0YHjxhTqUPSIQtCRRLPsKmYZ8NUmiX00&callback=initMap">
</script>
<title>聯絡我們</title>
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
	<div class="contact_map" style="position: relative; overflow: hidden;">
   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3656.8127310788655!2d119.57870061458547!3d23.575168384676033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x346c5add718feef7%3A0xd817f6ff5d943186!2z5ZyL56uL5r6O5rmW56eR5oqA5aSn5a24!5e0!3m2!1szh-TW!2stw!4v1486440591570" width="100%" height="100%" allowfullscreen></iframe> </div>
  <div style="height: 500px">
  	<div class="left_div">
   	<h2>聯絡方式</h2>
    <h3>公司名稱</h3>
        <p>辦公室名稱<br>
          Tel ：02-1234-5678<br>
          Fax：02-1234-5678<br>
          E-mail：contact@contact.com<br>
          Add：地址</p>
    <h3>公司名稱</h3>
    <p>辦公室名稱<br>
          Tel ：02-1234-5678<br>
          Fax：02-1234-5678<br>
          E-mail：contact@contact.com<br>
        Add：地址</p>
	</div>
      <div class="right_div">
        <h2>聯絡方式</h2>
      <form name='contactform' 
					action="insertcontact" method="POST">
      <table width="100%" border="0" cellpadding="1">
  <tbody>
    <tr>
      <td  align="right" valign="top" width="20%">姓名</td>
      <td width="80%"> <input type="text" name="pername" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
      <td align="right" valign="top" >信箱</td>
      <td> <input type="email" name="peremail"  style="width: 100%"></td>
    </tr>
    <tr>
      <td align="right" valign="top">留言</td>
      <td><textarea name="pervalue" value="" maxlength="" style="width: 100%"></textarea></td>
    </tr>
    <tr>
					<td colspan='2'><input id="btn_refirsted" class="btn_200_40 login-btn" type="submit" value="送出" /></td>
				</tr>
				  </tbody>
			</table>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
	</form>
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
