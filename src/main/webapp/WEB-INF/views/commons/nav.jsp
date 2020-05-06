<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<!-- Site wrapper -->--%>
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
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/zoom.css">
</head>
<body class="sub_page">
<div class="hero_area">
    <!-- header section strats -->
    <div class="brand_box">
        <a class="navbar-brand" href=<%=request.getContextPath()%>/index.jsp">
        <span>
          FruitLand
        </span>
        </a>
    </div>
    <!-- end header section -->
</div>
<!-- nav section -->
<section class="nav_section">
    <div class="container">
        <div class="custom_nav2">
            <nav class="navbar navbar-expand custom_nav-container ">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp"><img style="position:absolute;height: 45px;width:108px; top: 7.5px;" src="<%=request.getContextPath()%>/img/brand-logo.png" alt=""></a>
                        <ul class="nav navbar-nav main-menu" style="margin-top: 15px; font-size:1rem; float: right;">
                            <li class="nav-item">
                                <a class="nav-link" href="<%=request.getContextPath()%>/index.jsp">首页 <span class="sr-only">(current)</span></a>
                            </li>
                            <!-- User Account: -->
                            <shiro:authenticated>
                                <li class="nav-item dropdown user user-menu">
                                    <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                                        <img height="30px" width="30px" src="<%=request.getContextPath()%>/img/p01.jpg" class="user-image" alt="User Image">
                                        <span class="hidden-xs">${user.nickname}</span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <!-- User image -->
                                        <li class="user-header">
                                            <img width="350px" height="300px" id="user-header" src="<%=request.getContextPath()%>/img/p01.jpg"
                                                 class="img-circle"
                                                 alt="User Image">
                                            <p>${user.nickname}</p>
                                        </li>
                                        <!--Menu Body-->
                                        <li class="user-body">
                                            <div class="col-xs-4 text-center">
                                                <a href="#" style="color: #000;">Followers</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a href="#" style="color: #000;">Sales</a>
                                            </div>
                                            <div class="col-xs-4 text-center">
                                                <a href="#" style="color: #000;">Friends</a>
                                            </div>
                                        </li>
                                        <!-- Menu Footer-->
                                        <li class="user-footer">
                                            <div class="pull-left">
<%--                                                <a id="systemsettingBtn" href="javascript:void(0)"--%>
<%--                                                   class="btn btn-default btn-flat" href="<%=request.getContextPath()%>/backend/user/update/${user.uId}">修改密码</a>--%>
                                                <a type="button" class="btn btn-default"
                                                href="<%=request.getContextPath()%>/user/update/${user.uId}">修改信息</a>
                                            </div>
                                            <div class="pull-right">
                                                <a href="<%=request.getContextPath()%>/user/logOut" class="btn btn-default btn-flat">注销</a>
                                            </div>
                                        </li>
                                    </ul>
                                </li>
                            </shiro:authenticated>
                            <shiro:notAuthenticated>
                            <li class="nav-item">
                                <a class="nav-link" href="<%=request.getContextPath()%>/user/loginPage">登录 </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="<%=request.getContextPath()%>/user/registerPage">注册 </a>
                            </li>
                            </shiro:notAuthenticated>
                            <shiro:authenticated>
                                <li class="nav-item">
                                    <a class="nav-link"
                                       href="<%=request.getContextPath()%>/order/myOrder/${user.uId}">我的订单</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link"
                                       href="<%=request.getContextPath()%>/cart/cart">我的购物车</a>
                                </li>
                            </shiro:authenticated>
                            <shiro:hasAnyRoles name="admin,superadmin">
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/backend/user/getAllUser" class="nav-link">
                                         <span>普通用户管理</span>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/backend/fruit/getAllFruit" class="nav-link">
                                         <span>水果管理</span>
                                    </a>
                                </li>
                            </shiro:hasAnyRoles>
                            <shiro:hasRole name="superadmin">
                                <li class="nav-item">
                                    <a href="<%=request.getContextPath()%>/backend/user/getadmin" class="nav-link">
                                        <span>管理员管理</span>
                                    </a>
                                </li>
                            </shiro:hasRole>
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
            </nav>
        </div>
    </div>
</section>
<!-- end nav section -->

</body>
</html>