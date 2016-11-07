    <div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                        <h5>Form validation</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="./CitylistServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                            <div class="control-group">
                              <label class="control-label ">CITY NAME :</label>
<div class="controls">
<input type="text" name="city_name" maxlength="100" class="span11"  required="" placeholder="CITY NAME" />
</div>

<label class="control-label ">LATITUDE :</label>
<div class="controls">
<input type="text" name="latitude" maxlength="10" class="span11"  required="" placeholder="LATITUDE" />
</div>

<label class="control-label ">LONGITUDE :</label>
<div class="controls">
<input type="text" name="longitude" maxlength="10" class="span11"  required="" placeholder="LONGITUDE" />
</div>

<label class="control-label ">STATE ID :</label>
<div class="controls">
<input type="text" name="state_id" maxlength="50" class="span11"  required="" placeholder="STATE ID" />
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
