<%@page import="com.main.service.CitylistService"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblClient"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.ClientService"%>
<%
    List<TblClient> tblClients = ClientService.getClientList();
    pageContext.setAttribute("tblClients", tblClients);
%>
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
                                <th>clientName</th>
                                <th>propriterName</th>
                                <th>firmName</th>
                                <th>mobileNo</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="client" items="${pageScope.tblClients}"> 
                                <tr>
                                    <td><c:out value="${client.clientName}"/> </td>
                                    <td><c:out value="${client.propriterName}"/> </td>
                                    <td><c:out value="${client.firmName}"/> </td>
                                    <td><c:out value="${client.mobileNo}"/> </td>
                                    <td><c:out value="${client.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>