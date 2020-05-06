<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>fruit land</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/owl.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/css.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/responsive.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/astyle.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/style1.css">
</head>
<body>
<section class="intro">
    <div class="main-nav">
        <nav class="navbar" id="main-navbar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">
                                <img style="position:absolute;height: 45px;width:108px; top: 7.5px;" src="<%=request.getContextPath()%>/img/brand-logo.png" alt="">
                            </a>
                        </div>
                        <div class="collapse navbar-collapse nopadding" id="navbar-collapse">
                            <ul class="nav navbar-nav main-menu">
                                <li class=""><a href="<%=request.getContextPath()%>/index.jsp">首页</a></li>
                                <li class=""><a href="<%=request.getContextPath()%>/user/loginPage">登录</a></li>
                                <li class=""><a href="<%=request.getContextPath()%>/user/registerPage">注册</a></li>
                                <%--                                <li class="clearfix"><a href="#">Pages</a>--%>
                                <%--                                    <ul class="dropdown-menu">--%>
                                <%--                                        <li><a href="page.html">Simple Page</a></li>--%>
                                <%--                                        <li><a href="page-full-width.html">Page Full Width</a></li>--%>
                                <%--                                        <li><a href="#">Dropdown Link 3</a>--%>
                                <%--                                            <ul class="">--%>
                                <%--                                                <li><a href="#">Sub Menu 1</a></li>--%>
                                <%--                                                <li><a href="#">Sub Menu 2</a></li>--%>
                                <%--                                                <li><a href="#">Sub Menu 3</a></li>--%>
                                <%--                                            </ul>--%>
                                <%--                                        </li>--%>
                                <%--                                    </ul>--%>
                                <%--                                </li>--%>
                                <li class=""><a href="#fruit">浏览商品</a></li>
                                <%--                                <li class="clearfix"><a href="blog.html">Blog</a>--%>
                                <%--                                    <ul class="dropdown-menu">--%>
                                <%--                                        <li><a href="blog-full-width.html">Blog Full Width</a></li>--%>
                                <%--                                        <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>--%>
                                <%--                                        <li><a href="post.html">Single Post</a></li>--%>
                                <%--                                    </ul>--%>
                                <%--                                </li>--%>
                                <li class=""><a href="#contact">联系我们</a></li>
                                <li class="search">
                                    <img src="<%=request.getContextPath()%>/img/search-icon.png"/>
                                    <div class="search-box">
                                        <div class="search-form">
                                            <%--                                            <input type="text" id="field" value="Search Here">--%>
                                            <%--                                            <button type="submit"><i class="fa fa-search"></i></button>--%>
                                            <form action="<%=request.getContextPath()%>/fruit/checkFruit" method="post" class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                                                <input type="text" placeholder="请填写水果名" name="fruitName">
                                                <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"><i class="fa fa-search"></i></button>
                                            </form>
                                        </div>
                                    </div>
                                </li>


                            </ul>
                        </div>
                    </div>
                </div>
            </div><!-- end conainer -->
        </nav><!-- end navbar -->
    </div><!-- Main Menu -->
    <%--    <div class="page-header-image">--%>
    <%--        <div class="container">--%>
    <%--            <div class="row">--%>
    <%--                <div class="col-md-12">--%>
    <%--                    <h2 class="page-header-title">Portfolio</h2>--%>
    <%--                    <ol class="breadcrumb">--%>
    <%--                        <li>--%>
    <%--                            <a href="#">Home</a>--%>
    <%--                        </li>--%>
    <%--                        <li>--%>
    <%--                            <a href="#">Pages</a>--%>
    <%--                        </li>--%>
    <%--                        <li class="active">Page Title</li>--%>
    <%--                    </ol>--%>
    <%--                </div>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
</section><!-- End Intro -->
<!-- end nav section -->
<!-- slider section -->
<div class="hero_area">
    <section class=" slider_section position-relative">
        <div id="carouselExampleControls" class="carousel slide " data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="img-box">
                        <img src="<%=request.getContextPath()%>/img/slider-img.jpg" alt="">
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="img-box">
                        <img src="<%=request.getContextPath()%>/img/slider-img.jpg" alt="">
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="img-box">
                        <img src="<%=request.getContextPath()%>/img/slider-img.jpg" alt="">
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>
</div>
<!-- end slider section -->
<!-- shop section -->
<section class="shop_section layout_padding">
    <div class="container">
        <div class="box">
            <div class="detail-box">
                <h2>
                    Fruit Land
                </h2>
                <p>
                    我们提供各种各样新鲜的水果以满足您的需求
                </p>
            </div>
            <div class="img-box">
                <img src="<%=request.getContextPath()%>/img/shop-img.jpg" alt="">
            </div>
            <div class="btn-box">
                <a href="<%=request.getContextPath()%>/fruit/toindex">
                    read more
                </a>
            </div>
        </div>
    </div>
</section>
<!-- end shop section -->

<!-- about section -->
<section class="about_section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6 px-0">
                <div class="img-box">
                    <img src="<%=request.getContextPath()%>/img/about-img.jpg" alt="">
                </div>
            </div>
            <div class="col-md-5">
                <div class="detail-box">
                    <div class="heading_container">
                        <hr>
                        <h2>
                            关于店铺
                        </h2>
                    </div>
                    <p>
                        本店铺包括保证新鲜口感 坏果包赔 现货秒发<br>
                        1.严格执行国家食品安全检测标准，经过200多项农药残留检测。<br>
                        2.执行百果园质量内控标准，实施四重果品检测流程。<br>
                        3.百果园自建三大食品安全检测中心，配备千万元高精度检测设备。<br>
                    </p>
                    <a href="<%=request.getContextPath()%>/fruit/toindex">
                        read more
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end about section -->

