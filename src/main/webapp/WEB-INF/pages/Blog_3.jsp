<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>
<html>
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
                       			<a href="/plan1">澎湖永續發展與治理-從虎井嶼開始井</a>
                       		</li>
                      		<li>
                       			<a href="/plan2">澎湖文化創意產業未來人才之培育模式</a>
                       		</li>
                       		<li>
                       			<a href="/plan3">在地文化行動學習系統建置與應用研究</a>
                       		</li>
                       		<li class="my_li">
                       			<a href="/plan4">離島社區育成與永續經營—以湖西偏鄉為起點</a>
                       		</li>
                       		<li>
                       			<a href="/plan5">青年洄游農村社區產業再生模式-以馬公市為例</a>
                       		</li>
                       		<li>
                       			<a href="/plan6">海洋文化社區(群)的轉型-人文運旅整合創新服務模式</a>
                       		</li>
                       		<li>
                       			<a href="/plan7">菊島全民樂活閱讀創新推廣計畫-以白沙圖書館為起點</a>
                       		</li>
                       		
                       		
                       		<li>
                       			<a href="/plan8">以方法-目的鏈探究島嶼深度旅遊之目的地意象、重要因素與價值內涵</a>
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
							<li><a href="/news">最新消息</a></li>
							<li><a href="friendly.html">友站連結</a></li>
						</ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h3>期刊論文</h3>
                <ol class="breadcrumb">
					<li><a href="index.html">首頁</a></li>
                    <li><a href="">發表平台</a></li>
                    <li class="active">期刊論文</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">

                <!-- First Blog Post -->
                <c:forEach items="${animalContent}" var="a">
              <h2>
                    <td><c:out value="${a.title}"/></td>
                </h2>
                <p class="lead">
                    by <a href="blog-post_1"><td><c:out value="${a.author}" /></td></a>
                </p>
                <p><i class="fa fa-clock-o"></i><td><c:out value="${a.publish_time}"/></td></p>
                <hr>
                <a href="/load_blog?pid=${a.po_id}">
                    <img class="img-responsive img-hover" width="112" height="101" src="/resources/img/${a.file}" alt="">
                </a>
                <hr>
                <p><td><c:out value="${a.Introduction}"/></td></p>
                <a class="btn btn-success" href="/load_blog?pid=${a.po_id}">Read More ...</a>
                <hr>
			</c:forEach>
            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">

                <!-- Blog Search Well -->
                <!--div class="well">
                    <h4>Blog Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                    <!-- /.input-group >
                </div-->
              <!-- Side Widget Well -->
                <div class="well">
                    <h4>最新消息</h4>
                    <table width="100%" border="0" cellpadding="1" >
                    <c:forEach items="${newsTitle}" var="nt">
					  <tbody>
						<tr>
						  <td align="center"><a href="/load_blog?pid=${nt.po_id}">${nt.title}</a></td>
						</tr>

					  </tbody>
					  </c:forEach>
					</table>
                </div>

            </div>

        </div>
        <!-- /.row -->

        <hr>
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

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>

