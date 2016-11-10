<%@page import="com.main.servlet.IServletConstant"%>
<title><%=IServletConstant.PAGE_TITLE%></title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/bootstrap.min.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/fullcalendar.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/matrix-style.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/matrix-media.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/uniform.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/select2.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>font-awesome/css/font-awesome.css"  />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/jquery.gritter.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/colorpicker.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/datepicker.css" />
<link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/bootstrap-wysihtml5.css" />

<script type="text/javascript" src="<%=IServletConstant.SERVER_URL%>js/excanvas.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.ui.custom.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/bootstrap.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.flot.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.flot.resize.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.peity.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/fullcalendar.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.dashboard.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.gritter.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.interface.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.chat.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.validate.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.form_validation.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.wizard.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.uniform.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/select2.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.popover.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/jquery.dataTables.min.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.tables.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/bootstrap-colorpicker.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/bootstrap-datepicker.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/masked.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/matrix.form_common.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/wysihtml5-0.3.0.js"></script> 
<script src="<%=IServletConstant.SERVER_URL%>js/bootstrap-wysihtml5.js"></script> 
 
<script>
    $('.textarea_editor').wysihtml5();
</script>
<script>
    $('.textarea_editor').wysihtml5();
</script>
<script type="text/javascript">
    // This function is called from the pop-up menus to transfer to
    // a different page. Ignore if the value returned is a null string:
    function goPage(newURL) {

        // if url is empty, skip the menu dividers and reset the menu selection to default
        if (newURL != "") {

            // if url is "-", it is this page -- reset the menu:
            if (newURL == "-") {
                resetMenu();
            }
            // else, send page to designated URL            
            else {
                document.location.href = newURL;
            }
        }
    }
    // resets the menu selection upon entry to this page:
    function resetMenu() {
        document.gomenu.selector.selectedIndex = 2;
    }
</script>