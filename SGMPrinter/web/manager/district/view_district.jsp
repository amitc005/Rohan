<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblDistrict"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.DistrictService"%>
<%

    Object districtsearch = request.getSession().getAttribute("districtsearch");
    if (districtsearch == null) {
        List<TblDistrict> tblDistricts = DistrictService.getTblDistrictList();
        pageContext.setAttribute("tblDistricts", tblDistricts);
    } else {
        pageContext.setAttribute("tblDistricts", districtsearch);
        request.getSession().setAttribute("districtsearch",null);
    }

%>

<a href="../<%= IServletConstant.PAGE_ADD_DISTRICT%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD DISTRICT</button>
</a>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH DISTRICT FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../DistrictServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">DISTRICT NAME :</label>
                            <div class="controls">
                                <input type="text" name="district_name"   autofocus="" maxlength="100" class="span11"    placeholder="DISTRICT NAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-success">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">
    <hr>
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-th"></i> </span>
                    <h5>View District Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                 
                                
                                <th>District Name</th>
                                <th>Latitude</th>
                                <th>Longitude</th>
                                <th>State Id</th>
                                <th>Is Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="district" items="${pageScope.tblDistricts}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_DISTRICT %>&id=${district.districtId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${district.districtName}"/> </td>
                                    <td><c:out value="${district.latitude}"/> </td>
                                    <td><c:out value="${district.longitude}"/> </td>
                                    <td><c:out value="${district.stateId}"/> </td>
                                    <td><c:out value="${district.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>