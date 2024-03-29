/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblLamination;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LaminationService {
    
    public static void main(String[] args) {
        
        List<TblLamination> list= getTblLaminationList();
        for (TblLamination tblLamination : list) {
            System.out.println("list=" + tblLamination.getLaminationName() );
        }
        
      TblLamination tblLaminationById = getTblLaminationlistById(2);
        System.out.println("tblLaminationById =" +tblLaminationById.getLaminationName());
    }

    public static boolean saveTblLamination(TblLamination tblTblLamination) {
        try {
            SuperConnection.saveEntity(tblTblLamination);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(LaminationService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblLamination(TblLamination tblTblLamination) {
        try {
            SuperConnection.updateEntity(tblTblLamination);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(LaminationService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblLamination(TblLamination tblTblLamination) {
        try {
            SuperConnection.deleteEntity(tblTblLamination);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(LaminationService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblLamination> getTblLaminationList() {
        try {
            return SuperConnection.listEntity(new TblLamination());
        } catch (Exception ex) {
            Logger.getLogger(LaminationService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     public static TblLamination getTblLaminationlistById(Integer id){
     try {
            Object object = SuperConnection.getEntityById(new TblLamination(), id);
            return (TblLamination) object;
        } catch (Exception ex) {
            Logger.getLogger(LaminationService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
      public static List<TblLamination> searchLamination(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblLamination(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(LaminationService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
