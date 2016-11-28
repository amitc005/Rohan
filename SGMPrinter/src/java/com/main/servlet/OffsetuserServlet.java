package com.main.servlet;

import com.main.pojo.TblOffsetuser;
import com.main.service.OffsetuserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "OffsetuserServlet", urlPatterns = {"/OffsetuserServlet"})
public class OffsetuserServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        try {
            String foraction = request.getParameter(IServletConstant.ACTION);
            if (foraction.equals(IServletConstant.ACTION_ADD)) {
                saveRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_UPDATE)) {
                updateRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_DELETE)) {
                deleteRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_VIEW)) {
                viewRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_AUTOCOMPLET)) {
                autoCompletRequest(request, response);
            } else if (foraction.equals(IServletConstant.ACTION_SEARCH)) {
                search(request, response);
            }
        } catch (Exception e) {
            request.getSession().setAttribute(IServletConstant.MESSAGE, e.getMessage());
            response.sendRedirect(IServletConstant.PAGE_FAILUER);
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void saveRequest(HttpServletRequest request, HttpServletResponse response) {

        try {
            TblOffsetuser offsetuser = doMapping(request, response);
            boolean saveTblOffsetuser = OffsetuserService.saveTblOffsetuser(offsetuser);
            if (saveTblOffsetuser) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_EMPLOYEE);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(OffsetuserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void updateRequest(HttpServletRequest request, HttpServletResponse response) {

        try {
            TblOffsetuser offsetuser = doMapping(request, response);
            boolean updateTblOffsetuser = OffsetuserService.updateTblOffsetuser(offsetuser);
            if (updateTblOffsetuser) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_EMPLOYEE);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(OffsetuserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) {

        try {
            Integer adminId = Integer.parseInt(request.getParameter("adminId"));
            OffsetuserService.deleteTblOffsetuser(OffsetuserService.getTblTblOffsetuserlistById(adminId));
            response.sendRedirect(IServletConstant.PAGE_VIEW_EMPLOYEE);
        } catch (IOException | NumberFormatException e) {
            try {
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
                Logger.getLogger(OffsetuserServlet.class.getName()).log(Level.SEVERE, null, e);
            } catch (IOException ex) {
                Logger.getLogger(OffsetuserServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private TblOffsetuser doMapping(HttpServletRequest request, HttpServletResponse response) {
        TblOffsetuser offsetuser = new TblOffsetuser();
        offsetuser.setUserTypeId(Integer.parseInt(request.getParameter("user_type_id")));
        offsetuser.setUsername(request.getParameter("username"));
        offsetuser.setPassword(request.getParameter("password"));
        offsetuser.setFirstName(request.getParameter("first_name"));
        offsetuser.setLastName(request.getParameter("last_name"));
        offsetuser.setEmailId(request.getParameter("email_id"));
        offsetuser.setLastLogin(request.getParameter("last_login"));
        offsetuser.setActionPermission(request.getParameter("action_permission"));
        offsetuser.setPagePermission(request.getParameter("page_permission"));
        offsetuser.setIntime(request.getParameter("intime"));
        offsetuser.setOuttime(request.getParameter("outtime"));
        offsetuser.setMacid(request.getParameter("macid"));
        offsetuser.setIsActive('Y');
        return offsetuser;
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            //// get all search parameter 
            String username = request.getParameter("username");

            /// create mapper pojo fields
            HashMap<String, String> hashMap = new HashMap<>();

            hashMap.put("username", username);
            List<TblOffsetuser> searchTblOffsetuser = OffsetuserService.searchTblOffsetuser(hashMap);

            request.getSession().setAttribute("offsetsearch", searchTblOffsetuser);

            response.sendRedirect(IServletConstant.PAGE_VIEW_EMPLOYEE);
        } catch (IOException ex) {
            Logger.getLogger(OffsetuserServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
