package com.main.servlet;

import com.main.pojo.TblClient;
import com.main.pojo.TblOrder;
import com.main.service.CardTypeService;
import com.main.service.ClientService;
import com.main.service.GsmService;
import com.main.service.LaminationService;
import com.main.service.OrderService;
import com.main.service.PaperService;
import com.main.service.PostpressService;
import com.main.service.PrintingService;
import com.main.service.QtyService;
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

@WebServlet(name = "OrderServlet", urlPatterns = {"/OrderServlet"})
public class OrderServlet extends HttpServlet {

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
            TblOrder tblOrder = doMapping(request, response);
            boolean saveTblOrder = OrderService.saveTblOrder(tblOrder);
            if (saveTblOrder) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_ORDER);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (Exception ex) {
            Logger.getLogger(OrderServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void updateRequest(HttpServletRequest request, HttpServletResponse response) {
        try {
            TblOrder tblOrder = doMapping(request, response);
            boolean updateTblOrder = OrderService.updateTblOrder(tblOrder);
            if (updateTblOrder) {
                //response.sendRedirect(IServletConstant.PAGE_VIEW_ORDER);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, IServletConstant.MESSAGE_FAIL);
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (Exception ex) {
            request.getSession().setAttribute(IServletConstant.MESSAGE_EXCEPTION, ex);
            Logger.getLogger(OrderServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) {

        try {
            Integer orderId = Integer.parseInt(request.getParameter("orderId"));
            OrderService.deleteTblOrder(OrderService.getTblOrderlistById(orderId));
            response.sendRedirect(IServletConstant.PAGE_VIEW_ORDER);
        } catch (IOException | NumberFormatException e) {
            try {
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
                Logger.getLogger(OrderServlet.class.getName()).log(Level.SEVERE, null, e);
            } catch (IOException ex) {
                Logger.getLogger(OrderServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private TblOrder doMapping(HttpServletRequest request, HttpServletResponse response) {
        TblOrder tblOrder = new TblOrder();
        tblOrder.setComment(request.getParameter("comment") == null ? "" : request.getParameter("comment"));
        tblOrder.setTblClient(ClientService.getTblClientById(Integer.parseInt(request.getParameter("clientId"))));
        tblOrder.setTblCard(CardTypeService.getTblCardById(Integer.parseInt(request.getParameter("card_id"))));
        tblOrder.setTblGsm(GsmService.getTblGsmlistById(Integer.parseInt(request.getParameter("gsm_id"))));
        tblOrder.setTblPaper(PaperService.getTblPaperById(Integer.parseInt(request.getParameter("paper_id"))));
        tblOrder.setTblPrinting(PrintingService.getTblPrintingById(Integer.parseInt(request.getParameter("printing_id"))));
        tblOrder.setTblQty(QtyService.getTblQtyById(Integer.parseInt(request.getParameter("qty_id"))));
        tblOrder.setTblLamination(LaminationService.getTblLaminationlistById(Integer.parseInt(request.getParameter("lamination_id"))));
        tblOrder.setTblPostpress(PostpressService.getTblPostpressById(Integer.parseInt(request.getParameter("postpress_id"))));
        tblOrder.setIsactive('Y');
        tblOrder.setOrderstatus("NEW");
        tblOrder.setRequestdate(new Date());
        return tblOrder;
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            String client_id = request.getParameter("client_id");
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("tblClient", client_id);
            List<TblOrder> searchOrder = OrderService.searchOrder(hashMap);
            request.getSession().setAttribute("ordersearch", searchOrder);
            response.sendRedirect(IServletConstant.PAGE_VIEW_ORDER);
        } catch (IOException ex) {
            Logger.getLogger(OrderServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
