<%@page import="com.main.servlet.IServletConstant"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h1 style="color: red">PAGE-FAILURE</h1>
                </div>
                <div class="widget-content nopadding">
                    <%
                    request.getSession().getAttribute(IServletConstant.MESSAGE_FAIL);
                      out.println();
                    %>
                    <br>
                    <br>
                    <a href="../index.jsp">GO HOME</a>
                </div>   
            </div>
        </div>
    </div>
</div>
