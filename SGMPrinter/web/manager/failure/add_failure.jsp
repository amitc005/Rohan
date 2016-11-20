<%@page import="com.main.servlet.IServletConstant"%>

                    <%
                    request.getSession().getAttribute(IServletConstant.MESSAGE_FAIL);
                      out.println();
                    %>
                    <br>
                    <br>
                    <a href="../index.jsp">GO HOME</a>
                