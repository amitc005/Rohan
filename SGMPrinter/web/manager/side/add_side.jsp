<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        TblSides tblSides = SidesService.getTblSlidesById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblSides", tblSides);
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
                    <form class="form-horizontal" method="post" action="../SidesServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">SIDE NAME :</label>
                            <div class="controls">
                                <input type="text" name="side_name" maxlength="100" autofocus="" class="span11" value="${tblSides.sideName}" required="" placeholder="SIDE NAME" />
                            </div>
                            <label class="control-label ">SIDE ADDED DATE :</label>
                            <div class="controls">
                                <input type="text" name="side_added_date" maxlength="10" class="span11"  value="${tblSides.sideAddedDate}"  required="" placeholder="SIDE ADDED DATE" />
                            </div>
                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" maxlength="1" class="span11"  value="${tblSides.isActive}"   required="" placeholder="IS ACTIVE" />
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