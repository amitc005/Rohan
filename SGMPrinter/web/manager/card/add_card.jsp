<%@page import="com.main.pojo.TblCard"%>
<%@page import="com.main.service.CardTypeService"%>
<%@page import="com.main.service.CitylistService"%>
<%@page import="com.main.pojo.TblCitylist"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>


<%
// 2 time import , need to delte one :)
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
        TblCard tblCard = CardTypeService.getTblCardById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblCard", tblCard);
        /// change only this 

	
        pageContext.setAttribute("btnValue", "Edit");
        pageContext.setAttribute("btnClass", "btn btn-info");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
    } else {
        pageContext.setAttribute("btnValue", "Save");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_ADD);
    }
%>

<a href="../<%= IServletConstant.PAGE_VIEW_CARD%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">VIEW CARD</button>
</a>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD CARD FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../CardTypeServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CARD NAME :</label>
                            <div class="controls">
                                <input type="text" name="card_name" value="${tblCard.cardName}" autofocus="" maxlength="100" class="span11"  required="" placeholder="CARD NAME" />
                            </div>

                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" value="${tblCard.isActive}" maxlength="1" class="span11"  required="" placeholder="IS ACTIVE" />
                            </div>
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblCard.cardId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_CITY%>">
                                        <button type="button" class="btn btn-danger">Cancel</button>
                                    </a>
                                </div>
                            </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
