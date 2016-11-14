/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblSides;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SidesService {

     public static void main(String[] args) {
      TblSides tblSlidesById = getTblSlidesById(2);
        System.out.println("tblSlidesById =" +tblSlidesById.getSideName());
    }
    
    public static boolean saveTblSides(TblSides tblTblSides) {
        try {
            SuperConnection.saveEntity(tblTblSides);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(SidesService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblSides(TblSides tblTblSides) {
        try {
            SuperConnection.updateEntity(tblTblSides);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(SidesService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblSides(TblSides tblTblSides) {
        try {
            SuperConnection.deleteEntity(tblTblSides);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(SidesService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblSides> getTblSidesList() {
        try {
            return SuperConnection.listEntity(new TblSides());
        } catch (Exception ex) {
            Logger.getLogger(SidesService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static TblSides getTblSlidesById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblSides(), id);
            return (TblSides) object;
        } catch (Exception ex) {
            Logger.getLogger(SidesService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
