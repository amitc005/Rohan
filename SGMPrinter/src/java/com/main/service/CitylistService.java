package com.main.service;

import com.main.pojo.TblCitylist;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CitylistService {

    public static void main(String[] args) {
        HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("cityName", "nagp");
        List<TblCitylist> searchCity = searchCity(hashMap);
        System.out.println("searchCity = " + searchCity.size());
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
            Logger.getLogger(CitylistService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static List<TblCitylist> searchCity(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblCitylist(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(CitylistService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
