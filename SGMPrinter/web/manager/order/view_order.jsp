<%@page import="com.main.service.ClientService"%>
<%@page import="com.main.pojo.TblClient"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.service.TblOrderService"%>
<%@page import="com.main.pojo.TblOrder"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<TblClient> tblClients = ClientService.getClientList();
    pageContext.setAttribute("Client", tblClients);

%>

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



<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH ORDER FORM</h5>
                </div>
                <div class="widget-content nopadding">
                <form class="form-horizontal" method="post" action="../OrderServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CLIENT NAME :</label>
                            <div class="controls">
                                <select class="span11" name="client_id">
                                    <c:forEach var="client" items="${pageScope.Client}">
                                        <option value="${client.clientId}">${client.clientName}</option>
                                    </c:forEach>  
                                </select>
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-success">Search</button>
                            </div>
                        </div>
                    </form>
                      <hr>
                      <div class="container-fluid" style="margin-top: 0px;padding-top: 0px;">
                          <div class="span12">
                              <div class="widget-box">
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
            </div>
        </div>
    </div>
</div>