
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
   List<TblCitylist> list = CitylistService.getTblCitylistList();
   List<TblDistrict> district = DistrictService.getTblDistrictList();
   List<TblState> states= StateService.getTblStateList();
%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
        TblClient tblClient = ClientService.getTblClientById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblClient", tblClient);
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

<a href="../<%= IServletConstant.PAGE_VIEW_CLIENT%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">VIEW CLIENT</button>
</a>
    
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD CLIENT TABLE</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../ClientServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CLIENT NAME :</label>
                            <div class="controls">
                                <input type="text" name="client_name" value="${tblClient.clientName}" autofocus="" maxlength="30" class="span11"  required="" placeholder="CLIENT NAME" />
                            </div>
                            <label class="control-label ">CLIENT ADDRESS :</label>
                            <div class="controls">
                                <input type="text" name="client_address" value="${tblClient.clientAddress}" maxlength="21845" class="span11"  required="" placeholder="CLIENT ADDRESS" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label ">PRO-PRITER NAME :</label>
                            <div class="controls">
                                <input type="text" name="propriter_name" value="${tblClient.propriterName}" maxlength="100" class="span11"  required="" placeholder="PROPRITER NAME" />
                            </div>

                            <label class="control-label ">PRO-PRITER IMAGE :</label>
                            <div class="controls">
                                <input type="image" name="propriter_image" value="${tblClient.propriterImage}" maxlength="21845" class="span11"   placeholder="PROPRITER IMAGE" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label ">FIRM NAME :</label>
                            <div class="controls">
                                <input type="text" name="firm_name"  value="${tblClient.firmName}"  maxlength="100" class="span11"  required="" placeholder="FIRM NAME" />
                            </div>

                            <label class="control-label ">MOBILE NO :</label>
                            <div class="controls">
                                <input type="text" name="mobile_no" value="${tblClient.mobileNo}" maxlength="11" class="span11"  required="" placeholder="MOBILE NO" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label ">PHONE NO 1 :</label>
                            <div class="controls">
                                <input type="text" name="phone_no_1" value="${tblClient.phoneNo1}" maxlength="30" class="span11"   placeholder="PHONE NO 1" />
                            </div>

                            <label class="control-label ">POSTAL ADDRESS :</label>
                            <div class="controls">
                                <input type="text" name="postal_address" value="${tblClient.postalAddress}"  maxlength="21845" class="span11"  required="" placeholder="POSTAL ADDRESS" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label ">PHONE NO 2 :</label>
                            <div class="controls">
                                <input type="text" name="phone_no_2" value="${tblClient.phoneNo2}" maxlength="30" class="span11"   placeholder="PHONE NO 2" />
                            </div>

                            <label class="control-label ">CITY NAME :</label>
                            <div class="controls">
                                <select>
                                    <%  for (TblCitylist citylist : list) { %>
                                    
                                    
                                    <option><%=citylist.getCityName() %></option>  
                                    
                                      <%  }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label ">DISTRICT NAME :</label>
                            <div class="controls">
                                <select>
                                    <%  for (TblDistrict district1 : district) { %>
                                    
                                    
                                    <option><%=district1.getDistrictName() %></option>  
                                    
                                      <%  }
                                    %>
                                </select>
                            </div>

                            <label class="control-label ">STATE NAME :</label>
                            <div class="controls">
                                <select>
                                    <%  for (TblState states1 : states) { %>
                                    
                                    
                                    <option><%=states1.getStateName() %></option>  
                                    
                                      <%  }
                                    %>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label ">CLIENT ADDED DATE :</label>
                            <div class="controls">
                                <input type="text" name="client_added_date"  value="${tblClient.clientAddedDate}" maxlength="10" class="span11"  required="" placeholder="CLIENT ADDED DATE" />
                            </div>

                            <label class="control-label ">CLIENT UPDATE DATE :</label>
                            <div class="controls">
                                <input type="text" name="client_update_date" value="${tblClient.clientUpdateDate}" maxlength="10" class="span11"  required="" placeholder="CLIENT UPDATE DATE" />
                            </div>
                        </div>
                        <div class="control-group">
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblCLient.clientId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_CLIENT%>">
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
