/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblPaper;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PaperService {

    public static void main(String[] args) {
      TblPaper tblPaperById = getTblPaperById(2);
        System.out.println("tblPaperById =" +tblPaperById.getPaperName());
    }
    
    public static boolean saveTblPaper(TblPaper tblTblPaper) {
        try {
            SuperConnection.saveEntity(tblTblPaper);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PaperService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblPaper(TblPaper tblTblPaper) {
        try {
            SuperConnection.updateEntity(tblTblPaper);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PaperService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblPaper(TblPaper tblTblPaper) {
        try {
            SuperConnection.deleteEntity(tblTblPaper);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PaperService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblPaper> getTblPaperList() {
        try {
            return SuperConnection.listEntity(new TblPaper());
        } catch (Exception ex) {
            Logger.getLogger(PaperService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static TblPaper getTblPaperById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblPaper(), id);
            return (TblPaper) object;
        } catch (Exception ex) {
            Logger.getLogger(PaperService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     public static List<TblPaper> searchPaper(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblPaper(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(PaperService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
