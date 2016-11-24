<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.service.TblOrderService"%>
<%@page import="com.main.pojo.TblOrder"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    Object ordersearch = request.getSession().getAttribute("ordersearch");
    if (ordersearch == null) {
        List<TblOrder> tblOrder = TblOrderService.getTblOrderList();
        pageContext.setAttribute("tblOrder", tblOrder);
    } else {
        pageContext.setAttribute("tblOrder", ordersearch);
        request.getSession().setAttribute("ordersearch", null);
    }

%>
<a href="../<%= IServletConstant.PAGE_ADD_ORDER%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD ORDER</button>
</a>


<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View Order Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th></th>
                                <th>CLIENT NAME</th>
                                <th>GSM</th>
                                
                                <th>LAMINATION</th>
                                <th>PRINTING</th>
                                <th>QTY</th>
                                
                                <th>SIDE</th>
                                <th>PAPER</th>
                                <th>CARD</th>
                                
                                <th>COMMENT</th>
                                <th>DATE</th>
                                <th>STATUS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="order" items="${pageScope.tblOrder}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_ORDER%>&id=${order.orderId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td></td>
                                    
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>