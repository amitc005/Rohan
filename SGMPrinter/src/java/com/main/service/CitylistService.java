/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblCitylist;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CitylistService {

      public static void main(String[] args) {
        
        List<TblCitylist> citylists = getTblCitylistList();
        for (TblCitylist citylist : citylists) {
            System.out.println("cityList="+citylist.getCityName() +citylist.getLatitude());
        }
          
          
        TblCitylist tblCardById = getTblCitylistById(2);
        System.out.println("tblCardById = " + tblCardById.getCityName());
    }
    
    public static boolean saveTblCitylist(TblCitylist tblTblCitylist) {
        try {
            SuperConnection.saveEntity(tblTblCitylist);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CitylistService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblCitylist(TblCitylist tblTblCitylist) {
        try {
            SuperConnection.updateEntity(tblTblCitylist);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CitylistService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblCitylist(TblCitylist tblTblCitylist) {
        try {
            SuperConnection.deleteEntity(tblTblCitylist);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(CitylistService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblCitylist> getTblCitylistList() {
        try {
            return SuperConnection.listEntity(new TblCitylist());
        } catch (Exception ex) {
            Logger.getLogger(CitylistService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static TblCitylist getTblCitylistById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblCitylist(), id);
            return (TblCitylist) object;
        } catch (Exception ex) {
            Logger.getLogger(CardTypeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
