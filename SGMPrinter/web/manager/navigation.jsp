
<%
    Object requestActivePage = request.getParameter("requestPage");
    String requestActive = "";
    try {
        String string[] = requestActivePage.toString().split("_");
        requestActive = string[1];
    } catch (Exception e) {
        requestActive = "dashboard";
    }
%>

<a href="index.jsp" class="visible-phone"><i class="icon icon-home"></i> Dashboard</a>
<ul>
    <li class="<%=requestActive.equals("dashboard") ? "active" : ""%>"><a href="index.jsp?requestPage="><i class="icon icon-home"></i> <span>DASHBOARD</span></a> </li>
    <li class="<%=requestActive.equals("account") ? "active" : ""%>"> <a href="index.jsp?requestPage=view_account"><i class="icon icon-magic"></i> <span>ACCOUNT TALLY</span></a></li>
    <li class="<%=requestActive.equals("client") ? "active" : ""%>"> <a href="index.jsp?requestPage=view_client"><i class="icon icon-user-md"></i> <span>CLIENT</span></a></li>
    <li class="<%=requestActive.equals("quotation") ? "active" : ""%>"> <a href="index.jsp?requestPage=view_quotation"><i class="icon icon-book"></i> <span>QUOTATION</span></a></li>
    <li class="<%=requestActive.equals("order") ? "active" : ""%>"> <a href="index.jsp?requestPage=view_order"><i class="icon icon-file"></i> <span>ORDER</span></a></li>
    <li class="submenu"  class="<%=requestActive.equals("setting") ? "active" : ""%>"> <a href=""><i class="icon icon-search"></i> <span>SETTING</span></a>
<!--        <ul>
            <li><a href="index.jsp?requestPage=view_city">View City</a></li>
            <li><a href="index.jsp?requestPage=view_district">View District</a></li>
            <li><a href="index.jsp?requestPage=view_employee">View Employee</a></li>
            <li><a href="index.jsp?requestPage=view_gsmsize">View GSM size</a></li>
            <li><a href="index.jsp?requestPage=view_lamination">View Lamination</a></li>
            <li><a href="index.jsp?requestPage=view_orderhistory">View Order history</a></li>
            <li><a href="index.jsp?requestPage=view_paper">View Paper</a></li>
            <li><a href="index.jsp?requestPage=view_postpress">View Post Press</a></li>
            <li><a href="index.jsp?requestPage=view_printtype">View Print Type</a></li>
            <li><a href="index.jsp?requestPage=view_quantity">View Quantity</a></li>
            <li><a href="index.jsp?requestPage=view_quotation">View Quotation</a></li>
        </ul>-->
    </li>
</ul>