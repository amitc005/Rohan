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
                        <div class="panel-heading">Quotation Form</div>
                        <div class="panel-body">
                            <form role="form" action="./QuotationServlet" method="post">
                                <div class="col-md-12">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Client Id :</label>
                                            <input class="form-control" type="text" name="c_id" minlength="2" maxlength="11" required="" placeholder="Placeholder">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Quotation Id :</label>
                                            <input class="form-control" type="text" name="q_id" minlength="2" maxlength="11" required="" placeholder="Placeholder">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Quotation For :</label>
                                            <select name="quotation_for" class="form-control" required="">
                                                <option value="----">---select---</option>
                                                <option value="marriage">Marriage Card</option>
                                                <option value="envelope">Envelope Card</option>
                                                <option value="visiting">Visiting Card</option>
                                                <option value="pamplet">Pamphlet</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Paper :</label>
                                            <select name="paper" class="form-control" required="">
                                                <option value="----">---select---</option>
                                                <option value="250gsm">250gsm</option>
                                                <option value="300gsm">300gsm</option>
                                                <option value="350gsm">350gsm</option>
                                                <option value="700gsm">700gsm</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Post Press :</label><br>
                                            <input type="checkbox" name="post_press" value="lamination"/>Lamination
                                            <input type="checkbox" name="post_press" value="binding">Binding
                                            <input type="checkbox" name="post_press" value="parcel">Parcel
                                            <input type="checkbox" name="post_press" value="delivery">Delivery
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Other Description :</label>
                                            <input class="form-control" type="text" name="other_desc" maxlength="20" placeholder="Enter any Description">
                                            
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

            !function($) {
                $(document).on("click", "ul.nav li.parent > a > span.icon", function() {
                    $(this).find('em:first').toggleClass("glyphicon-minus");
                });
                $(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
            }(window.jQuery);

            $(window).on('resize', function() {
                if ($(window).width() > 768)
                    $('#sidebar-collapse').collapse('show')
            })
            $(window).on('resize', function() {
                if ($(window).width() <= 767)
                    $('#sidebar-collapse').collapse('hide')
            })
        </script>	
    </body>

</html>