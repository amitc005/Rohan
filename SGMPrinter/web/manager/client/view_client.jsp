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
        out.print(tblClients.size()+"====");
        pageContext.setAttribute("tblClients", tblClients);
    } else {
        pageContext.setAttribute("tblClients", clientsearch);
        request.getSession().setAttribute("clientsearch",null);
    }

%>

<a href="../<%= IServletConstant.PAGE_ADD_CLIENT%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD CLIENT</button>
</a>

    <div class="container-fluid">
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
                    <h5>View Client Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>CLIENT NAME</th>
                                <th>FIRM NAME</th>
                                <th>MOBILE NO</th>
                                <th>CITY</th>
                                <th>STATE</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="client" items="${pageScope.tblClients}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_CLIENT %>&id=${client.clientId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${client.clientName}"/> </td>
                                    <td><c:out value="${client.firmName}"/> </td>
                                    <td><c:out value="${client.mobileNo}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>