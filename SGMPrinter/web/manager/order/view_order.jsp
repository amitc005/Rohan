<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.service.OrderService"%>
<%@page import="com.main.pojo.TblOrder"%>
<%@page import="com.main.service.ClientService"%>
<%@page import="com.main.pojo.TblClient"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<TblClient> tblClients = ClientService.getClientList();
    pageContext.setAttribute("Client", tblClients);

    Object ordersearch = request.getSession().getAttribute("ordersearch");
    if (ordersearch == null) {
        List<TblOrder> tblOrder = OrderService.getTblOrderList();
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
                <div class="widget-title"> <span class="icon"> <i class="icon-book"></i> </span>
                    <h5>SEARCH CLIENT'S ORDER</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CLIENT NAME :</label>
                            <div class="controls">
                                <select class="span11" name="client_id" id="clientId">
                                    <c:forEach var="client" items="${pageScope.Client}">
                                        <option value="${client.clientId}">${client.clientName}</option>
                                    </c:forEach>  
                                </select>
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-info">SEARCH</button>
                                <button type="button" class="btn btn-success" onclick="addOrder('../<%= IServletConstant.PAGE_ADD_ORDER %>')">
                                    CREATE ORDER
                                </button>
                            </div>
                        </div>
                    </form>
                    <div class="row-fluid">
                        <div class="span12">
                            <div class="widget-content nopadding">
                                <table class="table table-bordered table-striped" style="border-top: solid 1px rgb(220,220,220);text-transform: capitalize">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th></th>
                                            <th>CLIENT NAME</th>
                                            <th>GSM</th>
                                            <th>LAMIN</th>
                                            <th>PRINTING</th>
                                            <th>QTY</th>
                                            <th>SIDE</th>
                                            <th>PAPER</th>
                                            <th>CARD</th>
                                            <th>DATE</th>
                                            <th>DATE</th>
                                            <th>STATUS</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="order" items="${pageScope.tblOrder}"> 
                                            <tr>
                                                <td><a href="../<%=IServletConstant.PAGE_ADD_ORDER%>&id=${order.orderId}"><i class="icon-edit"></i></a></td>
                                                <td><a href="../<%=IServletConstant.PAGE_ADD_ORDER%>&id=${order.orderId}"><i class="icon-cut"></i></a></td>
                                                <td>${order.tblClient.clientName}</td>
                                                <td>${order.tblGsm.gsmName}</td>
                                                <td>${order.tblLamination.laminationName}</td>
                                                <td>${order.tblPrinting.printingName}</td>
                                                <td>${order.tblQty.qtyName}</td>
                                                <td>${order.tblSides.sideName}</td>
                                                <td>${order.tblPaper.paperName}</td>
                                                <td>${order.tblCard.cardName}</td>
                                                <td>${order.tblGsm.gsmName}</td>
                                                <td> </td>
                                                <td>${order.orderstatus}</td>
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

<script>
    function addOrder(url) {
        var clientId = document.getElementById("clientId").value;
        window.location.href = url + "&clientId=" + clientId;
    }
</script>