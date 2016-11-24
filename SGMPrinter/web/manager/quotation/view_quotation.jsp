<%@page import="com.main.pojo.TblClient"%>
<%@page import="com.main.service.ClientService"%>
<%@page import="com.main.service.QuotationService"%>
<%@page import="com.main.pojo.TblQuotation"%>
<%@page import="java.util.List"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
   List<TblClient> tblClients = ClientService.getClientList();
    pageContext.setAttribute("Client", tblClients);

%>

<%
     Object quotationsearch = request.getSession().getAttribute("quotationsearch");
    if (quotationsearch == null) {
        List<TblQuotation> tblQuotation = QuotationService.getTblQuotationList();
        pageContext.setAttribute("tblQuotation", tblQuotation);
    } else {
        pageContext.setAttribute("tblQuotation", quotationsearch);
        request.getSession().setAttribute("quotationsearch",null);
    }

%>
<a href="../<%= IServletConstant.PAGE_ADD_QUOTATION%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD QUOTATION</button>
</a>
    
   <div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH QUOTATION FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../QuotationServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
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
                    <h5>View Quotation Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>CLIENT</th>
                                <th>DESCRIPTION</th>
                                <th>DATE</th>
                                <th>IS READ</th>
                                <th>#</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="quotation" items="${pageScope.tblQuotation}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_QUOTATION %>&id=${quotation.quotationId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${quotation.quotationDesc}"/> </td>
                                    <td><c:out value="${quotation.quotationAddedDate}"/> </td>
                                    <td><c:out value="${quotation.readStatus}"/> </td>
                                      <td><c:out value="${quotation.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>