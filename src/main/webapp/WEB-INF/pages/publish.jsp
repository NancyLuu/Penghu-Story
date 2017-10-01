<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>澎湖故事島</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
    <!-- My set css -->
    <link href="resources/css/my_.css" rel="stylesheet" type="text/css">
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
    
    <!--編輯器-->
      <script src="//cdn.tinymce.com/4/tinymce.min.js"></script>
  <script>tinymce.init({ selector:'textarea' });</script>

    <style type="text/css">
    .wysihtml5-sandbox {
      border: 1px solid #ccc !important;
    }
    </style>

    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-1636725-34']);
      _gaq.push(['_trackPageview']);
      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>


<!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
           <div class="navbar-brand"><a class="navbar-brand" href="/"><img src="resources/img/icon.png" alt="" width="200em"/></a></div>
      <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
			</div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">關於我們 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="origin.html">計畫緣起</a>
                            </li>
                            <li>
                            	<a href="team.html">計畫支援團隊</a>
                            </li>
							<li>
								<a href="contact.html">聯絡我們</a>
								</li>
						</ul>
                    </li>
                    <li>
                       <a href="" class="dropdown-toggle" data-toggle="dropdown"> 計畫團隊 <b class="caret"></b></a>
                       <ul class="dropdown-menu">
                       		
							<li>
                       			<a href="#">澎湖永續發展與治理-從虎井嶼開始井</a>
                       		</li>
                      		<li>
                       			<a href="#">澎湖文化創意產業未來人才之培育模式</a>
                       		</li>
                       		<li>
                       			<a href="#">在地文化行動學習系統建置與應用研究</a>
                       		</li>
                       		<li class="my_li">
                       			<a href="#">離島社區育成與永續經營—以湖西偏鄉為起點</a>
                       		</li>
                       		<li>
                       			<a href="#">青年洄游農村社區產業再生模式-以馬公市為例</a>
                       		</li>
                       		<li>
                       			<a href="#">海洋文化社區(群)的轉型-人文運旅整合創新服務模式</a>
                       		</li>
                       		<li>
                       			<a href="#">菊島全民樂活閱讀創新推廣計畫-以白沙圖書館為起點</a>
                       		</li>
                       		
                       		
                       		<li>
                       			<a href="#">以方法-目的鏈探究島嶼深度旅遊之目的地意象、重要因素與價值內涵</a>
                       		</li>
                       </ul>
                    </li>
                    <li>
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">發表平台 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/pculture">實踐紀要</a></li>
							<li><a href="/build">研究手札</a></li>
							<li><a href="/animal">期刊論文</a></li>
							<li><a href="publish.html">發表新文章</a></li>
						</ul>
                    </li>
                    <li>
                        <a href="" class="dropdown-toggle" data-toggle="dropdown">有關於計畫 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="culture.html">最新消息</a></li>
							<li><a href="build.html">友站連結</a></li>
						</ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
   <div class="container">
  	<div class="row">
      <div class="my_pubilc">
         <h2>發表新文章</h2>
         <form name="sentMessage" id="" novalidate action="/insertpublish?${_csrf.parameterName}=${_csrf.token}" method="POST" enctype="multipart/form-data">
         	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>標題:</label>
                            <td><input type="text" class="form-control" name="title" value="" id="" required="" data-validation-required-message="Please enter your title."></td>
                            <p class="help-block"></p>
                      </div>
         		    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>發表人:</label>
                            <td><input type="text" class="form-control" name="author" value="" id="" required="" data-validation-required-message="Please enter your name."></td>
                            <p class="help-block"></p>
                      </div>
         		    </div>
                  <div class="my_posted_by">
                   <h4>發表人聯絡方式</h4>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>姓名:</label>
                            <td><input type="text" class="form-control" name="postauthor" value="" id="" required="" data-validation-required-message="Please enter your name."></td>
                        <div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>單位:</label>
                            <td><input type="text" class="form-control" name="Units" value="" id="" required="" data-validation-required-message="Please enter your employer."></td>
                        <div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>職稱:</label>
                            <td><input type="text" class="form-control" name="position" value="" id="" required="" data-validation-required-message="Please enter your job."></td>
                        <div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>E-mail:</label>
                            <td><input type="email" class="form-control" name="email" value="" id="" required="" data-validation-required-message="Please enter your email address."></td>
                        <div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>電話:</label>
                            <td><input type="tel" class="form-control" name="phone" id="" value="" required="" data-validation-required-message="Please enter your phine number."></td>
                        <div class="help-block"></div></div>
                    </div>
                  </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>文章類型:</label>
                            <td><select name="class" class="form-control">
								<option value="1" selected >實踐紀要</option>  
								<option value="2">研究手札</option> 
								<option value="3">期刊論文</option>
							</select></td>

                        <div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>發表時間:</label>
                            <td><input type="date" class="form-control" name="posttime" value="" id="" required="" data-validation-required-message="請輸入發表時間"></td>
                        <div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>發表處:</label>
                            <td><input type="text" class="form-control" name="postloc" value="" id="" required="" data-validation-required-message="請輸入文章發表處"></td>
                        <div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>摘要:</label>
                            <td><textarea class="form-control" name="summary" value="" id="" required data-validation-required-message="請輸入文章摘要，最少20字"></textarea></td>
								<div class="help-block"></div></div>
                    </div>
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>關鍵字:</label>
                            <td><input type="text" class="form-control" name="keyword" value="" id="" required data-validation-required-message="請輸入文章內容，最少200字"></td>
								<div class="help-block">請用，隔開</div></div>
                    </div>
                                 <div class="control-group form-group">
                        <div class="controls">
                            <label>訊息圖片:</label>
                            <td><input type="file" name = "uploadname"  class="upl"></td>
						</div>	
                    </div>      
                    
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>內文:</label>
                            <td><textarea name="paper">請輸入文章內容</textarea></td>
						</div>	
                    </div>                   
                    <div class="control-group form-group">
                        <div class="controls">
                            <label>參考資料來源:</label>
                            <td><input type="text" class="form-control" name="data" value="" reference_source id="" required data-validation-required-message="請輸入文章內容，最少200字"></td>
								<div class="help-block"></div></div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    				<tr>
					<td colspan='2'><input name="submit" type="submit"
						value="submit" /></td>
				</tr>
			</table>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
         </form>
        </div>
	</div>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->
    
    

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>
    

</body>

</html>
