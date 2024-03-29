
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
    Object idrequest = request.getParameter("clientId");
    if (idrequest == null) {
        response.sendRedirect("../" + IServletConstant.PAGE_FAILUER);
    } else {
        TblClient tblClient = ClientService.getTblClientById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblClient", tblClient);
    }
%>


<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-user"></i></span><h5 style="color: red">DELETE EXISTING CLIENT</h5></div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group" style="background-color: white">
                            <div class="span11" style="clear: both "></div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PRO-PRITER NAME :</label>
                                    <div class="controls">
                                        <input type="text" name="propriter_name" disabled="" autofocus="" value="${tblClient.propriterName}" maxlength="100" class="span12"  required="" placeholder="PROPRITER NAME" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">FIRM NAME :</label>
                                    <div class="controls">
                                        <input type="text" name="firm_name"  disabled=""  value="${tblClient.firmName}"  maxlength="100" class="span12"  required="" placeholder="FIRM NAME" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">MOBILE NO :</label>
                                    <div class="controls">
                                        <input type="text" name="mobile_no"  disabled=""  value="${tblClient.mobileNo}" maxlength="11" class="span12"  required="" placeholder="MOBILE NO" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PHONE NO 1 :</label>
                                    <div class="controls">
                                        <input type="text" name="phone_no_1"  disabled=""  value="${tblClient.phoneNo1}" maxlength="30" class="span12"   placeholder="PHONE NO 1" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">POSTAL ADDRESS :</label>
                                    <div class="controls">
                                        <input type="text" name="postal_address"  disabled=""  value="${tblClient.postalAddress}"  maxlength="21845" class="span12"  required="" placeholder="POSTAL ADDRESS" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">PHONE NO 2 :</label>
                                    <div class="controls">
                                        <input type="text" name="phone_no_2"  disabled=""  value="${tblClient.phoneNo2}" maxlength="30" class="span12"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">CITY NAME :</label>
                                    <div class="controls">
                                        <input type="text" name="phone_no_2"  disabled=""  value="${tblClient.phoneNo2}" maxlength="30" class="span12"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">DISTRICT NAME :</label>
                                    <div class="controls">
                                        <input type="text" name="phone_no_2"  disabled=""  value="${tblClient.phoneNo2}" maxlength="30" class="span12"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span6"  style="float: left">
                                    <label class="control-label ">STATE NAME :</label>
                                    <div class="controls">
                                        <input type="text" name="phone_no_2"  disabled=""  value="${tblClient.phoneNo2}" maxlength="30" class="span12"   placeholder="PHONE NO 2" />
                                    </div>
                                </div>
                            </div>
                            <div class="span11">
                                <div class="span12"  >
                                    <label class="control-label ">CLIENT ADDRESS :</label>
                                    <div class="controls">
                                        <input type="text" name="client_address" disabled="" value="${tblClient.clientAddress}" maxlength="21845" class="span12"  required="" placeholder="CLIENT ADDRESS" />
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION_DELETE%>" value="<%= IServletConstant.ACTION_DELETE%>" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblClient.clientId}" />
                                    <button type="submit" class="btn btn-danger">DELETE CLIENT</button>
                                    <button type="reset" class="btn btn-primary">RESET</button>
                                    <a href="../<%= IServletConstant.PAGE_VIEW_CLIENT%>"><button type="button" class="btn btn-info">VIEW CLIENT</button></a>
                                </div>
                            </center>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>