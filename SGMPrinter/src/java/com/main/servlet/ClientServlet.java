package com.main.servlet;

import com.main.pojo.TblClient;
import com.main.service.ClientService;
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

@WebServlet(name = "ClientServlet", urlPatterns = {"/ClientServlet"})
public class ClientServlet extends HttpServlet {

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
            TblClient tblClient = doMapping(request, response);
            boolean saveTblClientlist = ClientService.saveClient(tblClient);
            if (saveTblClientlist) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_CLIENT);
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
            TblClient tblClient = doMapping(request, response);
            boolean updateTblClientlist = ClientService.updateClient(tblClient);
            if (updateTblClientlist) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_CLIENT);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(CardTypeServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) {
        try {
            Integer clientId = Integer.parseInt(request.getParameter("updateId"));
            System.out.println("clientId =============== " + clientId);
            ClientService.deleteClient(ClientService.getTblClientById(clientId));
            response.sendRedirect(IServletConstant.PAGE_VIEW_CLIENT);
        } catch (IOException | NumberFormatException e) {
            System.out.println(e.getMessage());
            e.printStackTrace();
//                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            Logger.getLogger(ClientServlet.class.getName()).log(Level.SEVERE, null, e);

        }
    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private TblClient doMapping(HttpServletRequest request, HttpServletResponse response) {
        TblClient tblClient = new TblClient();

        tblClient.setClientName(request.getParameter("propriter_name"));
        tblClient.setPropriterName(request.getParameter("propriter_name"));
        tblClient.setClientAddress(request.getParameter("client_address"));
        tblClient.setPropriterImage("");
        tblClient.setFirmName(request.getParameter("firm_name"));
        tblClient.setMobileNo(request.getParameter("mobile_no"));
        tblClient.setPhoneNo1(request.getParameter("phone_no_1") == null ? "" : request.getParameter("phone_no_1"));
        tblClient.setPostalAddress(request.getParameter("postal_address"));
        tblClient.setPhoneNo2(request.getParameter("phone_no_2") == null ? "" : request.getParameter("phone_no_2"));
        tblClient.setClientAddedDate(new Date());
        tblClient.setClientUpdateDate(new Date());
        tblClient.setIsActive('Y');
        Object updateId = request.getParameter("updateId");
        if (updateId != null) {
            if (updateId.toString().trim().length() != 0) {
                tblClient.setClientId(Integer.parseInt(request.getParameter("updateId")));
            }
        }
        return tblClient;
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            //// get all search parameter 
            String client_name = request.getParameter("client_name");

            /// create mapper pojo fields
            HashMap<String, String> hashMap = new HashMap<>();
            hashMap.put("clientName", client_name);
            List<TblClient> searchClient = ClientService.searchClient(hashMap);

            request.getSession().setAttribute("clientsearch", searchClient);

            response.sendRedirect(IServletConstant.PAGE_VIEW_CLIENT);
        } catch (IOException ex) {
            Logger.getLogger(ClientServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {

    }
}
