/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblOrder;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderService {

    public static void main(String[] args) {
        try {
            List<TblOrder> tblOrderList = getTblOrderList();
            for (TblOrder tblOrder : tblOrderList) {
            }
        } catch (Exception e) {
        }
    }

    public static boolean saveTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.saveEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.updateEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            System.out.println("===============>" + ex.getMessage());
            ex.printStackTrace();
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.deleteEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblOrder> getTblOrderList() {
        try {
            return SuperConnection.listEntity(new TblOrder());
        } catch (Exception ex) {
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblOrder getTblOrderlistById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblOrder(), id);
            return (TblOrder) object;
        } catch (Exception ex) {
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblOrder> searchOrder(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblOrder(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblOrder> getTblOrderByLimit(TblOrder tblOrder, Integer limit) {
        try {
            return SuperConnection.listEntityByLimiy(tblOrder, limit);
        } catch (Exception ex) {
            Logger.getLogger(OrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
