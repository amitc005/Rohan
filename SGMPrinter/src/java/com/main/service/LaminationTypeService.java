/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblLaminationType;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LaminationTypeService {

    public static boolean saveTblLaminationType(TblLaminationType tblTblLaminationType) {
        try {
            SuperConnection.saveEntity(tblTblLaminationType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(LaminationTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblLaminationType(TblLaminationType tblTblLaminationType) {
        try {
            SuperConnection.updateEntity(tblTblLaminationType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(LaminationTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblLaminationType(TblLaminationType tblTblLaminationType) {
        try {
            SuperConnection.deleteEntity(tblTblLaminationType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(LaminationTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblLaminationType> getTblLaminationTypeList() {
        try {
            return SuperConnection.listEntity(new TblLaminationType());
        } catch (Exception ex) {
            Logger.getLogger(LaminationTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
