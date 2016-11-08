    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                        <h5>Form validation</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="../QtyServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                            <div class="control-group">
                               <label class="control-label ">QTY NAME :</label>
<div class="controls">
<input type="text" name="qty_name" maxlength="100" class="span11"  required="" placeholder="QTY NAME" />
</div>

<label class="control-label ">QTY ADDED DATE :</label>
<div class="controls">
<input type="text" name="qty_added_date" maxlength="10" class="span11"  required="" placeholder="QTY ADDED DATE" />
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
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
