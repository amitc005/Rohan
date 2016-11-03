/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblDistrict;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DistrictService {

    public static boolean saveTblDistrict(TblDistrict tblTblDistrict) {
        try {
            SuperConnection.saveEntity(tblTblDistrict);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(DistrictService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblDistrict(TblDistrict tblTblDistrict) {
        try {
            SuperConnection.updateEntity(tblTblDistrict);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(DistrictService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblDistrict(TblDistrict tblTblDistrict) {
        try {
            SuperConnection.deleteEntity(tblTblDistrict);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(DistrictService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblDistrict> getTblDistrictList() {
        try {
            return SuperConnection.listEntity(new TblDistrict());
        } catch (Exception ex) {
            Logger.getLogger(DistrictService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
