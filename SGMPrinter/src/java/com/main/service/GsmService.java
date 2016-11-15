/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblGsm;
import com.main.util.SuperConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GsmService {

    public static void main(String[] args) {
        
//         HashMap<String, String> hashMap = new HashMap<String, String>();
//        hashMap.put("gsmName", "10 gsm");
//        List<TblGsm> searchGsm = searchGsm(hashMap);
//        System.out.println("searchGsm = " + searchGsm.size());
//        
        TblGsm tblGsm = new TblGsm();
        tblGsm.setGsmName("Rohan");
      
        saveGsmsize(tblGsm);

        List<TblGsm> gsmsizeList = getGsmsizeList();
        for (TblGsm gsmsizeList1 : gsmsizeList) {
            System.out.println("gsmsizeList1 = " + gsmsizeList1.getGsmName());
        }
        
        
//         TblGsm gsmById = getTblGsmlistById(2);
//        System.out.println("Gsm= "+ gsmById.getGsmName());
        
        
    }
    
    public static boolean saveGsmsize(TblGsm tblGsmsize) {
        try {
            SuperConnection.saveEntity(tblGsmsize);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(GsmService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateGsmsize(TblGsm tblGsmsize) {
        try {
            SuperConnection.updateEntity(tblGsmsize);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(GsmService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteGsmsize(TblGsm tblGsmsize) {
        try {
            SuperConnection.deleteEntity(tblGsmsize);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(GsmService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblGsm> getGsmsizeList() {
        try {
            return SuperConnection.listEntity(new TblGsm());
        } catch (Exception ex) {
            Logger.getLogger(GsmService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

        public static TblGsm getTblGsmlistById(Integer id){
     try {
            Object object = SuperConnection.getEntityById(new TblGsm(), id);
            return (TblGsm) object;
        } catch (Exception ex) {
            Logger.getLogger(GsmService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
        
         public static List<TblGsm> searchGsm(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblGsm(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(GsmService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
