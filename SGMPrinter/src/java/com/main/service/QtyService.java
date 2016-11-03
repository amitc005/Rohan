/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblQty;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QtyService {

    public static boolean saveTblQty(TblQty tblTblQty) {
        try {
            SuperConnection.saveEntity(tblTblQty);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QtyService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblQty(TblQty tblTblQty) {
        try {
            SuperConnection.updateEntity(tblTblQty);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QtyService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblQty(TblQty tblTblQty) {
        try {
            SuperConnection.deleteEntity(tblTblQty);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(QtyService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblQty> getTblQtyList() {
        try {
            return SuperConnection.listEntity(new TblQty());
        } catch (Exception ex) {
            Logger.getLogger(QtyService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
