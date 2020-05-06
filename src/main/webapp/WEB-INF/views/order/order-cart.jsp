<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../commons/nav.jsp" %>
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
                            <h4 class="modal-title" id="myModalLabel">输入订单信息</h4>
                        </div>
                        <div class="modal-body">
                            <c:set var="totalPrice" value="0"></c:set>
                            <form id="orderForm" class="form-horizontal" action="<%=request.getContextPath()%>/order/createOrder" method="post">
                                <c:forEach var="cart" items="${cartList}" varStatus="status">
                                     <c:set var="totalPrice" value="${ totalPrice + (cart.price * cart.quantity)}"/>
                                    <input type="hidden" name="ints[${status.index}]" value="${cart.b_id}">
                                    <input type="hidden" name="details[${status.index}].fruitName" value="${cart.fruit_name }"/>
                                    <input type="hidden" name="details[${status.index}].fruitPrice" value="${cart.price }"/><input type="hidden" name="details[${status.index}].fruitNum" value="${cart.quantity }"/>
                                </c:forEach>
                                <input type="hidden" name="price" value="${totalPrice}"/>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">目标地址</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="targetAddress" id="targetAddress"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">接收电话</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control"name="telephone" id="telephone"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-3 control-label">订单描述</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="description" id="description"/>
                                        <span class="help-block"></span>
                                    </div>
                                </div>
                                <div class="menu-button">
                                    <button type="submit" class="btn btn-default"
                                            id="order-submit">
                                        提交订单
                                    </button>
                                </div>
<%--                        请输入目标地址：<input type="text" name="targetAddress" id="targetAddress"/>--%>
<%--                        请输入接收电话：<input type="text" name="telephone" id="telephone"/>--%>
<%--                        请输入订单描述：<input type="text" name="description" id="description"/>--%>
                    </form>
                </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
</div>
<%@include file="../commons/tail.jsp" %>
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

    $("#order-submit").click(function () {
        var telephone = $("#telephone").val();
        //检验电话
        var regnickname = /(^[a-zA-Z0-9_-]{11}$)/;
        if (!regnickname.test(telephone)) {
            alert("接收电话不符合格式")
            return false;
        }
        $('#orderForm').submit()
    });

</script>
</body>
</html>
