<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblQty"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.QtyService"%>
<%
   Object qtysearch = request.getSession().getAttribute("qtysearch");
    if (qtysearch == null) {
        List<TblQty> tblQty = QtyService.getTblQtyList();
        pageContext.setAttribute("tblQty", tblQty);
    } else {
        pageContext.setAttribute("tblQty", qtysearch);
        request.getSession().setAttribute("qtysearch",null);
    }
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH CITY FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../QtyServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">QTY NAME:</label>
                            <div class="controls">
                                <input type="text" name="qty_name"   autofocus="" maxlength="100" class="span11"    placeholder="QTY NAME" />
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
</div>

<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View Quantity Table</h5>
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
                            <c:forEach var="qty" items="${pageScope.tblQtyList}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_QUANTITY %>&id=${qty.qtyId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
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