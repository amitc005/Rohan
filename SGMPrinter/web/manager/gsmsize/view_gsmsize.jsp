<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblGsm"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.GsmService"%>
<%
    List<TblGsm> gsmsizeList = GsmService.getGsmsizeList();
    pageContext.setAttribute("gsmsizeList", gsmsizeList);
%>
<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View Gsmsize Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>GSM Name</th>
                                <th>GSM Added Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="gsm" items="${pageScope.gsmsizeList}"> 
                                <tr>
                                    <td><c:out value="${gsm.gsmName}"/> </td>
                                    <td><c:out value="${gsm.gsmAddedDate}"/> </td>
                                    <td><c:out value="${gsm.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>