<%@page import="com.main.service.TblOrderService"%>
<%@page import="com.main.pojo.TblOrder"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
// 2 time import , need to delte one :)
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
        TblOrder tblOrder = TblOrderService.getTblOrderlistById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblOrder", tblOrder);
        /// change only this 

	
        pageContext.setAttribute("btnValue", "Edit");
        pageContext.setAttribute("btnClass", "btn btn-info");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
    } else {
        pageContext.setAttribute("btnValue", "Save");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_ADD);
    }
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD ORDER FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">QUOTATION ID :</label>
                            <div class="controls">
                                <input type="text" name="quotation_id" value="${tblOrder.tblQuotation}" id="quotation_id" autofocus="" maxlength="11" class="span11"  required="" placeholder="QUOTATION ID" />
                            </div>
                            <label class="control-label ">CLIENT ID :</label>
                            <div class="controls">
                                <input type="text" name="client_id" value="${tblOrder.tblClient}" maxlength="11" class="span11"  required="" placeholder="CLIENT ID" />
                            </div>

                            <label class="control-label ">GSM ID :</label>
                            <div class="controls">
                                <input type="text" name="gsm_id" value="${tblOrder.tblCard}" maxlength="11" class="span11"  required="" placeholder="GSM ID" />
                            </div>

                            <label class="control-label ">LAMINATION ID :</label>
                            <div class="controls">
                                <input type="text" name="lamination_id" value="${tblOrder.tblLamination}" maxlength="11" class="span11"  required="" placeholder="LAMINATION ID" />
                            </div>

                            <label class="control-label ">POSTPRESS ID :</label>
                            <div class="controls">
                                <input type="text" name="postpress_id" value="${tblOrder.tblPostpress}" maxlength="11" class="span11"  required="" placeholder="POSTPRESS ID" />
                            </div>

                            <label class="control-label ">PRINTING ID :</label>
                            <div class="controls">
                                <input type="text" name="printing_id" value="${tblOrder.tblPrinting}" maxlength="11" class="span11"  required="" placeholder="PRINTING ID" />
                            </div>

                            <label class="control-label ">QTY ID :</label>
                            <div class="controls">
                                <input type="text" name="qty_id" value="${tblOrder.tblQty}" maxlength="11" class="span11"  required="" placeholder="QTY ID" />
                            </div>

                            <label class="control-label ">SIDE ID :</label>
                            <div class="controls">
                                <input type="text" name="side_id" value="${tblOrder.tblSides}" maxlength="11" class="span11"  required="" placeholder="SIDE ID" />
                            </div>

                            <label class="control-label ">PAPER ID :</label>
                            <div class="controls">
                                <input type="text" name="paper_id" value="${tblOrder.tblPaper}" maxlength="11" class="span11"  required="" placeholder="PAPER ID" />
                            </div>

                            <label class="control-label ">CARD ID :</label>
                            <div class="controls">
                                <input type="text" name="card_id" value="${tblOrder.tblCard}" maxlength="11" class="span11"  required="" placeholder="CARD ID" />
                            </div>

                            <label class="control-label ">COMMENT :</label>
                            <div class="controls">
                                <input type="text" name="comment" value="${tblOrder.comment}" maxlength="21845" class="span11"  required="" placeholder="COMMENT" />
                            </div>

                            <label class="control-label ">REQUESTDATE :</label>
                            <div class="controls">
                                <input type="text" name="requestdate" value="${tblOrder.requestdate}" maxlength="10" class="span11"  required="" placeholder="REQUESTDATE" />
                            </div>

                            <label class="control-label ">ORDERSTATUS :</label>
                            <div class="controls">
                                <input type="text" name="orderstatus" value="${tblOrder.orderstatus}" maxlength="10" class="span11"  required="" placeholder="ORDERSTATUS" />
                            </div>

                            <label class="control-label ">ISACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="isactive" value="${tblOrder.isactive}" maxlength="1" class="span11"  required="" placeholder="ISACTIVE" />
                            </div>
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblOrder.orderId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_ORDER%>">
                                        <button type="button" class="btn btn-danger">Cancel</button>
                                    </a>
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