<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../commons/nav.jsp"%>
<div class="content-wrapper ">
<div class="login-box">
    <div class="login-logo">
<%--        <b>欢迎来到添加水果页面</b>--%>
    </div>

    <div id="empAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalLabel">水果添加</h4>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" action="/backend/fruit/saveFruit">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">类别有</label>
                            <div class="col-sm-9">
                                <c:forEach var="type" items="${types}" varStatus="count">
                                    <p>${count.count}:${type.name}   </p>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="form-group">
<%--                            <label class="col-sm-3 control-label">类别</label>--%>
                            <div class="col-sm-9">
                                <input type="hidden" name="cId" class="form-control" value="1">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">水果种类</label>
                            <div class="col-sm-9">
                                <input type="text" name="c_id" class="form-control" placeholder="请输入水果种类编号">
                                <span class="help-block"></span>
                            </div>
                        </div>
                                <input type="hidden" name="fruitImage" class="form-control" value="img/1.jpg">
                        <div class="form-group">
                            <label class="col-sm-3 control-label">fruitName</label>
                            <div class="col-sm-9">
                                <input type="text" name="fruitName" class="form-control" placeholder="请输入水果名">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">price</label>
                            <div class="col-sm-9">
                                <input type="text" name="price" class="form-control" placeholder="请输入单价">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">brief</label>
                            <div class="col-sm-9">
                                <input type="text" name="brief" class="form-control" placeholder="请输入水果简介">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">source</label>
                            <div class="col-sm-9">
                                <input type="text" name="source" class="form-control" placeholder="请输入原产地">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">stock</label>
                            <div class="col-sm-9">
                                <input type="text" name="stock" class="form-control" placeholder="请输入库存">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">sale</label>
                            <div class="col-sm-9">
                                <input type="text" name="sale" class="form-control" placeholder="请输入销量">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="menu-button">
                        <input style="align:center" class="btn btn-default" type="submit" value="Submit" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
    <jsp:include page="../commons/tail.jsp"/>
<script type="text/javascript">

</script>
    </body>
    </html>



