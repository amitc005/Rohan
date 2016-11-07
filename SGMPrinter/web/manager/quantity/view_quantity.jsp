<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblQty"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.QtyService"%>
<%
    List<TblQty>  tblQtyList = QtyService.getTblQtyList();
    pageContext.setAttribute("tblQtyList", tblQtyList);
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
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="qty" items="${pageScope.tblQtyList}"> 
                                <tr>
                                    <td><c:out value="${qty.qtyName}"/> </td>
                                    <td><c:out value="${qty.qtyAddedDate}"/> </td>
                                    <td><c:out value="${qty.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>