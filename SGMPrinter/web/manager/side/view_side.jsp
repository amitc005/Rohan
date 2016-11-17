<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.SidesService"%>
<%
    Object sidessearch = request.getSession().getAttribute("sidessearch");
    if (sidessearch == null) {
        List<TblSides> tblSides = SidesService.getTblSidesList();
        pageContext.setAttribute("tblSides", tblSides);
    } else {
        pageContext.setAttribute("tblSides", sidessearch);
        request.getSession().setAttribute("papersearch",null);
    }
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH SIDE FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="..//SidesServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">SIDE NAME :</label>
                            <div class="controls">
                                <input type="text" name="side_name"   autofocus="" maxlength="100" class="span11"    placeholder="SIDE NAME" />
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
                    <h5>View Side Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Is Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="side" items="${pageScope.tblSides}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_SIDE %>&id=${side.sideId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${side.sideName}"/> </td>
                                    <td><c:out value="${side.sideAddedDate}"/> </td>
                                    <td><c:out value="${side.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>