<%@page import="com.main.servlet.IServletConstant"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
    </head>

    <body>
        <%@include file="nav.jsp" %>
        <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
            <%@include file="leftnav.jsp" %>
        </div><!--/.sidebar-->

        <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
            <div class="row">
                <ol class="breadcrumb">
                    <li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
                    <li class="active">Client</li>
                    <li class="active">Add New Client</li>
                </ol>
            </div><!--/.row-->

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Client Registration Form</div>
                        <div class="panel-body">
                            <form role="form" action="./ClientServlet" method="post">
                                <div class="col-md-12">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Name :</label>
                                            <input class="form-control" type="text" name="name" minlength="2" maxlength="20" placeholder="Enter Full-Name">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Contact No. :</label>
                                            <input class="form-control" type="number" name="contact" minlength="2" maxlength="10" placeholder="Enter Contact No ">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Email Id :</label>
                                            <input class="form-control" type="email" name="email_id" minlength="2" maxlength="20" required="" placeholder="Enter Email-Id">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>City :</label>
                                            <input class="form-control" type="text" name="city" minlength="2" maxlength="20" required="" placeholder="Enter City">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Shop Name :</label>
                                            <input class="form-control" type="text" name="shop_name" minlength="2" maxlength="20" required="" placeholder="Enter Shop-Name">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Shop/Office Address :</label>
                                            <input class="form-control" type="text" name="office_address" minlength="2" maxlength="20" required="" placeholder="Enter Shop/Office Address">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="submit"  class="btn btn-primary" value="Save Client">
                                            <input type="submit"  class="btn btn-primary" value="Back">
                                            <input type="hidden" name="<%=IServletConstant.ACTION %>" value="<%=IServletConstant.ACTION_ADD %>" class="btn btn-primary" >
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div><!-- /.col-->
            </div><!-- /.row -->
        </div><!--/.main-->

        <%@include file="footer.jsp" %>
        <script>
            $('#calendar').datepicker({
            });

            !function ($) {
                $(document).on("click", "ul.nav li.parent > a > span.icon", function () {
                    $(this).find('em:first').toggleClass("glyphicon-minus");
                });
                $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
            }(window.jQuery);

            $(window).on('resize', function () {
                if ($(window).width() > 768)
                    $('#sidebar-collapse').collapse('show')
            })
            $(window).on('resize', function () {
                if ($(window).width() <= 767)
                    $('#sidebar-collapse').collapse('hide')
            })
        </script>	
    </body>

</html>