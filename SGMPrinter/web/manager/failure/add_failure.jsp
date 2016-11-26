<%@page import="com.main.servlet.IServletConstant"%>

<%
    Object failuerMessage = request.getSession().getAttribute(IServletConstant.MESSAGE_FAIL);
    Object failuerTrace = request.getSession().getAttribute(IServletConstant.MESSAGE_EXCEPTION);
    request.getSession().setAttribute(IServletConstant.MESSAGE_EXCEPTION, "");
%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-arrow-down"></i> </span>
                    <h5 style="text-transform: uppercase;color: green">FAILURE PAGE</h5>
                </div>
                <div class="widget-content nopadding">
                    <center>
                        <div class="control-group">
                            <div class="span11" style="clear: both ">
                                <p style="color: red"><%=failuerMessage%></p>
                                <p style="color: red"><%=failuerTrace%></p>
                            </div>
                        </div> 
                    </center>
                </div>
                <div class="control-group">
                    <center>
                        <div class="form-actions right">
                            <a href="../<%=IServletConstant.PAGE_VIEW_ORDER%>"><button type="button" class="btn btn-info">VIEW CLIENT</button></a>
                            <a href="../<%=IServletConstant.PAGE_VIEW_QUOTATION%>"><button type="button" class="btn btn-success">VIEW QUOTATION</button></a>
                            <a href="../<%=IServletConstant.PAGE_VIEW_ORDER%>"><button type="button" class="btn btn-warning">VIEW ORDER</button></a>
                        </div>
                    </center>
                </div>
            </div>
        </div>
    </div>
</div>