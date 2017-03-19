<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/resources/css/user.css" rel="stylesheet" type="text/css">
<link href="/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
<!--script src="../js/jquery-1.11.3.min.js"></script>
<script src="../js/bootstrap.js"></script-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>


<!--script>
function onclick(){
    var contents = $('#test');
    contents = "<b>"+  contents + "</b>"
}
</script-->

<script type="text/javascript">
		function test(){
			document.getElementById("mask").innerHTML = "<b>test</b>"

		}
	</script>
	
	<script type="text/javascript">
	function test(){
		var cont= document.getElementById("test");
		cont.style.fontStyle = "italic"; // 斜體
		cont.style.fontWeight = "900"; // 粗體

	}

</script>

<title>後台管理</title>
</head>


<body>
<div class="wrapper">
<nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse collapse in" style="height: auto;">
                <!-- side-menu -->
                <ul class="topnav" >
					<li><a href="#">計畫團隊名稱</a></li>
                   <li><a href="#">發表平台</a></li>
                   <li class="right"><a href="#">登出</a></li>
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>
	<main class="container">
	<h3>澎湖是個美麗的地方</h3>
	<h5>最美麗</h5>
	<div>
       <ul class="edit_ul">
        <li>
		  <div class="btn-group">
			<a class="btn btn-default wysihtml5-command-active" data-wysihtml5-command="bold" title="CTRL+B" tabindex="-1" href="javascript:;" unselectable="on"><span class="glyphicon glyphicon-bold"></span></a>
			<a class="btn  btn-default" data-wysihtml5-command="italic" title="CTRL+I" tabindex="-1" href="javascript:;" unselectable="on"><span class="glyphicon glyphicon-italic"></span></a>
			<a class="btn  btn-default" data-wysihtml5-command="underline" title="CTRL+U" tabindex="-1" href="javascript:;" unselectable="on">Underline</a>     
		  </div>

		  <div class="bootstrap-wysihtml5-insert-link-modal modal fade" data-wysihtml5-dialog="createLink">
			<div class="modal-dialog ">
			  <div class="modal-content">
				<div class="modal-header">
				  <a class="close" data-dismiss="modal">×</a>
				  <h3>Insert link</h3>
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
		  </div>
  		<a class="btn  btn-default" data-wysihtml5-command="createLink" title="Insert link" tabindex="-1" href="javascript:;" unselectable="on"> 
     		 <span class="glyphicon glyphicon-film"></span> 
  		</a>
	
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
			  <span class="glyphicon glyphicon-picture"></span>
		  </a>
		</li>
        </ul>
        <div >
         <textarea class="textarea" id="mask" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">澎湖怎麼可以這麼美，真的是美的我嫑嫑的，但是冬天真的有夠冷。</textarea>
         </div>
         <div >
         <h4>關鍵詞</h4> 
         <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">澎湖, 美麗, 有夠冷, 嫑嫑</textarea>
         </div>
        <div>
        <h4>參考資料</h4>
         <textarea class="textarea" placeholder="Message" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">最美麗的腦袋</textarea>
         </div>
         </div>
	<input type="button" name="" value="確認" class="contact_btn" align="right" style="width: 10%">

</main>

	</div>
</body>

</html>
