<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblPostpress"%>
<%@page import="com.main.service.PostpressService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
        TblPostpress tblPostpress = PostpressService.getTblPostpressById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblPostpress", tblPostpress);
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

<a href="../<%= IServletConstant.PAGE_VIEW_POSTPRESS%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">VIEW POSTPRESS</button>
</a>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD POSTPRESS TABLE</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../PostpressServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">POSTPRESS NAME :</label>
                            <div class="controls">
                                <input type="text" name="postpress_name" autofocus="" maxlength="100" class="span11" value="${tblPostpress.postpressName}" required="" placeholder="POSTPRESS NAME" />
                            </div>

                            <label class="control-label ">POSTPRESS DESC :</label>
                            <div class="controls">
                                <input type="text" name="postpress_desc" maxlength="21845" class="span11" value="${tblPostpress.postpressDesc}" required="" placeholder="POSTPRESS DESC" />
                            </div>

                            <label class="control-label ">POSTPRESS ADDED DATE :</label>
                            <div class="controls">
                                <input type="text" name="postpress_added_date" maxlength="10" class="span11"value="${tblPostpress.postpressAddedDate}"  required="" placeholder="POSTPRESS ADDED DATE" />
                            </div>
                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" maxlength="1" class="span11" value="${tblPostpress.isActive}"  required="" placeholder="IS ACTIVE" />
                            </div>

                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblPostpress.postpressId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_POSTPRESS%>">
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

