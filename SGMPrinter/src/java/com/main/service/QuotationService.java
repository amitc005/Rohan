/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblQuotation;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QuotationService {

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

}
