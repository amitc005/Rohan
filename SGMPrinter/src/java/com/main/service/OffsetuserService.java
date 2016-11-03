/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.Offsetuser;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OffsetuserService {

    public static boolean saveOffsetuser(Offsetuser tblOffsetuser) {
        try {
            SuperConnection.saveEntity(tblOffsetuser);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateOffsetuser(Offsetuser tblOffsetuser) {
        try {
            SuperConnection.updateEntity(tblOffsetuser);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteOffsetuser(Offsetuser tblOffsetuser) {
        try {
            SuperConnection.deleteEntity(tblOffsetuser);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<Offsetuser> getOffsetuserList() {
        try {
            return SuperConnection.listEntity(new Offsetuser());
        } catch (Exception ex) {
            Logger.getLogger(OffsetuserService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
