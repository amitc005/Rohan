/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblPrinting;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PrintingService {

    public static boolean saveTblPrinting(TblPrinting tblTblPrinting) {
        try {
            SuperConnection.saveEntity(tblTblPrinting);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PrintingService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblPrinting(TblPrinting tblTblPrinting) {
        try {
            SuperConnection.updateEntity(tblTblPrinting);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PrintingService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblPrinting(TblPrinting tblTblPrinting) {
        try {
            SuperConnection.deleteEntity(tblTblPrinting);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PrintingService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblPrinting> getTblPrintingList() {
        try {
            return SuperConnection.listEntity(new TblPrinting());
        } catch (Exception ex) {
            Logger.getLogger(PrintingService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
