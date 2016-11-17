<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblState"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.StateService"%>
<%
   Object statesearch = request.getSession().getAttribute("statesearch");
    if (statesearch == null) {
        List<TblState> tblState = StateService.getTblStateList();
        pageContext.setAttribute("tblState", tblState);
    } else {
        pageContext.setAttribute("tblState", statesearch);
        request.getSession().setAttribute("statesearch",null);
    }
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH STATE FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../StateServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">STATE NAME  :</label>
                            <div class="controls">
                                <input type="text" name="state_name"   autofocus="" maxlength="100" class="span11"    placeholder="STATE NAME " />
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
                    <h5>View State Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th style="width: 1%">#</th>
                                <th>Name</th>
                                <th>Is Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="state" items="${pageScope.tblState}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_STATE %>&id=${state.stateId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${state.stateName}"/> </td>
                                    <td><c:out value="${state.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>