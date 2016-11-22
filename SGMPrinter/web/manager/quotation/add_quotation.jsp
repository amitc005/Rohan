<%@page import="com.main.service.QuotationService"%>
<%@page import="com.main.pojo.TblQuotation"%>
<%@page import="java.util.List"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
// 2 time import , need to delte one :)
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
        TblQuotation tblQuotationList = QuotationService.getTblQuotationById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblQuotationList", tblQuotationList);
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

<a href="../<%= IServletConstant.PAGE_VIEW_QUOTATION%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">VIEW QUOTATION</button>
</a>

<div class="container-fluid">
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                        <h5>ADD QUOTATION TABLE</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="../QuotationServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                            <div class="control-group">
                              <label class="control-label ">CLIENT ID :</label>
<div class="controls">
<input type="text" name="client_id"value="${tblQuotation.tblClient}" autofocus="" maxlength="11" class="span11"  required="" placeholder="CLIENT ID" />
</div>

<label class="control-label ">QUOTATION DESC :</label>
<div class="controls">
<input type="text" name="quotation_desc" value="${tblQuotation.quotationDesc}"maxlength="21845" class="span11"  required="" placeholder="QUOTATION DESC" />
</div>

<label class="control-label ">QUOTATION ADDED DATE :</label>
<div class="controls">
<input type="text" name="quotation_added_date" value="${tblQuotation.quotationAddedDate}" maxlength="10" class="span11"  required="" placeholder="QUOTATION ADDED DATE" />
</div>

<label class="control-label ">QUOTATION UPDATE DATE :</label>
<div class="controls">
<input type="text" name="quotation_update_date"value="${tblQuotation.quotationUpdateDate}" maxlength="10" class="span11"  required="" placeholder="QUOTATION UPDATE DATE" />
</div>

<label class="control-label ">READ STATUS :</label>
<div class="controls">
<input type="text" name="read_status" value="${tblQuotation.readStatus}" maxlength="20" class="span11"  required="" placeholder="READ STATUS" />
</div>

<label class="control-label ">IS ACTIVE :</label>
<div class="controls">
<input type="text" name="is_active" value="${tblQuotation.isActive}" maxlength="1" class="span11"  required="" placeholder="IS ACTIVE" />
</div>
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION %>" value="<%= IServletConstant.ACTION_ADD %>" />
                                 <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblQuotationList.quotationId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_QUOTATION%>">
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
