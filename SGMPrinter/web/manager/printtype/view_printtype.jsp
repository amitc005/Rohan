<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblPrinting"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.PrintingService"%>
<%
    List<TblPrinting>  tblPrintings = PrintingService.getTblPrintingList();
    pageContext.setAttribute("tblPrintings", tblPrintings);
%>
<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View Printtype Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="printing" items="${pageScope.tblPrintings}"> 
                                <tr>
                                    <td><c:out value="${printing.printingName}"/> </td>
                                    <td><c:out value="${printing.printingName}"/> </td>
                                    <td><c:out value="${printing.ptAddedDate}"/> </td>
                                    <td><c:out value="${printing.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>