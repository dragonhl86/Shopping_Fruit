<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="./commons/head.jsp"%>--%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>登录</title>
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
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Theme style -->
  <link rel="stylesheet" href='<%=request.getContextPath()%>/css/AdminLTE.min.css'>
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href='<%=request.getContextPath()%>/css/_all-skins.min.css'>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini sub_page">
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
            <li class="search">
              <img src="<%=request.getContextPath()%>/img/search-icon.png"/>
              <div class="search-box">
                <div class="search-form">
                  <form action="<%=request.getContextPath()%>/fruit/checkFruit" method="post" class="form-inline my-2 my-lg-0 ml-0 ml-lg-4 mb-3 mb-lg-0">
                    <input type="text" placeholder="请填写水果名" name="fruitName">
                    <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit"><i class="fa fa-search"></i></button>
                  </form>
                </div>
              </div>
            </li>
          </ul>

        </div>
      </nav>
    </div>

  </div>
  </div>
</section>
<!-- end nav section -->
<div class="login-box">
  <div class="login-logo">
<%--    <b>欢迎来到登陆界面</b>--%>
  </div>
  <!-- /.login-logo -->
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">用户登录</h4>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" action="<%=request.getContextPath()%>/user/realm" method="post">
          <div class="form-group">
            <label class="col-sm-3 control-label">username</label>
            <div class="col-sm-9">
              <input type="text" name="username" class="form-control" id="username" placeholder="请输入用户名">
              <span class="help-block"></span>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-3 control-label">password</label>
            <div class="col-sm-9">
              <input type="password" name="password" class="form-control" id="password" placeholder="请输入密码">
              <span class="help-block"></span>
            </div>
          </div>
          <div class="modal-footer">
            <br/>
            <a type="button" class="btn btn-primary" href="<%=request.getContextPath()%>/user/registerPage">注册</a>
            <br/>
            <br/>
            <button type="submit" class="btn btn-info">登录</button>
          </div>
        </form>
      </div>
    </div>
  </div>
<%--  <div class="login-box-body">--%>
<%--    <h2 class="login-box-msg">用户登录</h2>--%>
<%--    <h5>${message}</h5>--%>
<%--    <form action="<%=request.getContextPath()%>/user/realm" method="post">--%>
<%--      <div class="form-group has-feedback">--%>
<%--        <label class="col-md-4 control-label">用户名</label>--%>
<%--        <input type="text" class="form-control" name="username" placeholder="请输入用户名">--%>
<%--      </div>--%>
<%--      <div class="form-group has-feedback">--%>
<%--        <label class="col-md-4 control-label">密码</label>--%>
<%--        <input type="password" class="form-control" name="password" placeholder="请输入密码">--%>
<%--      </div>--%>
<%--      <div class="row">--%>
<%--        <div class="col-xs-8">--%>
<%--        </div>--%>
<%--        <!-- /.col -->--%>
<%--&lt;%&ndash;        <div class="col-xs-4">&ndash;%&gt;--%>
<%--&lt;%&ndash;          <a type="button" class="btn btn-primary btn-block btn-flat" href="<%=request.getContextPath()%>/user/registerPage">注册</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;          <button type="submit" class="btn btn-primary btn-block btn-flat" style="margin-left: 50px">登录</button>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </div>&ndash;%&gt;--%>
<%--        <div class="modal-footer">--%>
<%--          <br/>--%>
<%--          <a type="button" class="btn btn-primary btn-block btn-flat" href="<%=request.getContextPath()%>/user/registerPage">注册</a>--%>
<%--          <br/>--%>
<%--          <br/><br/><br/><br/>--%>
<%--          <button type="submit" class="btn btn-primary btn-block btn-flat" style="margin-left: 50px">登录</button>--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </form>--%>
<%--  </div>--%>
</div>

<%@include file="./commons/tail.jsp" %>
<script src="<%=request.getContextPath()%>/js/jquery-2.2.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
</body>
</html>
