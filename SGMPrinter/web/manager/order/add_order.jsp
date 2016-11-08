<%@page import="com.main.servlet.IServletConstant"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>Form validation</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">QUOTATION ID :</label>
                            <div class="controls">
                                <input type="text" name="quotation_id" id="quotation_id" maxlength="11" class="span11"  required="" placeholder="QUOTATION ID" />
                            </div>
                            <label class="control-label ">CLIENT ID :</label>
                            <div class="controls">
                                <input type="text" name="client_id" maxlength="11" class="span11"  required="" placeholder="CLIENT ID" />
                            </div>

                            <label class="control-label ">GSM ID :</label>
                            <div class="controls">
                                <input type="text" name="gsm_id" maxlength="11" class="span11"  required="" placeholder="GSM ID" />
                            </div>

                            <label class="control-label ">LAMINATION ID :</label>
                            <div class="controls">
                                <input type="text" name="lamination_id" maxlength="11" class="span11"  required="" placeholder="LAMINATION ID" />
                            </div>

                            <label class="control-label ">POSTPRESS ID :</label>
                            <div class="controls">
                                <input type="text" name="postpress_id" maxlength="11" class="span11"  required="" placeholder="POSTPRESS ID" />
                            </div>

                            <label class="control-label ">PRINTING ID :</label>
                            <div class="controls">
                                <input type="text" name="printing_id" maxlength="11" class="span11"  required="" placeholder="PRINTING ID" />
                            </div>

                            <label class="control-label ">QTY ID :</label>
                            <div class="controls">
                                <input type="text" name="qty_id" maxlength="11" class="span11"  required="" placeholder="QTY ID" />
                            </div>

                            <label class="control-label ">SIDE ID :</label>
                            <div class="controls">
                                <input type="text" name="side_id" maxlength="11" class="span11"  required="" placeholder="SIDE ID" />
                            </div>

                            <label class="control-label ">PAPER ID :</label>
                            <div class="controls">
                                <input type="text" name="paper_id" maxlength="11" class="span11"  required="" placeholder="PAPER ID" />
                            </div>

                            <label class="control-label ">CARD ID :</label>
                            <div class="controls">
                                <input type="text" name="card_id" maxlength="11" class="span11"  required="" placeholder="CARD ID" />
                            </div>

                            <label class="control-label ">COMMENT :</label>
                            <div class="controls">
                                <input type="text" name="comment" maxlength="21845" class="span11"  required="" placeholder="COMMENT" />
                            </div>

                            <label class="control-label ">REQUESTDATE :</label>
                            <div class="controls">
                                <input type="text" name="requestdate" maxlength="10" class="span11"  required="" placeholder="REQUESTDATE" />
                            </div>

                            <label class="control-label ">ORDERSTATUS :</label>
                            <div class="controls">
                                <input type="text" name="orderstatus" maxlength="10" class="span11"  required="" placeholder="ORDERSTATUS" />
                            </div>

                            <label class="control-label ">ISACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="isactive" maxlength="1" class="span11"  required="" placeholder="ISACTIVE" />
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
<script>
    $(function () {
        var availableTags = [
            "ActionScript",
            "AppleScript",
            "Asp",
            "BASIC",
            "C",
            "C++",
            "Clojure",
            "COBOL",
            "ColdFusion",
            "Erlang",
            "Fortran",
            "Groovy",
            "Haskell",
            "Java",
            "JavaScript",
            "Lisp",
            "Perl",
            "PHP",
            "Python",
            "Ruby",
            "Scala",
            "Scheme"
        ];
        $("#quotation_id").autocomplete({
            source: availableTags
        });
    });
</script>