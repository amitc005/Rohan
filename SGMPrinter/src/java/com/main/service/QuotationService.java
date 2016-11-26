/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblQuotation;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QuotationService {

    public static void main(String[] args) {
        TblQuotation tblQuotation = new TblQuotation();
        tblQuotation.setTblClient(ClientService.getTblClientById(1));
        saveTblQuotation(tblQuotation);
        
    }
    
    public static boolean saveTblQuotation(TblQuotation tblTblQuotation) {
        try {
            SuperConnection.saveEntity(tblTblQuotation);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QuotationService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblQuotation(TblQuotation tblTblQuotation) {
        try {
            SuperConnection.updateEntity(tblTblQuotation);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QuotationService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblQuotation(TblQuotation tblTblQuotation) {
        try {
            SuperConnection.deleteEntity(tblTblQuotation);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QuotationService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblQuotation> getTblQuotationList() {
        try {
            return SuperConnection.listEntity(new TblQuotation());
        } catch (Exception ex) {
            Logger.getLogger(QuotationService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static TblQuotation getTblQuotationById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblQuotation(), id);
            return (TblQuotation) object;
        } catch (Exception ex) {
            Logger.getLogger(QuotationService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     public static List<TblQuotation> searchQuotation(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblQuotation(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(QuotationService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
      public static List<TblQuotation> getTblQuotationByLimit(TblQuotation tblQuotation, Integer limit) {
        try {
            return SuperConnection.listEntityByLimiy(tblQuotation, limit);
        } catch (Exception ex) {
            Logger.getLogger(QuotationService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
}
