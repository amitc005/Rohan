
<%@page import="com.main.service.OrderServices"%>
<%@page import="com.main.dto.OrderDTO"%>
<%@page import="org.hibernate.SessionFactory"%>


<%@page import="java.util.ArrayList"%>

<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.List"%>

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
                    <li class="active">Order</li>
                    <li class="active">View Order</li>
                </ol>
            </div><!--/.row-->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Advanced Table</div>
                        <div class="panel-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr class="table header">
                                        <th style="width: 1%">#</th>
                                        <th style="width: 1%"></th>
                                        <th style="width: 1%"></th>
<!--                                        <th data-field="name" data-sortable="true" >Order Id </th>-->
                                        <th data-field="contact" data-sortable="true" >Client Id </th>
                                        <th data-field="email" data-sortable="true" >Quotation Id</th>
                                        <th data-field="city" data-sortable="true" >Payment</th>
                                        <th data-field="shop" data-sortable="true" >Order Payment</th>
                                         <th data-field="edit" data-sortable="true" >EDIT/UPDATE</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        //
                                        int index = 1;
                                        List<OrderDTO> list = OrderServices.getOrderList();
                                        for (OrderDTO order : list) {
                                    %>
                                    <tr>
                                        <td><%=index++%></td>
                                        <td>
                                            <a><i class="glyph ordertable"></i></a>
                                        </td>
                                        <td>
                                            <a><i class="glyph ordertable"></i></a>
                                        </td>
                                        
                                        <td><%=order.getC_id()%></td>
                                        <td><%=order.getQ_id()%></td>
                                        <td><%=order.getPayment()%></td>
                                        <td><%=order.getOrder_payment()%></td>
                                        <td><a href="#">Edit</a></td>
                                    </tr>
                                    <%//
                                        }
                                    %>
                                    <tr>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div><!--/.row-->	
        </div>
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