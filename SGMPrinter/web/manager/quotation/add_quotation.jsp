    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                        <h5>Form validation</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="./QuotationServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                            <div class="control-group">
                              <label class="control-label ">CLIENT ID :</label>
<div class="controls">
<input type="text" name="client_id" maxlength="11" class="span11"  required="" placeholder="CLIENT ID" />
</div>

<label class="control-label ">QUOTATION DESC :</label>
<div class="controls">
<input type="text" name="quotation_desc" maxlength="21845" class="span11"  required="" placeholder="QUOTATION DESC" />
</div>

<label class="control-label ">QUOTATION ADDED DATE :</label>
<div class="controls">
<input type="text" name="quotation_added_date" maxlength="10" class="span11"  required="" placeholder="QUOTATION ADDED DATE" />
</div>

<label class="control-label ">QUOTATION UPDATE DATE :</label>
<div class="controls">
<input type="text" name="quotation_update_date" maxlength="10" class="span11"  required="" placeholder="QUOTATION UPDATE DATE" />
</div>

<label class="control-label ">READ STATUS :</label>
<div class="controls">
<input type="text" name="read_status" maxlength="20" class="span11"  required="" placeholder="READ STATUS" />
</div>

<label class="control-label ">IS ACTIVE :</label>
<div class="controls">
<input type="text" name="is_active" maxlength="1" class="span11"  required="" placeholder="IS ACTIVE" />
</div>
                            <center>
                                <div class="form-actions right">
                                    <button type="submit" class="btn btn-success">Save</button>
                                    <button type="submit" class="btn btn-primary">Reset</button>
                                    <button type="submit" class="btn btn-info">Edit</button>
                                    <button type="submit" class="btn btn-danger">Cancel</button>
                                </div>
                            </center>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
