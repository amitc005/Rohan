<%@page import="com.main.servlet.IServletConstant"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD ACCOUNT FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../AccountServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">

                            <label class="control-label "> ACCOUNT ID :</label>
                            <div class="controls">
                                <input type="text" name="account_id" autofocus="" maxlength="11" class="span11"  required="" placeholder="ACCOUNT ID" />
                            </div>
                            <label class="control-label ">CLIENT ID: :</label>
                            <div class="controls">
                                <input type="text" name="client_id" maxlength="50" class="span11"  required="" placeholder="CLIENT ID" />
                            </div>

                            <label class="control-label ">ORDER ID :</label>
                            <div class="controls">
                                <input type="text" name="order_id" maxlength="50" class="span11"  required="" placeholder="ORDER ID" />
                            </div>

                            <label class="control-label ">CREDIT AMOUNT :</label>
                            <div class="controls">
                                <input type="text" name="credited" maxlength="50" class="span11"  required="" placeholder="CREDIT AMOUNT" />
                            </div>

                            <label class="control-label ">DEBIT AMOUNT :</label>
                            <div class="controls">
                                <input type="text" name="debited" maxlength="50" class="span11"  required="" placeholder="DEBIT AMOUNT" />
                            </div>

                            <label class="control-label ">ACCOUNT ADDED DATE :</label>
                            <div class="controls">
                                <input type="text" name="account_added_date" maxlength="100" class="span11"  required="" placeholder="ACCOUNT ADDED DATE" />
                            </div>

                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" maxlength="50" class="span11"  required="" placeholder="IS ACTIVE" />
                            </div>
                            <center>       
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_ADD%>" />
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
