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
    <script>
        $("#success-btn").click(function() {
            $("div.success").fadeIn(300).delay(1500).fadeOut(400);
        });

        $("#failure-btn").click(function() {
            $("div.failure").fadeIn(300).delay(1500).fadeOut(400);
        });

        $("#warning-btn").click(function() {
            $("div.warning").fadeIn(300).delay(1500).fadeOut(400);
        });
    </script>
    <style>
        *{
            font-family: verdana;
            text-transform: capitalize;
        }
    </style>
    <body>
        <div id="header"><h1><a href="index.jsp?requestPage=">CUSTOM</a></h1></div>
        <div id="user-nav" class="navbar navbar-inverse"><%@include file="../topnavigation.jsp" %></div>
        <div id="sidebar"><%@include file="navigation.jsp" %></div>
        <div id="content">
            <div id="content-header">
                <div id="breadcrumb"> 
                    <a href="index.jsp?requestPage=" title="Dashboard" class="tip-bottom"><i class="icon-home"></i> HOME</a> 
                    <a href="#" class="current"><%=requestTitlePage%></a> </div>
            </div>
            <jsp:include flush="true" page="<%=requestIncludePage%>"></jsp:include> 
            </div>
            <div class="row-fluid"><%@include file="../footer.jsp" %></div>
    </body>
</html>

<!--<div class="alert-box success">Successful Alert !!!</div>
<div class="alert-box failure">Failure Alert !!!</div>
<div class="alert-box warning">Warning Alert !!!</div>-->