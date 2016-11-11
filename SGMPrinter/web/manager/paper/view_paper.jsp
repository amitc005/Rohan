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
                               <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="paper" items="${pageScope.tblPaperList}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_PAPER %>&id=${paper.paperId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${paper.paperName}"/> </td>
                                    <td><c:out value="${paper.PAddedDate}"/> </td>
                                    <td><c:out value="${paper.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>