<!-- fruit section -->
<section class="fruit_section layout_padding" id="fruit">
    <div class="container">
        <div class="heading_container">
            <hr>
            <h2>
                鲜果集
            </h2>
        </div>
    </div>
    <div class="container-fluid">

        <div class="fruit_container">
            <div class="box">
                <img src="<%=request.getContextPath()%>/img/21.jpg" alt="">
                <div class="link_box">
                    <h5>
                        Orange
                    </h5>
                    <a href="<%=request.getContextPath()%>/fruit/toindex">
                        read more
                    </a>
                </div>
            </div>
            <div class="box">
                <img src="<%=request.getContextPath()%>/img/15.jpg" alt="">
                <div class="link_box">
                    <h5>
                        Blueberry
                    </h5>
                    <a href="<%=request.getContextPath()%>/fruit/toindex">
                        read more
                    </a>
                </div>
            </div>
            <div class="box">
                <img src="<%=request.getContextPath()%>/img/16.jpg" alt="">
                <div class="link_box">
                    <h5>
                        Banana
                    </h5>
                    <a href="<%=request.getContextPath()%>/fruit/toindex">
                        read more
                    </a>
                </div>
            </div>
            <div class="box">
                <img src="<%=request.getContextPath()%>/img/11.jpg" alt="">
                <div class="link_box">
                    <h5>
                        Apple
                    </h5>
                    <a href="<%=request.getContextPath()%>/fruit/toindex">
                        read more
                    </a>
                </div>
            </div>
            <div class="box">
                <img src="<%=request.getContextPath()%>/img/1.jpg" alt="">
                <div class="link_box">
                    <h5>
                        Mango
                    </h5>
                    <a href="<%=request.getContextPath()%>/fruit/toindex">
                        read more
                    </a>
                </div>
            </div>
            <div class="box">
                <img src="<%=request.getContextPath()%>/img/17 (2).jpg" alt="">
                <div class="link_box">
                    <h5>
                        Strawberry
                    </h5>
                    <a href="<%=request.getContextPath()%>/fruit/toindex">
                        read more
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end fruit section -->
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/">自助建站</a></div>

<!-- client section -->

<section class="client_section layout_padding-bottom">
    <div class="container ">
        <div class="heading_container">
            <h2>
                顾客评论
            </h2>
            <hr>
        </div>
        <div id="carouselExample2Controls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item">
                    <div class="client_container layout_padding-top">
                        <div class="img-box">
                            <img src="<%=request.getContextPath()%>/img/client-img.jpg" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                Jone Mark
                            </h5>
                            <p>
                                <img src="<%=request.getContextPath()%>/img/left-quote.png" alt="">
                                <span>
                    物流很快
                  </span>
                                <img src="<%=request.getContextPath()%>/img/right-quote.png" alt=""> <br>
                                最新鲜的妃子笑，个头大好荔枝顺丰送，性价比杠杠的，好卖家，全五星赞一个！！
                            </p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item active">
                    <div class="client_container layout_padding-top">
                        <div class="img-box">
                            <img src="<%=request.getContextPath()%>/img/client-img1.jpg" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                Harry Jane
                            </h5>
                            <p>
                                <img src="<%=request.getContextPath()%>/img/left-quote.png" alt="">
                                <span>
                    水果是很新鲜的
                  </span>
                                <img src="<%=request.getContextPath()%>/img/right-quote.png" alt=""> <br>
                                核小且甜，顺丰比较快，随寄礼包很贴心，好评。
                            </p>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="client_container layout_padding-top">
                        <div class="img-box">
                            <img src="<%=request.getContextPath()%>/img/client-img2.jpg" alt="">
                        </div>
                        <div class="detail-box">
                            <h5>
                                Ian Zhang
                            </h5>
                            <p>
                                <img src="<%=request.getContextPath()%>/img/left-quote.png" alt="">
                                <span>
                    包装精美
                  </span>
                                <img src="<%=request.getContextPath()%>/img/right-quote.png" alt=""> <br>
                                果子好吃新鲜，包装非常好，就是忘记拍照了！！
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExample2Controls" role="button" data-slide="prev">
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExample2Controls" role="button" data-slide="next">
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>
</section>

<!-- end client section -->


<!-- contact section -->
<section class="contact_section layout_padding-bottom" id="contact">
    <div class="container-fluid">
        <div class="row">
            <div class="offset-lg-2 col-md-10 offset-md-1">
                <div class="heading_container">
                    <hr>
                    <h2>
                        意见反馈
                    </h2>
                </div>
            </div>
        </div>

        <div class="layout_padding2-top">
            <div class="row">
                <div class="col-lg-4 offset-lg-2 col-md-5 offset-md-1">
                    <form action="">
                        <div class="contact_form-container">
                            <div>
                                <div>
                                    <input type="text" placeholder="Full Name">
                                </div>
                                <div>
                                    <input type="email" placeholder="Email">
                                </div>
                                <div>
                                    <input type="text" placeholder="Phone Number">
                                </div>
                                <div>
                                    <input type="text" class="message_input" placeholder="Message">
                                </div>
                                <div>
                                    <button type="submit">
                                        Send
                                    </button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6 px-0">
                    <div class="map_container">

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- end contact section -->


<!-- info section -->

<section class="info_section">
    <div class="container">
        <div class="info_logo">
            <h2>
                Fruit Land
            </h2>
            <p>
                © <span id="displayYear">2020</span> All Rights Reserved.  <a href="http://www.cssmoban.com/" target="_blank" ></a>  <a href="http://www.cssmoban.com/" title="网页模板" target="_blank"></a>
            </p>
        </div>
    </div>
</section>

<!-- end info section -->


<!-- footer section -->

<!-- footer section -->

<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-3.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/custom.js"></script>
</body>
</html>
