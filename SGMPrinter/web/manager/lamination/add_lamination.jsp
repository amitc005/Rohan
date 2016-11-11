<%@page import="com.main.service.LaminationService"%>
<%@page import="com.main.pojo.TblLamination"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
         TblLamination tblLamination = LaminationService.getTblLaminationlistById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblLamination", tblLamination);
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
                    <h5>ADD LAMINATION</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../LaminationTypeServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">LAMINATION NAME :</label>
                            <div class="controls">
                                <input type="text" name="lamination_name" value="${tblLamination.laminationName}" autofocus="" maxlength="100" class="span11"  required="" placeholder="LAMINATION NAME" />
                            </div>

                            <label class="control-label ">LAMINATION DESC :</label>
                            <div class="controls">
                                <input type="text" name="lamination_desc" value="${tblLamination.laminationDesc}" maxlength="250" class="span11"  required="" placeholder="LAMINATION DESC" />
                            </div>

                            <label class="control-label ">LAMINATION ADDED DATE :</label>
                            <div class="controls">
                                <input type="text" name="lamination_added_date" value="${tblLamination.laminationAddedDate}" maxlength="10" class="span11"  required="" placeholder="LAMINATION ADDED DATE" />
                            </div>

                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" value="${tblLamination.isActive}" maxlength="1" class="span11"  required="" placeholder="IS ACTIVE" />
                            </div>

                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblLamination.laminationId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_LAMINATION%>">
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
