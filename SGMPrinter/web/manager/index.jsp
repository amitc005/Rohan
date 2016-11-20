<%
//
    
    Object loginEmail = request.getSession().getAttribute(IServletConstant.ATTRIBUTE_USER_EMAIL);
    if(loginEmail == null){
        
    }
    
    Object requestPage = request.getParameter("requestPage");
    String requestIncludePage = "";
    String requestTitlePage = "";
    if (requestPage == null) {
        requestIncludePage = "dashboard/dashboard.jsp";
    } else {
        String string[] = requestPage.toString().split("_");
        requestIncludePage = string[1] + "/" + requestPage.toString() + ".jsp";
        requestTitlePage = requestPage.toString().replace("_", " ").toUpperCase();
    }
%>
<!DOCTYPE html>
<html lang="en">
    <head><%@include file="../header.jsp" %></head>
    <body>
        <!--Header-part-->
        <div id="header"><h1><a href="index.jsp">CUSTOM</a></h1></div>
        <!--close-Header-part--> 
        <!--top-Header-menu-->
        <div id="user-nav" class="navbar navbar-inverse"><%@include file="../topnavigation.jsp" %></div>
        <!--close-top-Header-menu-->
        <!--start-top-serch-->
        <div id="search">
            <input type="text" placeholder="Search here..."/>
            <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
        </div>
        <!--close-top-serch-->

        <!--sidebar-menu-->

        <div id="sidebar"><%@include file="navigation.jsp" %></div>

        <!--sidebar-menu-->
        <div id="content">
            <div id="content-header">
                <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Form elements</a> <a href="#" class="current">Validation</a> </div>
                <h1><%=requestTitlePage%></h1>
            </div>
            <!--main-container-part-->
            <jsp:include flush="true" page="<%=requestIncludePage%>"></jsp:include> 
            </div>
            <!--end-main-container-part-->
            <div class="row-fluid"><%@include file="../footer.jsp" %></div>
    </body>
</html>
