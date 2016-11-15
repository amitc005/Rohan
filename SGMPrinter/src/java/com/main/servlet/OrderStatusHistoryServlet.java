package com.main.servlet;

import com.main.pojo.TblOrderStatusHistory;
import com.main.service.OrderStatusHistoryService;
import com.main.service.TblOrderService;
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

@WebServlet(name = "OrderStatusHistoryServlet", urlPatterns = {"/OrderStatusHistoryServlet"})
public class OrderStatusHistoryServlet extends HttpServlet {

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
            TblOrderStatusHistory orderStatusHistory = doMapping(request, response);
            boolean saveTblOrderStatusHistory = OrderStatusHistoryService.saveTblOrderStatusHistory(orderStatusHistory);
            if (saveTblOrderStatusHistory) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_ORDERHISTORY);
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
            TblOrderStatusHistory orderStatusHistory = doMapping(request, response);
            boolean updateTblOrderStatusHistory = OrderStatusHistoryService.updateTblOrderStatusHistory(orderStatusHistory);
            if (updateTblOrderStatusHistory) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_ORDERHISTORY);
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

    private TblOrderStatusHistory doMapping(HttpServletRequest request, HttpServletResponse response) {
        TblOrderStatusHistory orderStatusHistory = new TblOrderStatusHistory();

        orderStatusHistory.setId(Integer.parseInt(request.getParameter("order_id")));
        orderStatusHistory.setOrderstatus(request.getParameter("orderstatus"));
        orderStatusHistory.setCreatedate(new Date());
        orderStatusHistory.setModifydate(new Date());
        Object updateId = request.getParameter("updateId");
        if (updateId != null) {
            if (updateId.toString().trim().length() != 0) {
                orderStatusHistory.setId(Integer.parseInt(request.getParameter("updateId")));
            }
        }
        return orderStatusHistory;
    }
    private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            //// get all search parameter 
            String order_id = request.getParameter("order_id"); 
            
            /// create mapper pojo fields
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("tblOrder", order_id);
            List<TblOrderStatusHistory> searchOrderhistory = OrderStatusHistoryService.searchOrderhistory(hashMap);
            
            request.getSession().setAttribute("orderhistorysearch", searchOrderhistory);
            
            response.sendRedirect(IServletConstant.PAGE_VIEW_LAMINATION);
        } catch (IOException ex) {
            Logger.getLogger(OrderStatusHistoryServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}
