<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../commons/nav.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Main content -->
    <p style="margin-top: 30px">&nbsp;</p>
    <section class="content">
        <div class="box box-info">
            <div class="box-body" style="display: block;">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">修改水果信息</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" action="<%=request.getContextPath()%>/backend/fruit/updateFruit" method="post">
                                <input type="hidden" name="bId" value="${fruit.bId}">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">水果品种</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="c_id" value="${fruit.c_id}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">水果名字</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="fruitName" value="${fruit.fruitName}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">水果价格</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="price" value="${fruit.price}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">简介</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="brief" value="${fruit.brief}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">原产地</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="source" value="${fruit.source}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">库存</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="stock" value="${fruit.stock}"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">销量</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="sale" value="${fruit.sale}"/>
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
<%--                <div class="table-responsive">--%>
<%--                    <form action="<%=request.getContextPath()%>/backend/fruit/updateFruit" method="post">--%>
<%--                        <input class="form-control" type="hidden" name="bId" value="${fruit.bId}">--%>
<%--                        水果品种：<input class="form-control" name="c_id" value="${fruit.c_id}"/>--%>
<%--                        <br/><p style="margin-top: 10px"></p>--%>
<%--                        <input class="form-control" type="hidden" name="fruitImage" value="${fruit.fruitImage}">--%>
<%--                        水果名字：<input class="form-control" name="fruitName" value="${fruit.fruitName}"/>--%>
<%--                        <br/><p style="margin-top: 10px"></p>--%>
<%--                        水果价格：<input class="form-control" name="price" value="${fruit.price}"/>--%>
<%--                        <br/><p style="margin-top: 10px"></p>--%>
<%--                        简介：<input class="form-control" name="brief" value="${fruit.brief}"/>--%>
<%--                        <br/><p style="margin-top: 10px"></p>--%>
<%--                        原产地：<input class="form-control" name="source" value="${fruit.source}"/>--%>
<%--                        库存：<input class="form-control" name="stock" value="${fruit.stock}"/>--%>
<%--                        销量：<input class="form-control" name="sale" value="${fruit.sale}"/>--%>
<%--                        <br/><p style="margin-top: 30px"></p>--%>
<%--                        <input class="form-control" class="btn btn-default" type="submit" value="提交">--%>
<%--                    </form>--%>
<%--                </div>--%>
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
