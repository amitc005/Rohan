<%@page import="com.main.service.AccountService"%>
<%@page import="com.main.pojo.TblAccount"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblCitylist"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.CitylistService"%>

<%

    Object accountsearch = request.getSession().getAttribute("accountsearch");
    if (accountsearch == null) {
        List<TblAccount> tblAccounts = AccountService.getTblAccountList();
        pageContext.setAttribute("tblAccounts", tblAccounts);
    } else {
        pageContext.setAttribute("tblAccounts", accountsearch);
        request.getSession().setAttribute("accountsearch",null);
    }

%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH ACCOUNT FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../AccountServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">ACCOUNT ID :</label>
                            <div class="controls">
                                <input type="text" name="account_id"   autofocus="" maxlength="100" class="span11"    placeholder="ACCOUNT ID" />
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
                    <h5>View Account Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table id="myTable" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>Client Id</th>
                                <th>Order Id</th>
                                <th>Credit </th>
                                <th>Debit</th>
                                <th>Added date</th>
                                <th>IS Active</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="account" items="${pageScope.tblAccounts}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_ACCOUNT%>&id=${account.accountId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${account.tblClient}"/> </td>
                                    <td><c:out value="${account.tblOrder}"/> </td>
                                    <td><c:out value="${account.credited}"/> </td>
                                    <td><c:out value="${account.debited}"/> </td>
                                    <td><c:out value="${account.accountAddedDate}"/> </td>
                                    <td><c:out value="${account.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>