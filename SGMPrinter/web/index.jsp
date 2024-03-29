<%@page import="com.main.servlet.IServletConstant"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title><%=IServletConstant.PAGE_TITLE%></title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/bootstrap.min.css" />
        <link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="<%=IServletConstant.SERVER_URL%>css/matrix-login.css" />
        <link href="<%=IServletConstant.SERVER_URL%>font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" method="post" action="./LoginServlet">
                <div class="control-group normal_text"> <h3><img src="img/SGM.jpg" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">    
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span>
                            <input type="email" name="username" autofocus="" required="" maxlength="30" placeholder="Username" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span>
                            <input type="password" name="password" required="" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left">
                        <a href="#" class="flip-link btn btn-info" id="to-recover">Lost password?</a>
                    </span>
                    <span class="pull-right">
                        <input type="hidden" name="<%=IServletConstant.ACTION%>" value="<%=IServletConstant.ACTION_LOGIN%>" >
                        <input type="submit" class="btn btn-success"  value="Login">
                    </span>
                </div>
            </form>
            <form id="recoverform" method="post" action="./LoginServlet" class="form-vertical">
                <p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>

                <div class="controls">
                    <div class="main_input_box">
                        <span class="add-on bg_lo"><i class="icon-envelope"></i></span>
                        <input type="email" name="email" id="email" maxlength="20" minlength="5" required="true" placeholder="E-mail address" />
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right">
                        <input type="hidden" name="<%=IServletConstant.ACTION%>" value="<%=IServletConstant.ACTION_RECOVER%>" >
                        <input type="submit" class="btn btn-info"  value="Reecover">
                    </span>
                </div>
            </form>
        </div>
        <script src="<%=IServletConstant.SERVER_URL%>js/jquery.min.js"></script>  
        <script src="<%=IServletConstant.SERVER_URL%>js/matrix.login.js"></script> 
    </body>
</html>
