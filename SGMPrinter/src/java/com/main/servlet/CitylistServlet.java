package com.main.servlet;

import com.main.pojo.TblCitylist;
import com.main.service.CitylistService;
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

@WebServlet(name = "CitylistServlet", urlPatterns = {"/CitylistServlet"})
public class CitylistServlet extends HttpServlet {

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
            TblCitylist tblCitylist = doMapping(request, response);
            boolean saveTblCitylist = CitylistService.saveTblCitylist(tblCitylist);
            if (saveTblCitylist) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_CITY);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(CitylistServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void updateRequest(HttpServletRequest request, HttpServletResponse response) {

        try {
            TblCitylist tblCitylist = doMapping(request, response);
            boolean updateTblCitylist = CitylistService.updateTblCitylist(tblCitylist);
            if (updateTblCitylist) {
                response.sendRedirect(IServletConstant.PAGE_VIEW_CITY);
            } else {
                request.getSession().setAttribute(IServletConstant.MESSAGE, "Operation Fail !!!");
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
            }
        } catch (IOException ex) {
            Logger.getLogger(CitylistServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    private void deleteRequest(HttpServletRequest request, HttpServletResponse response) {
        
        try {
            Integer cityId = Integer.parseInt(request.getParameter("cityId"));
            CitylistService.deleteTblCitylist(CitylistService.getTblCitylistById(cityId));
            response.sendRedirect(IServletConstant.PAGE_VIEW_CITY);
        } catch (IOException | NumberFormatException e) {
            try {
                response.sendRedirect(IServletConstant.PAGE_FAILUER);
                Logger.getLogger(CitylistServlet.class.getName()).log(Level.SEVERE, null, e);
            } catch (IOException ex) {
                Logger.getLogger(CitylistServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
    }

    private void viewRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private void autoCompletRequest(HttpServletRequest request, HttpServletResponse response) {
    }

    private TblCitylist doMapping(HttpServletRequest request, HttpServletResponse response) {
        TblCitylist tblCitylist = new TblCitylist();

        tblCitylist.setCityName(request.getParameter("city_name"));
        tblCitylist.setLatitude(request.getParameter("latitude"));
        tblCitylist.setLongitude(request.getParameter("longitude"));
        tblCitylist.setStateId(request.getParameter("state_id"));
        tblCitylist.setIsActive('Y');

        Object updateId = request.getParameter("updateId");
        if (updateId != null) {
            if (updateId.toString().trim().length() != 0) {
                tblCitylist.setCityId(Integer.parseInt(request.getParameter("updateId")));
            }
        }
        return tblCitylist;
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        try {
            //// get all search parameter 
            String city_name = request.getParameter("city_name"); 
            
            /// create mapper pojo fields
            HashMap<String, String> hashMap = new HashMap<>();
            
            /// set multiple search critera
            hashMap.put("cityName", city_name);
            
            List<TblCitylist> searchCity = CitylistService.searchCity(hashMap);
            
            request.getSession().setAttribute("listscity", searchCity);
            
            response.sendRedirect(IServletConstant.PAGE_VIEW_CITY);
        } catch (IOException ex) {
            Logger.getLogger(CitylistServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
