<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.service.TblOrderService"%>
<%@page import="com.main.pojo.TblOrder"%>
<%@page import="java.util.List"%>
<%
     Object ordersearch = request.getSession().getAttribute("ordersearch");
    if (ordersearch == null) {
        List<TblOrder> tblOrder = TblOrderService.getTblOrderList();
        pageContext.setAttribute("tblOrder", tblOrder);
    } else {
        pageContext.setAttribute("tblOrder", ordersearch);
        request.getSession().setAttribute("ordersearch",null);
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
                                <th>QUOTATION ID</th>
                                <th>CLIENT ID</th>
                                <th>GSM ID</th>
                                <th>LAMINATION ID</th>
                                <th>PRINTING ID</th>
                                <th>QTY ID</th>
                              <th>SIDE ID</th>
                              <th>PAPER ID</th>
                                <th>CARD ID</th>
                                <th>COMMENT</th>
                                 <th>REQUESTDATE</th>
                                  <th>ORDERSTATUS</th>
                                   <th>ISACTIVE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="order" items="${pageScope.tblOrder}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_ORDER%>&id=${order.orderId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${order.tblQuotation}"/> </td>
                                    <td><c:out value="${order.tblClient}"/> </td>
                                    <td><c:out value="${order.tblGsm}"/> </td>
                                    <td><c:out value="${order.tblLamination}"/> </td>
                                      <td><c:out value="${order.tblPrinting}"/> </td>
                                      <td><c:out value="${order.tblQty}"/> </td>
                                    <td><c:out value="${order.tblSides}"/> </td>
                                    <td><c:out value="${order.tblPaper}"/> </td>
                                    <td><c:out value="${order.tblCard}"/> </td>
                                      <td><c:out value="${order.comment}"/> </td>
                                      <td><c:out value="${order.requestdate}"/> </td>
                                     <td><c:out value="${order.orderstatus}"/> </td>
                                     <td><c:out value="${order.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>