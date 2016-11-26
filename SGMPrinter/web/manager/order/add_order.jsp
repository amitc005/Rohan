
<%@page import="com.main.service.ClientService"%>
<%@page import="com.main.service.OrderService"%>
<%@page import="com.main.pojo.TblOrder"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%
    Object idrequest = request.getParameter("orderId");

    Object clientId = request.getParameter("clientId");
    if (clientId != null) {
        pageContext.setAttribute("tblClient", ClientService.getTblClientById(new Integer(clientId.toString())));
    }

    if (idrequest != null) {
        TblOrder tblOrder = OrderService.getTblOrderlistById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblOrder", tblOrder);
        pageContext.setAttribute("btnValue", "EDIT ORDER");
        pageContext.setAttribute("btnClass", "btn btn-info");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_UPDATE);
    } else {
        pageContext.setAttribute("btnValue", "CREATE ORDER");
        pageContext.setAttribute("btnClass", "btn btn-success");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_ADD);
    }
%>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-file"></i> </span>
                    <h5 style="text-transform: uppercase;color: green">
                        CREATE ORDER FOR <i class="icon-arrow-right"></i> 
                        ${tblClient.clientName} <i class="icon-arrow-right"></i>  
                        ${tblClient.firmName} <i class="icon-arrow-right"></i> 
                        ${tblClient.mobileNo} <i class="icon-arrow-right"></i> 
                        ${tblClient.tblCitylist.cityName} <i class="icon-arrow-right"></i> 
                        ${tblClient.tblState.stateName}
                    </h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OrderServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">ORDER OF :</label>
                                    <div class="controls">
                                        <input type="text" name="comment" autofocus="" value="${tblOrder.comment}" maxlength="21845" class="span12"  required="" placeholder="VC / INVITATION / BOOK " />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CARD ID :</label>
                                    <div class="controls">
                                        <input type="text" name="card_id" value="${tblOrder.tblCard}" maxlength="11" class="span12"  required="" placeholder="ART CARD / VISTING CARD" />
                                    </div>
                                </div>
                            </div> 

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">GSM:</label>
                                    <div class="controls">
                                        <input type="text" name="gsm_id" value="${tblOrder.tblCard}" maxlength="11" class="span12"  required="" placeholder="70 GSM, 80 GSM, 250 GSM " />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PAPER ID :</label>
                                    <div class="controls">
                                        <input type="text" name="paper_id" value="${tblOrder.tblPaper}" maxlength="11" class="span12"  required="" placeholder="MATT PAPER / GLOSS PAPER" />
                                    </div>
                                </div>
                            </div> 

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PRINTING :</label>
                                    <div class="controls">
                                        <input type="text" name="printing_id" value="${tblOrder.tblPrinting}" maxlength="11" class="span12"  required="" placeholder="S.S / F.B / MULTI" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">QTY ID :</label>
                                    <div class="controls">
                                        <input type="text" name="qty_id" value="${tblOrder.tblQty}" maxlength="11" class="span12"  required="" placeholder="1000 / 2000 / 3000 " />
                                    </div>
                                </div>
                            </div> 

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">LAMINATION :</label>
                                    <div class="controls">
                                        <input type="text" name="lamination_id" value="${tblOrder.tblLamination}" maxlength="11" class="span12"    placeholder="GLOASS L / MATT L" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">POST-PRESS :</label>
                                    <div class="controls">
                                        <input type="text" name="postpress_id" value="${tblOrder.tblPostpress}" maxlength="11" class="span12"   placeholder="PUCHNING / CUTTING" />
                                    </div>
                                </div>
                            </div> 

                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">ORDER AMOUNT :</label>
                                    <div class="controls">
                                        <input type="text" name="lamination_id" value="${tblOrder.tblLamination}" maxlength="11" class="span12"    placeholder="GLOASS L / MATT L" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">0. :</label>
                                    <div class="controls">
                                        <input type="text" name="postpress_id" value="${tblOrder.tblPostpress}" maxlength="11" class="span12"   placeholder="PUCHNING / CUTTING" />
                                    </div>
                                </div>
                            </div> 
                                    
                                    
                        </div>
                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblOrder.orderId}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_CLIENT_ID%>" value="${tblClient.clientId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_ORDER%>">
                                        <button type="button" class="btn btn-danger">VIEW ORDER</button>
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