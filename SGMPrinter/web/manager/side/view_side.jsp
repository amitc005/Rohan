<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.SidesService"%>
<%
    List<TblSides>  tblSidesList = SidesService.getTblSidesList();
    pageContext.setAttribute("tblSidesList", tblSidesList);
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
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="side" items="${pageScope.tblSidesList}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_SIDE %>&id=${side.sideId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${side.sideName}"/> </td>
                                    <td><c:out value="${side.sideAddedDate}"/> </td>
                                    <td><c:out value="${side.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>