<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblPrinting"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.PrintingService"%>
<%
   Object printingsearch = request.getSession().getAttribute("printingsearch");
    if (printingsearch == null) {
        List<TblPrinting> tblPrinting = PrintingService.getTblPrintingList();
        pageContext.setAttribute("tblPrinting", tblPrinting);
    } else {
        pageContext.setAttribute("tblPrinting", printingsearch);
        request.getSession().setAttribute("printingsearch",null);
    }
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH CITY FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../PrintingTypeServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">PRINTING NAME:</label>
                            <div class="controls">
                                <input type="text" name="printing_name"   autofocus="" maxlength="100" class="span11"    placeholder="PRINTING NAME" />
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
                    <h5>View Printtype Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>Name</th>
                                
                                <th>Date</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="printing" items="${pageScope.tblPrintings}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_PRINTTYPE %>&id=${printing.printingId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
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