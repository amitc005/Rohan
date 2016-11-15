/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblQuotationhistory;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QuotationhistoryService {

     public static void main(String[] args) {
         TblQuotationhistory tblQuotationhistoryById = getTblQuotationHistoryById(2);
        System.out.println("tblQuotationhistoryById =" +tblQuotationhistoryById.getHisstatus());
    }
    
    public static boolean saveTblQuotationhistory(TblQuotationhistory tblTblQuotationhistory) {
        try {
            SuperConnection.saveEntity(tblTblQuotationhistory);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QuotationhistoryService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblQuotationhistory(TblQuotationhistory tblTblQuotationhistory) {
        try {
            SuperConnection.updateEntity(tblTblQuotationhistory);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QuotationhistoryService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblQuotationhistory(TblQuotationhistory tblTblQuotationhistory) {
        try {
            SuperConnection.deleteEntity(tblTblQuotationhistory);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QuotationhistoryService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblQuotationhistory> getTblQuotationhistoryList() {
        try {
            return SuperConnection.listEntity(new TblQuotationhistory());
        } catch (Exception ex) {
            Logger.getLogger(QuotationhistoryService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static TblQuotationhistory getTblQuotationHistoryById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblQuotationhistory(), id);
            return (TblQuotationhistory) object;
        } catch (Exception ex) {
            Logger.getLogger(QuotationhistoryService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     public static List<TblQuotationhistory> searchQuotationhistory(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblQuotationhistory(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(QuotationhistoryService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
