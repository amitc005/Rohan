    <%@page import="com.main.servlet.IServletConstant"%>
<div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                        <h5>Form validation</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="../OrderStatusHistoryServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                            <div class="control-group">
                               <label class="control-label ">ORDER ID :</label>
<div class="controls">
<input type="text" name="order_id" maxlength="11" class="span11"  required="" placeholder="ORDER ID" />
</div>

<label class="control-label ">ORDERSTATUS :</label>
<div class="controls">
<input type="text" name="orderstatus" maxlength="10" class="span11"  required="" placeholder="ORDERSTATUS" />
</div>

<label class="control-label ">CREATEDATE :</label>
<div class="controls">
<input type="text" name="createdate" maxlength="10" class="span11"  required="" placeholder="CREATEDATE" />
</div>

<label class="control-label ">MODIFYDATE :</label>
<div class="controls">
<input type="text" name="modifydate" maxlength="10" class="span11"  required="" placeholder="MODIFYDATE" />
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
