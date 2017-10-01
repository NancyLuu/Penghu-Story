﻿<%@taglib prefix="sec"
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
           <div class="navbar-brand"><a class="navbar-brand" href="/"><img src="resources/img/icon.png" alt="" width="200em"/></a>
           <small>來自澎湖的生命故事 細數如縷往事的歲月痕跡</small>
           </div>
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

    <!-- Header Carousel -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <!--ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol-->

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('resources/img/01.jpg');"></div>
                <div class="carousel-caption">
                    <h2>大倉</h2>
					<p>全澎湖唯一可以如此眺望跨海大橋的地</p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('resources/img/02.jpg');"></div>
                <div class="carousel-caption">
                    <h2>大倉</h2>
					<p>全澎湖唯一可以如此眺望跨海大橋的地</p>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('resources/img/03.jpg');"></div>
                <div class="carousel-caption">
                    <h2>案山造船廠</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row"><br>
			<div class="my_news">
            <div class="col-lg-12">
                <h2>最新消息</h2>
            </div>
            
				<div class="row">
				<c:forEach items="${newsTitle}" var="nt">
		            <div class="col-md-1 text-center">
		                <p><td><c:out value="${nt.publish_time}"/></td></p>
		            </div>
		            <div class="index_img">
		                <a href="/load_blog?pid=${nt.po_id}">
		                    <img class="img-responsive img-hover" width="112" height="101" src="/resources/img/${nt.file}" alt="">
		                </a>
		            </div>
		            <div class="col-md-6">
		                <h4>
		                   <p><td><c:out value="${nt.title}"/></td></p>
		                </h4>
						<p><td><c:out value="${nt.author}"/></td></p>
		                <p><td><c:out value="${nt.Introduction}"/></td></p>
		                <a class="btn btn-success" href="/load_blog?pid=${nt.po_id}">Read More <i class="fa fa-angle-right"></i></a>
		            </div>
		            </c:forEach>
	        	</div>
        	
		</div>

           <div class="my_news">
            <div class="col-lg-12">
                <h2 class="page-header">
                    計畫願景
                </h2>
            </div>
           <div class="col-md-12">
                <h3>解決老問題，要用新方法！</h3>
                <p>「新作坊」的成立，是希望在學術與實作的往復對話中，豐富我們對社會理解。期待能從我們所在的歷史與社會脈絡出發，組成跨學科、跨領域的工作團隊，走進社區、走進部落，和在地居民一起發現問題，共同尋求解決的方案。

把「社會創新」比擬為挽起袖子的手作工藝，「研究資源」提供社會創新相關文獻、案例資料庫，也打造「發表平台」邀請關注社會創新的研究者或行動者發表成果。同時，也在「實踐研究團隊」中分享國內正在推動社會創新行動的各團隊最新情況。</p>
                 <a href="/origin" class="btn btn-success">View Project</a>
            </div>
            <div class="col-lg-12">
                <h2 class="page-header">Portfolio Heading</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </div>
            </div>
        </div>
        <!-- /.row -->

        <hr>


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
