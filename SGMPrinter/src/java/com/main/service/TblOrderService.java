/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblOrder;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TblOrderService {

    public static boolean saveTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.saveEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.updateEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.deleteEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblOrder> getTblOrderList() {
        try {
            return SuperConnection.listEntity(new TblOrder());
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
