/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblUsertype;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsertypeService {

    public static boolean saveTblUsertype(TblUsertype tblTblUsertype) {
        try {
            SuperConnection.saveEntity(tblTblUsertype);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(UsertypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblUsertype(TblUsertype tblTblUsertype) {
        try {
            SuperConnection.updateEntity(tblTblUsertype);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(UsertypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblUsertype(TblUsertype tblTblUsertype) {
        try {
            SuperConnection.deleteEntity(tblTblUsertype);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(UsertypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblUsertype> getTblUsertypeList() {
        try {
            return SuperConnection.listEntity(new TblUsertype());
        } catch (Exception ex) {
            Logger.getLogger(UsertypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
