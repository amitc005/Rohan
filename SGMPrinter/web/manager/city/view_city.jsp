<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblCitylist"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.CitylistService"%>
<%

    Object listscity = request.getSession().getAttribute("listscity");
    if (listscity == null) {
        List<TblCitylist> citylists = CitylistService.getTblCitylistList();
        pageContext.setAttribute("citylists", citylists);
    } else {
        pageContext.setAttribute("citylists", listscity);
        request.getSession().setAttribute("listscity",null);
    }

%>
<a href="../<%= IServletConstant.PAGE_ADD_CITY%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD CITY</button>
</a>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH CITY FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../CitylistServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">CITY NAME :</label>
                            <div class="controls">
                                <input type="text" name="city_name"   autofocus="" maxlength="100" class="span11"    placeholder="CITY NAME" />
                            </div>
                            <div class="controls">
                                <input type="hidden" name="<%= IServletConstant.ACTION%>" value="<%= IServletConstant.ACTION_SEARCH%>" />
                                <button type="submit" class="btn btn-success">Search</button>
                                <button type="submit" class="btn btn-danger">Clear</button>
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
                    <h5>View City Table </h5>
                </div>
                <div id="countTable" class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>City Name</th>
                                <th>Latitude</th>
                                <th>Longitude</th>
                                <th>State Id</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="city" items="${pageScope.citylists}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_CITY%>&id=${city.cityId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${city.cityName}"/> </td>
                                    <td><c:out value="${city.latitude}"/> </td>
                                    <td><c:out value="${city.longitude}"/> </td>
                                    <td><c:out value="${city.stateId}"/> </td>
                                    <td><c:out value="${city.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>