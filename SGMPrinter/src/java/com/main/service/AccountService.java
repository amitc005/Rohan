/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblAccount;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AccountService {

    public static void main(String[] args) {
        
    }

    public static boolean saveTblAccount(TblAccount tblAccount) {
        try {
            SuperConnection.saveEntity(tblAccount);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(AccountService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblAccount(TblAccount tblAccount) {
        try {
            SuperConnection.updateEntity(tblAccount);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(AccountService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblAccount(TblAccount tblAccount) {
        try {
            SuperConnection.deleteEntity(tblAccount);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(AccountService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblAccount> getTblAccountList() {
        try {
            return SuperConnection.listEntity(new TblAccount());
        } catch (Exception ex) {
            Logger.getLogger(AccountService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblAccount getTblAccountById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblAccount(), id);
            return (TblAccount) object;
        } catch (Exception ex) {
            Logger.getLogger(AccountService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblAccount> searchAccount(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblAccount(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(AccountService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
