<%@page import="com.main.pojo.TblCard"%>
<%@page import="com.main.service.CardTypeService"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>

<%

    Object cardsearch = request.getSession().getAttribute("cardsearch");
    if (cardsearch == null) {
        List<TblCard> tblCards = CardTypeService.getTblCardList();
        pageContext.setAttribute("tblCards", tblCards);
    } else {
        pageContext.setAttribute("tblCards", cardsearch);
        request.getSession().setAttribute("cardsearch",null);
    }

%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH CARD FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CARD NAME :</label>
                            <div class="controls">
                                <input type="text" name="card_name"   autofocus="" maxlength="100" class="span11"    placeholder="CLIENT NAME" />
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
                    <h5>View City Table </h5>
                </div>
                <div id="countTable" class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
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