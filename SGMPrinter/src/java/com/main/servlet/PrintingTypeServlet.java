package com.main.servlet;

import com.main.pojo.TblPrinting;
import com.main.service.PrintingService;
import static com.main.service.PrintingService.searchPrinting;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "PrintingTypeServlet", urlPatterns = {"/PrintingTypeServlet"})
public class PrintingTypeServlet extends HttpServlet {

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
            TblPrinting tblPrinting = doMapping(request, response);
            boolean saveTblPrinting = PrintingService.saveTblPrinting(tblPrinting);
            if (saveTblPrinting) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_PRINTTYPE);
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
            TblPrinting tblPrinting = doMapping(request, response);
            boolean updateTblPrinting = PrintingService.updateTblPrinting(tblPrinting);
            if (updateTblPrinting) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_PRINTTYPE);
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

    private TblPrinting doMapping(HttpServletRequest request, HttpServletResponse response) {
        TblPrinting tblPrinting = new TblPrinting();

        tblPrinting.setPrintingName(request.getParameter("printing_name"));
        tblPrinting.setPtAddedDate(new Date());
        tblPrinting.setIsActive('Y');
        Object updateId = request.getParameter("updateId");
        if (updateId != null) {
            if (updateId.toString().trim().length() != 0) {
                tblPrinting.setPrintingId(Integer.parseInt(request.getParameter("updateId")));
            }
        }
        return tblPrinting;
    }
       private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            //// get all search parameter 
            String city_name = request.getParameter(""); 
            
            /// create mapper pojo fields
            HashMap<String, String> hashMap = new HashMap<>();
            
           
            
            List<TblPrinting> searchPrinting = PrintingService.searchPrinting(hashMap);
            
            request.getSession().setAttribute("printingsearch", searchPrinting);
            
            response.sendRedirect(IServletConstant.PAGE_VIEW_PRINTTYPE);
        } catch (IOException ex) {
            Logger.getLogger(PrintingTypeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
