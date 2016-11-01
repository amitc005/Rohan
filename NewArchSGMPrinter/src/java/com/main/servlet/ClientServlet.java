package com.main.servlet;

import com.google.gson.Gson;
import com.main.dto.ClientDTO;
import com.main.pojo.TblClient;
import com.main.service.ClientServices;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
            }
        } catch (Exception e) {
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
        response.setContentType("text/html;charset=UTF-8");
        ClientDTO clientDTO = new ClientDTO(request, response);
        TblClient tblClient = clientDTO.getPojoFromDTO();
        boolean saveClient = ClientServices.saveClient(tblClient);
        try {
            if (saveClient) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_);
            } else {
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(ClientServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void updateRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        ClientDTO clientDTO = new ClientDTO(request, response);
        TblClient tblClient = clientDTO.getPojoFromDTO();
        boolean updateClient = ClientServices.updateClient(tblClient);
        try {
            if (updateClient) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_);
            } else {
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(ClientServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        ClientDTO clientDTO = new ClientDTO(request, response);
        TblClient tblClient = clientDTO.getPojoFromDTO();
        boolean updateClient = ClientServices.updateClient(tblClient);
        try {
            if (updateClient) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_);
            } else {
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(ClientServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
        try {
            Gson gson = new Gson();
            response.setContentType("application/json");
            ArrayList<ClientDTO> clientList = ClientServices.getClientList();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("[");
            for (ClientDTO clientDTO : clientList) {
                String jsonString = gson.toJson(clientDTO);
                stringBuilder.append(jsonString).append(",");
            }
            stringBuilder.append("]");
            System.out.println("stringBuilder = " + stringBuilder.toString());
//            response.getWriter().write(stringBuilder.toString());
            response.getWriter().write("[{\"name\":\"Pravin Tumsare\",\"contact\":55555,\"email_id\":\"Nagpur\",\"office_address\":\"adddress\"},{\"name\":\"Sagar Verma\",\"contact\":55555,\"email_id\":\"Nagpur\",\"office_address\":\"adddress\"},{\"name\":\"Sachin Tendulkar\",\"contact\":55555,\"email_id\":\"Nagpur\",\"office_address\":\"adddress\"}]");
        } catch (IOException ex) {
            Logger.getLogger(ClientServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
