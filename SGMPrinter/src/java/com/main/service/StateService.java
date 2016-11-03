/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblState;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class StateService {

    public static boolean saveTblState(TblState tblTblState) {
        try {
            SuperConnection.saveEntity(tblTblState);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(StateService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblState(TblState tblTblState) {
        try {
            SuperConnection.updateEntity(tblTblState);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(StateService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblState(TblState tblTblState) {
        try {
            SuperConnection.deleteEntity(tblTblState);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(StateService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblState> getTblStateList() {
        try {
            return SuperConnection.listEntity(new TblState());
        } catch (Exception ex) {
            Logger.getLogger(StateService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
