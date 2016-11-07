<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblPostpress"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.PostpressService"%>
<%
    List<TblPostpress> tblPostpressList = PostpressService.getTblPostpressList();
    pageContext.setAttribute("tblPostpressList", tblPostpressList);
%>
<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>Static table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="postpress" items="${pageScope.tblPostpressList}"> 
                                <tr>
                                    <td><c:out value="${postpress.postpressName}"/> </td>
                                    <td><c:out value="${postpress.postpressDesc}"/> </td>
                                    <td><c:out value="${postpress.postpressAddedDate}"/> </td>
                                    <td><c:out value="${postpress.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>