/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblOrderStatusHistory;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderStatusHistoryService {

    public static boolean saveTblOrderStatusHistory(TblOrderStatusHistory tblTblOrderStatusHistory) {
        try {
            SuperConnection.saveEntity(tblTblOrderStatusHistory);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderStatusHistoryService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblOrderStatusHistory(TblOrderStatusHistory tblTblOrderStatusHistory) {
        try {
            SuperConnection.updateEntity(tblTblOrderStatusHistory);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderStatusHistoryService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblOrderStatusHistory(TblOrderStatusHistory tblTblOrderStatusHistory) {
        try {
            SuperConnection.deleteEntity(tblTblOrderStatusHistory);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderStatusHistoryService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblOrderStatusHistory> getTblOrderStatusHistoryList() {
        try {
            return SuperConnection.listEntity(new TblOrderStatusHistory());
        } catch (Exception ex) {
            Logger.getLogger(OrderStatusHistoryService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
