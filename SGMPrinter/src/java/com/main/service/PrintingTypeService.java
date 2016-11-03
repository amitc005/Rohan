/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblPrintingType;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PrintingTypeService {

    public static boolean saveTblPrintingType(TblPrintingType tblTblPrintingType) {
        try {
            SuperConnection.saveEntity(tblTblPrintingType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PrintingTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblPrintingType(TblPrintingType tblTblPrintingType) {
        try {
            SuperConnection.updateEntity(tblTblPrintingType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PrintingTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblPrintingType(TblPrintingType tblTblPrintingType) {
        try {
            SuperConnection.deleteEntity(tblTblPrintingType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PrintingTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblPrintingType> getTblPrintingTypeList() {
        try {
            return SuperConnection.listEntity(new TblPrintingType());
        } catch (Exception ex) {
            Logger.getLogger(PrintingTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
