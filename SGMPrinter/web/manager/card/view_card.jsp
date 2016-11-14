<%@page import="com.main.pojo.TblCard"%>
<%@page import="com.main.service.CardTypeService"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>

<%
    List<TblCard> tblCard = CardTypeService.getTblCardList();
    pageContext.setAttribute("tblCard", tblCard);
%>
<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View City Table </h5>
                </div>
                <div id="countTable" class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                
                                
                                <th>Card Name</th>
                               
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="card" items="${pageScope.tblCard}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_CITY %>&id=${card.cardId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${card.cardName}"/> </td>
                                    <td><c:out value="${card.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>