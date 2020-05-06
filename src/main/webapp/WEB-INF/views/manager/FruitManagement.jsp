<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../commons/nav.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="menu-button">
    <a type="button" class="btn btn-default"
       href="<%=request.getContextPath()%>/backend/fruit/toSaveFruit">增加水果</a>
    <form action="/fruit/checkFruit" method="post">
            <input type="text" placeholder="请填写水果名" name="fruitName">
            <input type="submit" class="btn btn-default" value="查询水果">
        </form>
    </div>

        <div class="box box-info">
            <div class="box-body" style="display: block;">
                <div class="table-responsive">
                    <table class="table no-margin fruit-table">
                        <thead>
                        <tr>
                            <th>水果品种</th>
                            <th>封面</th>
                            <th>水果名</th>
                            <th>价格</th>
                            <th>总页数</th>
                            <th>出版社</th>
                            <th>库存</th>
                            <th>销量</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="fruit" items="${fruits}">
                            <tr>
                                <td>${fruit.c_id}</td>
                                <td><img src="<%=request.getContextPath()%>/${fruit.fruitImage}"
                                         style="width: 105px;height: 70px;"
                                         onclick='showimage("<%=request.getContextPath()%>/${fruit.fruitImage}")'/>
                                </td>
                                <td>${fruit.fruitName}</td>
                                <td>${fruit.price}</td>

                                <td>${fruit.brief}</td>
                                <td>${fruit.source}</td>
                                <td>${fruit.stock}</td>
                                <td>${fruit.sale}</td>
                                <td>
                                    <a type="button" class="btn btn-default"
                                       href="<%=request.getContextPath()%>/backend/fruit/deleteFruit/${fruit.bId}">下架该水果</a>
                                    <a type="button" class="btn btn-default"
                                       href="<%=request.getContextPath()%>/backend/fruit/update/${fruit.bId}">修改该水果信息</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </section>
</div>
<!--分页-->
<div class="container">
    <nav class="text-center">
        <ul class="pagination text-center">
            <li><a href="<%=request.getContextPath()%>/backend/fruit/getAllFruit?pageNo=1"><span>«首页</span> </a></li>
            <li>
                <a href="<%=request.getContextPath()%>/backend/fruit/getAllFruit?pageNo=${(pageInfo.pageNum>1)?(pageInfo.pageNum-1):1}">上一页</a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/backend/fruit/getAllFruit?pageNo=${(pageInfo.pageNum<pageInfo.pages)?(pageInfo.pageNum+1):pageInfo.pages}">下一页</a>
            </li>
            <li><a href="<%=request.getContextPath()%>/backend/fruit/getAllFruit?pageNo=${pageInfo.pages}"> <span>末页»</span></a>
            </li>
<%--            <li class="pagespan">11/12</li>--%>
        </ul>
    </nav>
</div>
</div>
<jsp:include page="../commons/tail.jsp"/>

<script>

</script>
</body>
</html>
