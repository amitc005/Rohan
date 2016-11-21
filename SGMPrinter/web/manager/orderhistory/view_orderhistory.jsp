<%@page import="com.main.service.OrderStatusHistoryService"%>
<%@page import="com.main.pojo.TblOrderStatusHistory"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>

<%

    Object orderhistorysearch = request.getSession().getAttribute("orderhistorysearch");
    if (orderhistorysearch == null) {
        List<TblOrderStatusHistory> tblOSHistorys = OrderStatusHistoryService.getTblOrderStatusHistoryList();
        pageContext.setAttribute("tblOSHistorys", tblOSHistorys);
    } else {
        pageContext.setAttribute("tblOSHistorys", orderhistorysearch);
        request.getSession().setAttribute("orderhistorysearch",null);
    }

%>

<a href="../<%= IServletConstant.PAGE_ADD_ORDERHISTORY%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD ORDERHISTORY</button>
</a>
<%--        <div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH ORDER-STATUS-HISTORY FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderStatusHistoryServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">>ORDER ID :</label>
                            <div class="controls">
                                <input type="text" name="order_id"   autofocus="" maxlength="100" class="span11"    placeholder="ORDER ID" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-success">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>                            --%>

<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View OrderStatusHistory Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                 
                                
                                <th>Order_id</th>
                                <th>Order-Status</th>
                                <th>Create-Date</th>
                                <th>Modify-Date</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ordersh" items="${pageScope.tblOSHistorys}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_ORDERHISTORY %>&id=${ordersh.id}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${ordersh.tblOrder}"/> </td>
                                    <td><c:out value="${ordersh.orderstatus}"/> </td>
                                    <td><c:out value="${ordersh.createdate}"/> </td>
                                    <td><c:out value="${ordersh.modifydate}"/> </td>
                                   
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>