/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblCard;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CardTypeService {

    public static boolean saveTblCard(TblCard tblTblCard) {
        try {
            SuperConnection.saveEntity(tblTblCard);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblCard(TblCard tblTblCard) {
        try {
            SuperConnection.updateEntity(tblTblCard);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblCard(TblCard tblTblCard) {
        try {
            SuperConnection.deleteEntity(tblTblCard);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblCard> getTblCardList() {
        try {
            return SuperConnection.listEntity(new TblCard());
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
