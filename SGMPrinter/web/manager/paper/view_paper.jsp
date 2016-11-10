<%@page import="com.main.service.TblPaperService"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblPaper"%>
<%@page import="java.util.List"%>
<%
    List<TblPaper>  tblPaperList = TblPaperService.getTblPaperList();
    pageContext.setAttribute("tblPaperList", tblPaperList);
%>
<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View Paper Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Description</th>
                                <th>Date</th>
                                <th>Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="lamination" items="${pageScope.tblLaminationList}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_PAPER %>&id=${paper.paperId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${lamination.laminationName}"/> </td>
                                    <td><c:out value="${lamination.laminationDesc}"/> </td>
                                    <td><c:out value="${lamination.laminationAddedDate}"/> </td>
                                    <td><c:out value="${lamination.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>