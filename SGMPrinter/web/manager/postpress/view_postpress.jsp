<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblPostpress"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.PostpressService"%>
<%
     Object postpresssearch = request.getSession().getAttribute("postpresssearch");
    if (postpresssearch == null) {
        List<TblPostpress> tblPostpress = PostpressService.getTblPostpressList();
        pageContext.setAttribute("tblPostpress", tblPostpress);
    } else {
        pageContext.setAttribute("tblPostpress", postpresssearch);
        request.getSession().setAttribute("postpresssearch",null);
    }

%>
<a href="../<%= IServletConstant.PAGE_ADD_POSTPRESS%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD POSTPRESS</button>
</a>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH POSTPRESS FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../PostpressServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">POSTPRESS NAME :</label>
                            <div class="controls">
                                <input type="text" name="postpress_name"   autofocus="" maxlength="100" class="span11"    placeholder="POSTPRESS NAME" />
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
                    <h5>View Postpress Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                
                                <th>Name</th>
                                <th>Description</th>
                                <th>Date</th>
                                <th>Is Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="postpress" items="${pageScope.tblPostpress}"> 
                                <tr>
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_POSTPRESS %>&id=${postpress.postpressId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${postpress.postpressName}"/> </td>
                                    <td><c:out value="${postpress.postpressDesc}"/> </td>
                                    <td><c:out value="${postpress.postpressAddedDate}"/> </td>
                                    <td><c:out value="${postpress.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>