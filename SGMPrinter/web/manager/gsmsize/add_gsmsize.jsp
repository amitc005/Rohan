
<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblGsm"%>
<%@page import="com.main.service.GsmService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
     TblGsm tblGsm = GsmService.getTblGsmlistById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblGsm",tblGsm);
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
                    <h5>ADD GSM SIZE TABLE</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../GsmsizeServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">GSM NAME :</label>
<div class="controls">
<input type="text" name="gsm_name" maxlength="100" autofocus="" class="span11" value="${tblGsm.gsmName}" required="" placeholder="GSM NAME" />
</div>

<label class="control-label ">GSM ADDED DATE :</label>
<div class="controls">
<input type="text" name="gsm_added_date" maxlength="10" class="span11" value="${tblGsm.gsmAddedDate}"  required="" placeholder="GSM ADDED DATE" />
</div>

<label class="control-label ">IS ACTIVE :</label>
<div class="controls">
<input type="text" name="is_active" maxlength="1" class="span11" value="${tblGsm.isActive}" required="" placeholder="IS ACTIVE" />
</div>
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblSides.gsmId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_GSMSIZE%>">
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
