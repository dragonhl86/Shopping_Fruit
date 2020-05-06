<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@include file="../commons/head.jsp"%>--%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>注册</title>
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
    <link rel="stylesheet" href='<%=request.getContextPath()%>/css/AdminLTE.min.css'>
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href='<%=request.getContextPath()%>/css/_all-skins.min.css'>
</head>
<body class="hold-transition skin-blue sidebar-mini sub_page" background="WEB-INF/img/3.jpg">
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
</section>
<!-- end nav section -->
<div class="login-box">
    <div class="login-logo">
<%--        <b>欢迎来到注册页面</b>--%>
    </div>

    <div id="empAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">用户注册</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal">
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
                        <div class="form-group">
                            <label class="col-sm-3 control-label">nickname</label>
                            <div class="col-sm-9">
                                <input type="text" name="nickname" class="form-control" id="nickname" placeholder="请输入昵称">
                                <span class="help-block"></span>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <br/>
                    <a type="button" class="btn btn-primary" href="<%=request.getContextPath()%>/user/loginPage">登录</a>
                    <br/>
                    <br/>
                    <button type="button" class="btn btn-info" id="register">注册</button>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="../commons/tail.jsp" %>
<script src="<%=request.getContextPath()%>/js/jquery-2.2.3.min.js"></script>
<script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript">

    //校验表单数据
    function validate_username() {
        //1、拿到要校验的数据，使用正则表达式
        var username = $("#username").val();
        var regName = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if (!regName.test(username)) {
            //alert("用户名可以是2-5位中文或者6-16位英文和数字的组合");
            show_validate_msg("#username", "error", "用户名可以是2-5位中文或者6-16位英文和数字的组合");
            return false;
        } else {
            show_validate_msg("#username", "success", "");
        }
        return true;
    }

    function validate_password() {
        //2、校验密码
        var password = $("#password").val();
        var regpassword = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if (!regpassword.test(password)) {
            show_validate_msg("#password", "error", "密码应为2-5位中文或者6-16位英文和数字的组合");
            return false;
        } else {
            show_validate_msg("#password", "success", "");
        }
        return true;

    }

    function validate_nickname() {
        //2、校验昵称
        var nickname = $("#nickname").val();
        var regnickname = /(^[a-zA-Z0-9_-]{6,16}$)|(^[\u2E80-\u9FFF]{2,5})/;
        if(!regnickname.test(nickname)){
            show_validate_msg("#nickname", "error", "昵称应为2-5位中文或者6-16位英文和数字的组合");
            return false;
        }else{
            show_validate_msg("#nickname", "success", "");
        }
        return true;
    }

    //显示校验结果的提示信息
    function show_validate_msg(ele,status,msg){
        //清除当前元素的校验状态
        $(ele).parent().removeClass("has-success has-error");
        $(ele).next("span").text("");
        if("success"==status){
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(msg);
        }else if("error" == status){
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(msg);
        }
    }

    //校验信息是否可用
    $("#username").blur(function(){
        //发送ajax请求校验用户名是否可用
        var username = this.value;
        $.ajax({
            url:"<%=request.getContextPath()%>/user/checkUsername",
            data:"username="+username,
            type:"POST",
            success:function(result){
                if(result.code==100){
                    show_validate_msg("#username","success","用户名可用");
                    $("#register").attr("ajax-va","success");
                }else{
                    show_validate_msg("#username","error",result.extend.msg);
                    $("#register").attr("ajax-va","error");
                }
            }
        });
        validate_username();
    });
    $("#password").blur(function () {
        validate_password();
    })
    $("#nickname").blur(function () {
        validate_nickname();
    })
    //点击注册，注册用户。
    $("#register").click(function(){
        //1、模态框中填写的表单数据提交给服务器进行保存
        //1、先对要提交给服务器的数据进行校验
        if(!validate_username()&&!validate_password()&&!validate_nickname()){
            return false;
        };
        //1、判断之前的ajax用户名校验是否成功。如果成功。
        if($(this).attr("ajax-va")=="error"){
            return false;
        }

        //2、发送ajax请求保存用户
        $.ajax({
            url:"<%=request.getContextPath()%>/user/user",
            type:"POST",
            data:$("#empAddModal form").serialize(),
            success:function(result){
                //alert(result.msg);
                if(result.code == 100){
                    alert("注册成功")
                    window.location.href="<%=request.getContextPath()%>/user/loginPage";
                }
            }
        });
    });
</script>
</body>


</html>
