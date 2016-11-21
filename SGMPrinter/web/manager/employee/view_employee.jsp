
<%@page import="com.main.service.OffsetuserService"%>
<%@page import="com.main.pojo.Offsetuser"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>

<%

    Object offsetsearch = request.getSession().getAttribute("offsetsearch");
    if (offsetsearch == null) {
        List<Offsetuser> offsetusers = OffsetuserService.getOffsetuserList();
        pageContext.setAttribute("offsetusers", offsetusers);
    } else {
        pageContext.setAttribute("offsetusers", offsetsearch);
        request.getSession().setAttribute("offsetsearch",null);
    }

%>

<a href="../<%= IServletConstant.PAGE_ADD_EMPLOYEE%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD EMPLOYEE</button>
</a>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH EMPLOYEE FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OffsetuserServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">USERNAME :</label>
                            <div class="controls">
                                <input type="text" name="username"   autofocus="" maxlength="100" class="span11"    placeholder="USERNAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-success">Search</button>
                                <button type="submit" class="btn btn-danger">Clear</button>
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
                    <h5>View Employee Table </h5>
                </div>
                <div id="countTable" class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>User type id</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>FirstName</th>
                                <th>LastName</th>
                                <th>Email Id</th>
                                <th>LastLogin</th>
                                <th>Action Permission</th>
                                <th>Page Permission</th>
                                <th>Intime</th>
                                <th>Outtime</th>
                                <th>Mac Id</th>
                                <th>Is Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="employee" items="${pageScope.offsetusers}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_EMPLOYEE%>&id=${employee.adminId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${employee.userTypeId}"/> </td>
                                    <td><c:out value="${employee.username}"/> </td>
                                    <td><c:out value="${employee.password}"/> </td>
                                    <td><c:out value="${employee.firstName}"/> </td>
                                    <td><c:out value="${employee.lastName}"/> </td>
                                    <td><c:out value="${employee.emailId}"/> </td>
                                    <td><c:out value="${employee.lastLogin}"/> </td>
                                    <td><c:out value="${employee.actionPermission}"/> </td>
                                    <td><c:out value="${employee.pagePermission}"/> </td>
                                    <td><c:out value="${employee.intime}"/> </td>
                                    <td><c:out value="${employee.outtime}"/> </td>
                                    <td><c:out value="${employee.macid}"/> </td>
                                    <td><c:out value="${employee.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>