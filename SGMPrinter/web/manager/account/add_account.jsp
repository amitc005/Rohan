<%@page import="com.main.servlet.IServletConstant"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>Form validation</h5>
                </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
                            <div class="control-group">

                                    <label class="control-label ">USER TYPE ID :</label>
                                    <div class="controls">
                                        <input type="text" name="user_type_id" maxlength="11" class="span11"  required="" placeholder="USER TYPE ID" />
                                    </div>
                                        <label class="control-label ">USERNAME :</label>
                                    <div class="controls">
                                        <input type="text" name="username" maxlength="50" class="span11"  required="" placeholder="USERNAME" />
                                    </div>

                                        <label class="control-label ">PASSWORD :</label>
                                    <div class="controls">
                                        <input type="text" name="password" maxlength="50" class="span11"  required="" placeholder="PASSWORD" />
                                    </div>

                                        <label class="control-label ">FIRST NAME :</label>
                                    <div class="controls">
                                        <input type="text" name="first_name" maxlength="50" class="span11"  required="" placeholder="FIRST NAME" />
                                    </div>

                                        <label class="control-label ">LAST NAME :</label>
                                    <div class="controls">
                                        <input type="text" name="last_name" maxlength="50" class="span11"  required="" placeholder="LAST NAME" />
                                    </div>

                                        <label class="control-label ">EMAIL ID :</label>
                                    <div class="controls">
                                        <input type="text" name="email_id" maxlength="100" class="span11"  required="" placeholder="EMAIL ID" />
                                    </div>

                                        <label class="control-label ">LAST LOGIN :</label>
                                    <div class="controls">
                                        <input type="text" name="last_login" maxlength="50" class="span11"  required="" placeholder="LAST LOGIN" />
                                    </div>

                                        <label class="control-label ">ACTION PERMISSION :</label>
                                    <div class="controls">
                                            <input type="text" name="action_permission" maxlength="100" class="span11"  required="" placeholder="ACTION PERMISSION" />
                                    </div>

                                     <center>       
                                    <div class="form-actions right">
                                        <input type="hidden" name="<%= IServletConstant.ACTION %>" value="<%= IServletConstant.ACTION_ADD %>" />
                                        <button type="submit" class="btn btn-success">Save</button>
                                        <button type="submit" class="btn btn-primary">Reset</button>
                                        <button type="submit" class="btn btn-info">Edit</button>
                                        <button type="submit" class="btn btn-danger">Cancel</button>
                                    </div>
                                     </center>
                            </div>       
                        </form>
                    </div>   
                    </div>
                </div>
            </div>
        </div>
