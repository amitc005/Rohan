<%@page import="com.main.servlet.IServletConstant"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.main.pojo.TblGsm"%>
<%@page import="java.util.List"%>
<%@page import="com.main.service.GsmService"%>
<%

    Object gsmsearch = request.getSession().getAttribute("gsmsearch");
    if (gsmsearch == null) {
        List<TblGsm> tblGsms = GsmService.getGsmsizeList();
        pageContext.setAttribute("tblGsms", tblGsms);
    } else {
        pageContext.setAttribute("tblGsms", gsmsearch);
        request.getSession().setAttribute("gsmsearch",null);
    }

%>

<a href="../<%= IServletConstant.PAGE_ADD_GSMSIZE%>" style="padding-left: 20px;">
    <button type="submit" class="btn btn-success">ADD GSMSIZE</button>
</a>

<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>SEARCH GSM FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../GsmServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">GSM NAME :</label>
                            <div class="controls">
                                <input type="text" name="gsm_name"   autofocus="" maxlength="100" class="span11"    placeholder="CLIENT NAME" />
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
                    <h5>View Gsmsize Table</h5>
                </div>
                <div class="widget-content nopadding">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th style="width: 1%">#</th>
                                <th  style="width: 1%">#</th>
                                <th>GSM Name</th>
                                <th>GSM Added Date</th>
                                <th>Is Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="gsm" items="${pageScope.tblGsms}"> 
                                <tr>
                                    
                                    <td><a href="../<%=IServletConstant.PAGE_ADD_GSMSIZE %>&id=${gsm.gsmId}"><i class="icon-edit"></i></a></td>
                                    <td><i class="icon-"></i></td>
                                    <td><c:out value="${gsm.gsmName}"/> </td>
                                    <td><c:out value="${gsm.gsmAddedDate}"/> </td>
                                    <td><c:out value="${gsm.isActive}"/> </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>