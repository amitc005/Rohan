package com.main.servlet;

import com.main.pojo.TblQuotationhistory;
import com.main.service.QuotationhistoryService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "QuotationhistoryServlet", urlPatterns = {"/QuotationhistoryServlet"})
public class QuotationhistoryServlet extends HttpServlet {

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
             TblQuotationhistory tblQuotationhistory = doMapping(request, response);
            boolean saveTblQuotationhistory = QuotationhistoryService.saveTblQuotationhistory(tblQuotationhistory);
            if (saveTblQuotationhistory) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_QUANTITY);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(CardTypeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    private void updateRequest(HttpServletRequest request, HttpServletResponse response) {
        
        try {
             TblQuotationhistory tblQuotationhistory = doMapping(request, response);
            boolean updateTblQuotationhistory = QuotationhistoryService.updateTblQuotationhistory(tblQuotationhistory);
            if (updateTblQuotationhistory) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_QUOTATION);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(CardTypeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    
     private TblQuotationhistory doMapping(HttpServletRequest request, HttpServletResponse response) {
         TblQuotationhistory  tblQuotationhistory = new TblQuotationhistory();
        
        tblQuotationhistory.setId(Integer.parseInt(request.getParameter("quotation_id")));
        tblQuotationhistory.setRequestquery(request.getParameter("requestquery"));
        tblQuotationhistory.setReplyanswer(request.getParameter("replyanswer"));
        tblQuotationhistory.setRequestdate(new Date());
        tblQuotationhistory.setReplydate(new Date());
        tblQuotationhistory.setHisstatus(request.getParameter("hisstatus"));
        tblQuotationhistory.setIsactive(new Character('Y'));
                
                
                
        return tblQuotationhistory;
    }
}
