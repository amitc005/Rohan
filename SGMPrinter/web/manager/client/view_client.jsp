<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.service.CitylistService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblClient"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.ClientService"%>
<%

    Object clientsearch = request.getSession().getAttribute("clientsearch");
    if (clientsearch == null) {
        List<TblClient> tblClients = ClientService.getClientList();
        pageContext.setAttribute("tblClients", tblClients);
    } else {
        pageContext.setAttribute("tblClients", clientsearch);
        request.getSession().setAttribute("clientsearch", null);
    }

%>
<div class="container-fluid" style="border: solid 0px;">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH CLIENT FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CLIENT NAME :</label>
                            <div class="controls">
                                <input type="text" name="client_name"   autofocus="" maxlength="100" class="span11"    placeholder="CLIENT NAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-info">SEARCH</button>
                                <button type="submit" class="btn btn-danger">RELOAD</button>
                                <a href="../<%= IServletConstant.PAGE_ADD_CLIENT%>">
                                    <button type="button" class="btn btn-success">ADD CLIENT</button>
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widget-content nopadding">
                            <table class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 2%">#</th>
                                        <th style="width: 2%">#</th>
                                        <th style="width: 2%">#</th>
                                        <th style="width: 2%">#</th>
                                        <th style="width: 2%">#</th>
                                        <th>CLIENT NAME</th>
                                        <th>FIRM NAME</th>
                                        <th>MOBILE NO</th>
                                        <th>CREDITED</th>
                                        <th>DEBITED</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="client" items="${pageScope.tblClients}"> 
                                        <tr>
                                            <td><a href="../<%=IServletConstant.PAGE_ADD_CLIENT%>&clientId=${client.clientId}"><i class="icon-edit"></i></a></td>
                                            <td><a href="../<%=IServletConstant.PAGE_DELETE_CLIENT%>&clientId=${client.clientId}"><i class="icon-cut"></i></a></i></td>
                                            <td><a href="../<%=IServletConstant.PAGE_ADD_ORDER %>&clientId=${client.clientId}" title="ADD ORDER"><i class="icon-file"></i></a> </td>
                                            <td><a  href="../<%=IServletConstant.PAGE_ADD_QUOTATION %>&clientId=${client.clientId}"  title="ADD QUOTATION"><i class="icon-beer"></i></a> </td>
                                            <td><a  href="../<%=IServletConstant.PAGE_ADD_ACCOUNT %>&clientId=${client.clientId}" title="VIEW ACCOUNT"><i class="icon-book"></i></a> </td>
                                            <td><c:out value="${client.clientName}"/> </td>
                                            <td><c:out value="${client.firmName}"/> </td>
                                            <td><c:out value="${client.mobileNo}"/> </td>
                                            <td>1000/-</td>
                                            <td>1000/-</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                                <thead><tr><th colspan="10" style="height: 18px;"></th></tr></thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
