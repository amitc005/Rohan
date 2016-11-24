<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.main.pojo.TblQuotation"%>
<%@page import="com.main.service.QuotationService"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%
    List<TblQuotation> quotationList = QuotationService.getTblQuotationByLimit(new TblQuotation(), 5);
    pageContext.setAttribute("tblQuotation", quotationList);
%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title bg_ly" data-toggle="collapse" href="#collapseG2"><span class="icon"><i class="icon-chevron-down"></i></span>
                    <h5>LAST 5 ORDERS</h5>
                </div>
                <div class="widget-content nopadding collapse in" id="collapseG2">
                    <ul class="recent-posts">
                        <c:forEach var="quotation" items="${pageScope.tblQuotation}"> 
                            <li>
                                <div class="article-post">
                                    <span class="user-info"><c:out value="${quotation.quotationAddedDate}"/></span>
                                    <p><c:out value="${quotation.quotationDesc}"/></p>
                                </div>
                            </li>
                        </c:forEach>    
                        <li>
                            <button class="btn btn-warning btn-mini">
                                <a href="index.jsp?requestPage=view_quotation">
                                    View All
                                </a> 

                            </button>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
                    <h5>To Do list</h5>
                </div>
                <div class="widget-content">
                    <div class="todo">
                        <ul>
                            <li class="clearfix">
                                <div class="txt"> Luanch This theme on Themeforest <span class="by label">Nirav</span> <span class="date badge badge-important">Today</span> </div>
                                <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt"> Manage Pending Orders <span class="by label">Alex</span> <span class="date badge badge-warning">Today</span> </div>
                                <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt"> MAke your desk clean <span class="by label">Admin</span> <span class="date badge badge-success">Tomorrow</span> </div>
                                <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt"> Today we celebrate the great looking theme <span class="by label">Admin</span> <span class="date badge badge-info">08.03.2013</span> </div>
                                <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                            </li>
                            <li class="clearfix">
                                <div class="txt"> Manage all the orders <span class="by label">Mark</span> <span class="date badge badge-info">12.03.2013</span> </div>
                                <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr>
</div>