<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblState"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.StateService"%>
<%
    List<TblState>  tblStateList = StateService.getTblStateList();
    pageContext.setAttribute("tblStateList", tblStateList);
%>
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
                                <th>Name</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="state" items="${pageScope.tblStateList}"> 
                                <tr>
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