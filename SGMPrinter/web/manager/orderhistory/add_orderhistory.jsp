<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
        TblSides tblSides = SidesService.getTblSlidesById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblSides", tblSides);
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

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>Form validation</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderStatusHistoryServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">ORDER ID :</label>
                            <div class="controls">
                                <input type="text" name="order_id" maxlength="11" class="span11"  required="" placeholder="ORDER ID" />
                            </div>

                            <label class="control-label ">ORDER STATUS :</label>
                            <div class="controls">
                                <input type="text" name="orderstatus" maxlength="10" class="span11"  required="" placeholder="ORDERSTATUS" />
                            </div>

                            <label class="control-label ">CREATE DATE :</label>
                            <div class="controls">
                                <input type="text" name="createdate" maxlength="10" class="span11"  required="" placeholder="CREATEDATE" />
                            </div>

                            <label class="control-label ">MODIFY DATE :</label>
                            <div class="controls">
                                <input type="text" name="modifydate" maxlength="10" class="span11"  required="" placeholder="MODIFYDATE" />
                            </div>

                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblSides.sideId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_SIDE%>">
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
