<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../commons/nav.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <section class="content">
        <div class="menu-button">
            <a type="button" class="btn btn-default" onclick="showChoose()">目录选择</a>

            <div class="box-body" style="display: none;" id="chooseType">
                <form action="<%=request.getContextPath()%>/fruit/searchByCategory" method="post">
                    <select name="typeList" id="typeList">
                        <option value="">请选择</option>
                    </select>
                    <input type="submit" class="btn btn-default" value="查询">
                </form>
            </div>
            <form action="<%=request.getContextPath()%>/fruit/checkFruit" method="post">
                <input type="text" placeholder="请填写水果名" name="fruitName">
                <input type="submit" class="btn btn-default" value="查询水果">
            </form>
        </div>

        <div class="box box-info">
            <div class="box-body" style="display: block;">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">修改用户信息</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" action="<%=request.getContextPath()%>/user/updateUser" method="get">
                                <input type="hidden" name="uId" value="${user.uId}">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">用户账号</label>
                                    <div class="col-sm-9">
                                        <p>${user.username}</p>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">用户密码</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="password" value="${user.password}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">用户昵称</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="nickname" value="${user.nickname}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="menu-button">
                                    <input class="btn btn-default" type="submit" value="提交">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>

</div>
<jsp:include page="../commons/tail.jsp"/>

<script>

    function showChoose() {
        $("#chooseType").show();
        locationChange();
    }

    function showimage(source) {
        $("#imgInModalID").attr("src", source);
        $('.modal').show();
    }

    function closeModel() {
        $('.modal').hide();
    }

    function locationChange() {
        var type = "";
        var obj = document.getElementById('typeList');
        obj.options.length = 0;
        $.ajax({
            type: "post",
            url: "/fruit/getParentTypeList",
            cache: false,
            data: {type: type},
            dataType: "json",
            success: function (result) {
                if (result.length > 0) {
                    for (var i in result) {
                        var selectOption = new Option(result[i].name, result[i].cId);
                        obj.add(selectOption);
                    }
                }
            }
        });
    }


</script>
</body>
</html>
