<%@page import="com.main.service.QuotationService"%>
<%@page import="com.main.pojo.TblQuotation"%>
<%@page import="java.util.List"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
// 2 time import , need to delte one :)
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        TblQuotation tblQuotationList = QuotationService.getTblQuotationById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblQuotationList", tblQuotationList);
        pageContext.setAttribute("btnValue", "EDIT QUOTATION");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
        pageContext.setAttribute("headerTitle", "UPDATE EXISTING QUOTATION ");
    } else {
        pageContext.setAttribute("btnValue", "SAVE QUOTATION");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_ADD);
        pageContext.setAttribute("headerTitle", "ADD NEW QUOTATION ");
    }
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-book"></i> </span>
                    <h5>${headerTitle}</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../QuotationServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CLIENT NAME:</label>
                            <div class="controls">
                                <input type="text" name="client_id"value="${tblQuotation.tblClient}" autofocus="" maxlength="11" class="span11"  required="" placeholder="CLIENT NAME" />
                            </div>

                            <label class="control-label ">DESCRIPTION :</label>
                            <div class="controls">
                                <textarea name="quotation_desc" style="height: 20%;resize: none" class="span11" required="" placeholder="QUOTATION DESC">${tblQuotation.quotationDesc}</textarea>
                            </div>
                        </div>
                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_ADD%>" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblQuotationList.quotationId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="../<%= IServletConstant.PAGE_VIEW_QUOTATION%>">
                                        <button type="submit" class="btn btn-info">VIEW QUOTATION</button>
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
