<%@page import="com.main.pojo.TblState"%>
<%@page import="com.main.service.StateService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        
        /// change only this 	
        TblState tblState = StateService.getTblStateById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblState", tblState);
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

<a href="../<%= IServletConstant.PAGE_VIEW_STATE%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">VIEW STATE</button>
</a>

<%@page import="com.main.servlet.IServletConstant"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD STATE TABLE</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../StateServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">STATE NAME :</label>
                            <div class="controls">
                                <input type="text" name="state_name" autofocus="" maxlength="100" class="span11" value="${tblState.stateName}" required="" placeholder="STATE NAME" />
                            </div>

                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" maxlength="1" class="span11" value="${tblState.isActive}" required="" placeholder="IS ACTIVE" />
                            </div>
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblState.stateId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_STATE%>">
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
