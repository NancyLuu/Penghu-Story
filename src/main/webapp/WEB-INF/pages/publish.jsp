<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>發表新文章</title>
<link href="/resources/css/hiasp.css" rel="stylesheet" type="text/css">
<!-- link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script-->

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

  <div style="height: 700px">
      <div class="pubilsh_div">
        <h2>發表平台</h2>
       <form name='contactform' 
					action="insertpublish" method="POST">
      <table width="80%" border="0" cellpadding="5">
  <tbody>
   	<tr>
   		<td align="right" valign="top" width="25%">標題</td>
   		<td width="75%"> <input type="text" name="title" value="" maxlength="" style="width: 100%"></td>
   	</tr>
   	<tr>
      <td  align="right" valign="top">發表人</td>
      <td> <input type="text" name="author" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
    	<td colspan="2"> <hr></td>
    </tr>
    <tr>
		<td colspan="2" align="left"> 發表人聯絡方式 </td>
	</tr>
    <tr>
      <td  align="right" valign="top">姓名</td>
      <td> <input type="text" name="postauthor" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
      <td  align="right" valign="top">單位</td>
      <td> <input type="text" name="Units" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
      <td align="right" valign="top">職稱</td>
      <td> <input type="text" name="position" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
      <td align="right" valign="top" >信箱</td>
      <td> <input type="email" name="email" value="" style="width: 100%"></td>
    </tr>
    <tr>
      <td  align="right" valign="top">電話</td>
      <td> <input type="tel" name="phone" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
    	<td align="right" valign="top">文章類型</td>
    	<td> <select id="" name="class" style="width: 100%">
            <option value="文化" SELECTED>文化</option>  
            <option value="生物">生物</option> 
            <option value="建築">建築</option>
    	</select></td>
    </tr>
    <tr>
    	<td align="right" valign="top">發表時間</td>
    	<td><input type="date" name="posttime" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
      <td  align="right" valign="top">發表處</td>
      <td> <input type="text" name="postloc" value="" maxlength="" style="width: 100%"></td>
    </tr>
    <tr>
      <td  align="right" valign="top">摘要</td>
      <td><div><textarea  name="summary" value="" maxlength="" style="width: 100%"></textarea></div> </td>
    </tr>
    <tr>
    <td  align="right" valign="top">關鍵字</td>
		<td><div><textarea class="textarea" name="keyword" value="" maxlength="" style="width: 100%"></textarea></div></td>
    </tr>
    <tr>
    	<td  align="right" valign="top">文章全文</td>
    	<td>
    	
    	<div>
       <ul class="edit_ul">
        <li>
		  <div class="btn-group">
			<a class="btn btn-default wysihtml5-command-active" data-wysihtml5-command="bold" title="CTRL+B" tabindex="-1" href="javascript:;" unselectable="on"><Button class="glyphicon glyphicon-bold"><b>B</b></Button></a>
			<a class="btn  btn-default" data-wysihtml5-command="italic" title="CTRL+I" tabindex="-1" href="javascript:;" unselectable="on"><Button class="glyphicon glyphicon-italic"><i>I</i></Button></a>
			<a class="btn  btn-default" data-wysihtml5-command="underline" title="CTRL+U" tabindex="-1" href="javascript:;" unselectable="on"><button>底線</button></a>  
		  </div>
		<div>
		<p style="float:none">影片連結</p>
				  <div class="form-group">
					<input name="videolink" value="http://" class="bootstrap-wysihtml5-insert-link-url form-control" data-wysihtml5-dialog-field="href">
				  </div> 
		</div>
		  <!-- div class="bootstrap-wysihtml5-insert-link-modal modal fade" data-wysihtml5-dialog="createLink">
			<div class="modal-dialog ">
			  <div class="modal-content">
				<div class="modal-header">
				  <a class="close" data-dismiss="modal">×</a>
				  <p style="float:none">影片連結</p>
				  <div class="form-group">
					<input value="http://" class="bootstrap-wysihtml5-insert-link-url form-control" data-wysihtml5-dialog-field="href">
				  </div> 
				</div>
				<div class="modal-body">
				  <div class="form-group">
					<input value="http://" class="bootstrap-wysihtml5-insert-link-url form-control" data-wysihtml5-dialog-field="href">
				  </div> 
				  <div class="checkbox">
					<label> 
					  <input type="checkbox" class="bootstrap-wysihtml5-insert-link-target" checked="">Open link in new window
					</label>
				  </div>
				</div>
				<div class="modal-footer">
				  <a class="btn btn-default" data-dismiss="modal" data-wysihtml5-dialog-action="cancel" href="#">Cancel</a>
				  <a href="#" class="btn btn-primary" data-dismiss="modal" data-wysihtml5-dialog-action="save">Insert link</a>
				</div>
			  </div>
			</div>
		  </div-->
  		<!-- a class="btn  btn-default" data-wysihtml5-command="createLink" title="Insert link" tabindex="-1" href="javascript:;" unselectable="on"> 
     		 <Button class="glyphicon glyphicon-film">連結</Button> 
  		</a-->
	
		  <div class="bootstrap-wysihtml5-insert-image-modal modal fade" data-wysihtml5-dialog="insertImage" style="display: none;">
			<div class="modal-dialog ">
			  <div class="modal-content">
				<div class="modal-header">
				  <a class="close" data-dismiss="modal">×</a>
				  <h3>Insert image</h3>
				</div>
				<div class="modal-body">
				  <div class="form-group">
					<input value="http://" class="bootstrap-wysihtml5-insert-image-url form-control" data-wysihtml5-dialog-field="src">
				  </div> 
				</div>
				<div class="modal-footer">
				  <a class="btn btn-default" data-dismiss="modal" data-wysihtml5-dialog-action="cancel" href="#">Cancel</a>
				  <a class="btn btn-primary" data-dismiss="modal" data-wysihtml5-dialog-action="save" href="#">Insert image</a>
				</div>
			  </div>
			</div>
		  </div>
		  <a class="btn btn-default" data-wysihtml5-command="insertImage" title="Insert image" tabindex="-1" href="javascript:;" unselectable="on">
			  <Button class="glyphicon glyphicon-picture">圖片</Button>
		  </a>
		</li>
        </ul>
        </div >
    	
    	<div><textarea class="textarea" name="paper" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea></div></td>
    </tr>
    <tr>
    <td  align="right" valign="top">參考資料來源</td>
		<td><div><textarea class="textarea" name="data" value="" maxlength="" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea></div></td>
    </tr>
  <tr>
					<td colspan='2' align="right"><input id="btn_refirsted" class="contact_btn"  style="width: 10%" type="submit" value="送出" /></td>
				</tr>
				  </tbody>
			</table>
			<input  type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
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
