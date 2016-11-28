/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblOrdertype;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderTypeService {

    public static void main(String[] args) {
    }

    public static boolean saveTblOrdertype(TblOrdertype tblTblOrdertype) {
        try {
            SuperConnection.saveEntity(tblTblOrdertype);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblOrdertype(TblOrdertype tblTblOrdertype) {
        try {
            SuperConnection.updateEntity(tblTblOrdertype);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblOrdertype(TblOrdertype tblTblOrdertype) {
        try {
            SuperConnection.deleteEntity(tblTblOrdertype);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OrderTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblOrdertype> getTblOrdertypeList() {
        try {
            return SuperConnection.listEntity(new TblOrdertype());
        } catch (Exception ex) {
            Logger.getLogger(OrderTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblOrdertype getTblOrdertypeById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblOrdertype(), id);
            return (TblOrdertype) object;
        } catch (Exception ex) {
            Logger.getLogger(OrderTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static List<TblOrdertype> searchCard(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblOrdertype(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(OrderTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
