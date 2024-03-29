<%@page import="com.main.service.CitylistService"%>
<%@page import="com.main.pojo.TblCitylist"%>
<%@page import="com.main.servlet.IServletConstant"%>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>


<%
// 2 time import , need to delte one :)
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
        TblCitylist tblCitylist = CitylistService.getTblCitylistById(new Integer(idrequest.toString()));
        pageContext.setAttribute("tblCitylist", tblCitylist);
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

<a href="../<%= IServletConstant.PAGE_VIEW_CITY%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">VIEW CITY</button>
</a>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD CITY FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../CitylistServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CITY NAME :</label>
                            <div class="controls">
                                <input type="text" name="city_name" value="${tblCitylist.cityName}" autofocus="" maxlength="100" class="span11"  required="" placeholder="CITY NAME" />
                            </div>

                            <label class="control-label ">LATITUDE :</label>
                            <div class="controls">
                                <input type="text" name="latitude" value="${tblCitylist.latitude}" maxlength="10" class="span11"  required="" placeholder="LATITUDE" />
                            </div>

                            <label class="control-label ">LONGITUDE :</label>
                            <div class="controls">
                                <input type="text" name="longitude" value="${tblCitylist.longitude}" maxlength="10" class="span11"  required="" placeholder="LONGITUDE" />
                            </div>

                            <label class="control-label ">STATE ID :</label>
                            <div class="controls">
                                <input type="text" name="state_id" value="${tblCitylist.stateId}" maxlength="50" class="span11"  required="" placeholder="STATE ID" />
                            </div>
                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" value="${tblCitylist.isActive}" maxlength="1" class="span11"  required="" placeholder="IS ACTIVE" />
                            </div>
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${tblCitylist.cityId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_CITY%>">
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
