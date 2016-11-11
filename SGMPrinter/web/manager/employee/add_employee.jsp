<%@page import="com.main.service.OffsetuserService"%>
<%@page import="com.main.pojo.Offsetuser"%>
<%@page import="com.main.pojo.TblSides"%>
<%@page import="com.main.service.SidesService"%>
<%@page import="com.main.servlet.IServletConstant"%>

<%
//
    Object idrequest = request.getParameter("id");
    if (idrequest != null) {
        /// change only this 	
         Offsetuser offsetuser = OffsetuserService.getTblOffsetuserlistById(new Integer(idrequest.toString()));
        pageContext.setAttribute("offsetuser", offsetuser);
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
<%@page import="com.main.servlet.IServletConstant"%>
<div class="container-fluid">
    <div class="row-fluid">
        <div class="span12">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-cloud"></i> </span>
                    <h5>ADD EMPLOYEE FORM</h5>
                </div>
                <div class="widget-content nopadding">
                    <form class="form-horizontal" method="post" action="../OffsetuserServlet" name="basic_validate" id="basic_validate" novalidate="novalidate">
                        <div class="control-group">
                            <label class="control-label ">USER TYPE ID :</label>
                            <div class="controls">
                                <input type="text" name="user_type_id" value="${offsetuser.userTypeId}" autofocus="" maxlength="11" class="span11"  required="" placeholder="USER TYPE ID" />
                            </div>

                            <label class="control-label ">USERNAME :</label>
                            <div class="controls">
                                <input type="text" name="username" value="${offsetuser.username}" maxlength="50" class="span11"  required="" placeholder="USERNAME" />
                            </div>

                            <label class="control-label ">PASSWORD :</label>
                            <div class="controls">
                                <input type="text" name="password" value="${offsetuser.password}" maxlength="50" class="span11"  required="" placeholder="PASSWORD" />
                            </div>

                            <label class="control-label ">FIRST NAME :</label>
                            <div class="controls">
                                <input type="text" name="first_name" value="${offsetuser.firstName}" maxlength="50" class="span11"  required="" placeholder="FIRST NAME" />
                            </div>

                            <label class="control-label ">LAST NAME :</label>
                            <div class="controls">
                                <input type="text" name="last_name" value="${offsetuser.lastName}" maxlength="50" class="span11"  required="" placeholder="LAST NAME" />
                            </div>

                            <label class="control-label ">EMAIL ID :</label>
                            <div class="controls">
                                <input type="text" name="email_id" value="${offsetuser.emailId}" maxlength="100" class="span11"  required="" placeholder="EMAIL ID" />
                            </div>

                            <label class="control-label ">LAST LOGIN :</label>
                            <div class="controls">
                                <input type="text" name="last_login" value="${offsetuser.lastLogin}" maxlength="50" class="span11"  required="" placeholder="LAST LOGIN" />
                            </div>

                            <label class="control-label ">ACTION PERMISSION :</label>
                            <div class="controls">
                                <input type="text" name="action_permission"  value="${offsetuser.actionPermission}" maxlength="100" class="span11"  required="" placeholder="ACTION PERMISSION" />
                            </div>

                            <label class="control-label ">PAGE PERMISSION :</label>
                            <div class="controls">
                                <input type="text" name="page_permission" value="${offsetuser.pagePermission}" maxlength="21845" class="span11"  required="" placeholder="PAGE PERMISSION" />
                            </div>

                            <label class="control-label ">INTIME :</label>
                            <div class="controls">
                                <input type="text" name="intime" value="${offsetuser.intime}" maxlength="10" class="span11"  required="" placeholder="INTIME" />
                            </div>

                            <label class="control-label ">OUTTIME :</label>
                            <div class="controls">
                                <input type="text" name="outtime" value="${offsetuser.outtime}" maxlength="10" class="span11"  required="" placeholder="OUTTIME" />
                            </div>

                            <label class="control-label ">MACID :</label>
                            <div class="controls">
                                <input type="text" name="macid" value="${offsetuser.macid}" maxlength="50" class="span11"  required="" placeholder="MACID" />
                            </div>

                            <label class="control-label ">IS ACTIVE :</label>
                            <div class="controls">
                                <input type="text" name="is_active" value="${offsetuser.isActive}"  maxlength="1" class="span11"  required="" placeholder="IS ACTIVE" />
                            </div>
                            <center>
                                <div class="form-actions right">
                                    <input type="hidden" name="<%= IServletConstant.ACTION%>" value="${actionvalue}" />
                                    <input type="hidden" name="<%= IServletConstant.HIDDEN_ID%>" value="${offsetuser.adminId}" />
                                    <button type="submit" class="${btnClass}">${btnValue}</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                    <a href="../<%=IServletConstant.PAGE_VIEW_EMPLOYEE%>">
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
