/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblGsmsize;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GsmsizeService {

    public static void main(String[] args) {
        List<TblGsmsize> gsmsizeList = getGsmsizeList();
        for (TblGsmsize gsmsizeList1 : gsmsizeList) {
            System.out.println("gsmsizeList1 = " + gsmsizeList1.getGsmName());
        }
    }
    
    public static boolean saveGsmsize(TblGsmsize tblGsmsize) {
        try {
            SuperConnection.saveEntity(tblGsmsize);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(GsmsizeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateGsmsize(TblGsmsize tblGsmsize) {
        try {
            SuperConnection.updateEntity(tblGsmsize);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(GsmsizeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteGsmsize(TblGsmsize tblGsmsize) {
        try {
            SuperConnection.deleteEntity(tblGsmsize);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(GsmsizeService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblGsmsize> getGsmsizeList() {
        try {
            return SuperConnection.listEntity(new TblGsmsize());
        } catch (Exception ex) {
            Logger.getLogger(GsmsizeService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
