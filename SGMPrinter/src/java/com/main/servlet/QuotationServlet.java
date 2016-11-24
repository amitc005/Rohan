package com.main.servlet;

import com.main.pojo.TblQuotation;
import com.main.service.QuotationService;
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

@WebServlet(name = "QuotationServlet", urlPatterns = {"/QuotationServlet"})
public class QuotationServlet extends HttpServlet {

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
            }else if (foraction.equals(IServletConstant.ACTION_SEARCH)) {
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
             TblQuotation tblQuotation = doMapping(request, response);
            boolean saveTblQuotation = QuotationService.saveTblQuotation(tblQuotation);
            if (saveTblQuotation) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_QUOTATION);
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
             TblQuotation tblQuotation = doMapping(request, response);
            boolean updateTblQuotation = QuotationService.updateTblQuotation(tblQuotation);
            if (updateTblQuotation) {
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

    
    private TblQuotation doMapping(HttpServletRequest request, HttpServletResponse response) {
         TblQuotation  tblQuotation = new TblQuotation();
        
        
        
        
        return tblQuotation;
    }
      private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            //// get all search parameter 
            String client_id = request.getParameter("client_id"); 
            
            /// create mapper pojo fields
            HashMap<String, String> hashMap = new HashMap<>();
            
            hashMap.put("tblClient", client_id);
            
            List<TblQuotation> searchQuotation = QuotationService.searchQuotation(hashMap);
            
            request.getSession().setAttribute("quotationsearch", searchQuotation);
            
            response.sendRedirect(IServletConstant.PAGE_VIEW_QUOTATION);
        } catch (IOException ex) {
            Logger.getLogger(QuotationServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
