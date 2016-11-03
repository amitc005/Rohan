/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblQuotationhistory;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QuotationhistoryService {

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

}
