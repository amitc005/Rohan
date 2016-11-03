/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblCardType;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CardTypeService {

    public static boolean saveTblCardType(TblCardType tblTblCardType) {
        try {
            SuperConnection.saveEntity(tblTblCardType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblCardType(TblCardType tblTblCardType) {
        try {
            SuperConnection.updateEntity(tblTblCardType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblCardType(TblCardType tblTblCardType) {
        try {
            SuperConnection.deleteEntity(tblTblCardType);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblCardType> getTblCardTypeList() {
        try {
            return SuperConnection.listEntity(new TblCardType());
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
