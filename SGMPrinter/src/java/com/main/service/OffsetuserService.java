/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblOffsetuser;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OffsetuserService {

    public static void main(String[] args) {

        TblOffsetuser offsetuser = new TblOffsetuser();
        offsetuser.setAdminId(1);
        offsetuser.setUserTypeId(12);
        offsetuser.setEmailId("rojan.gill");
        offsetuser.setLastName("sadasd");
        saveTblOffsetuser(offsetuser);

        TblOffsetuser OffsetUserById = getTblTblOffsetuserlistById(1);
        System.out.println("OffsetUserById =" + OffsetUserById.getFirstName());
    }

    public static boolean saveTblOffsetuser(TblOffsetuser tblTblOffsetuser) {
        try {
            SuperConnection.saveEntity(tblTblOffsetuser);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblOffsetuser(TblOffsetuser tblTblOffsetuser) {
        try {
            SuperConnection.updateEntity(tblTblOffsetuser);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblOffsetuser(TblOffsetuser tblTblOffsetuser) {
        try {
            SuperConnection.deleteEntity(tblTblOffsetuser);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblOffsetuser> getTblOffsetuserList() {
        try {
            return SuperConnection.listEntity(new TblOffsetuser());
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblOffsetuser getTblTblOffsetuserlistById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblOffsetuser(), id);
            return (TblOffsetuser) object;
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblOffsetuser> searchTblOffsetuser(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblOffsetuser(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
