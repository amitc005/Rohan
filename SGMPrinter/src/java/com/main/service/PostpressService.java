/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblPostpress;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class PostpressService {

    public static void main(String[] args) {
      TblPostpress tblPostpressById = getTblPostpressById(2);
        System.out.println("tblPostpressById =" +tblPostpressById.getPostpressName());
    }
    
    public static boolean saveTblPostpress(TblPostpress tblTblPostpress) {
        try {
            SuperConnection.saveEntity(tblTblPostpress);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PostpressService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblPostpress(TblPostpress tblTblPostpress) {
        try {
            SuperConnection.updateEntity(tblTblPostpress);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PostpressService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblPostpress(TblPostpress tblTblPostpress) {
        try {
            SuperConnection.deleteEntity(tblTblPostpress);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(PostpressService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblPostpress> getTblPostpressList() {
        try {
            return SuperConnection.listEntity(new TblPostpress());
        } catch (Exception ex) {
            Logger.getLogger(PostpressService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     public static TblPostpress getTblPostpressById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblPostpress(), 1);
            return (TblPostpress) object;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
