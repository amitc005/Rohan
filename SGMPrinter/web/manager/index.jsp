<%//
    Object loginEmail = request.getSession().getAttribute(IServletConstant.ATTRIBUTE_USER_EMAIL);
    Object requestPage = request.getParameter("requestPage");
    String requestIncludePage = "";
    String requestTitlePage = "";
    if (requestPage == null) {
        requestIncludePage = "dashboard/dashboard.jsp";
    } else {
        try {
            String string[] = requestPage.toString().split("_");
            requestIncludePage = string[1] + "/" + requestPage.toString() + ".jsp";
            requestTitlePage = requestPage.toString().replace("_", " ").toUpperCase();
        } catch (Exception e) {
            requestIncludePage = "dashboard/dashboard.jsp";
            requestTitlePage = "Dashboard";
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head><%@include file="../header.jsp" %></head>
    <body>
        <div id="header"><h1><a href="index.jsp?requestPage=">CUSTOM</a></h1></div>
        <div id="user-nav" class="navbar navbar-inverse"><%@include file="../topnavigation.jsp" %></div>
        <div id="sidebar"><%@include file="navigation.jsp" %></div>
        <div id="content">
            <div id="content-header">
                <div id="breadcrumb"> 
                    <a href="index.jsp?requestPage=" title="Dashboard" class="tip-bottom"><i class="icon-home"></i> Home</a> 
                    <a href="#" class="current"><%=requestTitlePage%></a> </div>
            </div>
                <h3 style="padding-left: 20px;"><%=requestTitlePage%></h3>
            <jsp:include flush="true" page="<%=requestIncludePage%>"></jsp:include> 
         </div>
         <div class="row-fluid"><%@include file="../footer.jsp" %></div>
    </body>
</html>
