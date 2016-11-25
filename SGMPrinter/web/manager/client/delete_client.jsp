
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblState"%>
<%@page import="com.main.service.StateService"%>
<%@page import="com.main.pojo.TblDistrict"%>
<%@page import="com.main.service.DistrictService"%>
<%@page import="com.main.pojo.TblCitylist"%>
<%@page import="com.main.service.CitylistService"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.ClientService"%>
<%@page import="com.main.pojo.TblClient"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("clientId");
    if (idrequest == null) {
        response.sendRedirect("../" + IServletConstant.PAGE_FAILUER);
    } else {
        TblClient tblClient = ClientService.getTblClientById(new Integer(idrequest.toString()));
        out.print("tblClient.getClientName()=========>"+tblClient.getClientName());
        out.print("tblClient.getClientId()=========>"+tblClient.getClientId());
        pageContext.setAttribute("tblClient", tblClient);
        pageContext.setAttribute("btnValue", "DELETE CLIENT");
        pageContext.setAttribute("btnClass", "btn btn-danger");
        pageContext.setAttribute("actionvalue", IServletConstant.ACTION_DELETE);
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: red">DELETE EXISTING CLIENT</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <div class="span11">
                                <div class="span12"  >
                                    <label class="control-label ">CLIENT NAME :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="client_name" value="${tblClient.clientName}" autofocus="" maxlength="30" class="span11"  required="" placeholder="CLIENT NAME" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PRO-PRITER NAME :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="propriter_name" value="${tblClient.propriterName}" maxlength="100" class="span11"  required="" placeholder="PROPRITER NAME" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">FIRM NAME :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="firm_name"  value="${tblClient.firmName}"  maxlength="100" class="span11"  required="" placeholder="FIRM NAME" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE NO :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="mobile_no" value="${tblClient.mobileNo}" maxlength="11" class="span11"  required="" placeholder="MOBILE NO" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PHONE NO 1 :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="phone_no_1" value="${tblClient.phoneNo1}" maxlength="30" class="span11"   placeholder="PHONE NO 1" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">POSTAL ADDRESS :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="postal_address" value="${tblClient.postalAddress}"  maxlength="21845" class="span11"  required="" placeholder="POSTAL ADDRESS" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PHONE NO 2 :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="phone_no_2" value="${tblClient.phoneNo2}" maxlength="30" class="span11"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CITY NAME :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="phone_no_2" value="${tblClient.phoneNo2}" maxlength="30" class="span11"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DISTRICT NAME :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="phone_no_2" value="${tblClient.phoneNo2}" maxlength="30" class="span11"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">STATE NAME :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="phone_no_2" value="${tblClient.phoneNo2}" maxlength="30" class="span11"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span12"  >
                                    <label class="control-label ">CLIENT ADDRESS :</label>
                                    <div class="controls">
                                        <input type="text" disabled="" name="client_address" value="${tblClient.clientAddress}" maxlength="21845" class="span11"  required="" placeholder="CLIENT ADDRESS" />
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <center>
                                    <div class="form-actions right">
                                        <input type="hidden" name="<%= IServletConstant.ACTION_DELETE%>" value="${actionvalue}" />
                                        <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblClient.clientId}" />
                                        <button type="submit" class="${btnClass}">${btnValue}</button>
                                        <button type="reset" class="btn btn-primary">RESET</button>
                                        <a href="../<%= IServletConstant.PAGE_VIEW_CLIENT%>"><button type="button" class="btn btn-info">VIEW CLIENT</button></a>
                                    </div>
                                </center>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>