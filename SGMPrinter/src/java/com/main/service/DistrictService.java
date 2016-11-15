/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblDistrict;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DistrictService {

    
     
    public static void main(String[] args) {
        try{
      TblDistrict district = new TblDistrict();
      district.setDistrictId(1);
      district.setDistrictName("roajannas");
      district.setLatitude("asdas");
      district.setLongitude("qweqw");
      district.setStateId("12");
      district.setIsActive('Y');
      saveTblDistrict(district);
        }
        catch(Exception e){
            System.out.println(""+e.getMessage());
        }
      
        try{
      TblDistrict district = new TblDistrict();
      district.setDistrictId(95);
      district.setDistrictName("Nagpur");
      district.setLatitude("44");
      district.setLongitude("55");
      district.setStateId("34");
      district.setIsActive('Y');
      updateTblDistrict(district);
        }
        catch(Exception e){
            System.out.println(""+e.getMessage());
        }
        
       List<TblDistrict> districts = getTblDistrictList();
        for (TblDistrict district : districts) {
             System.out.println("District=" + district.getDistrictName());
        }
        
       TblDistrict districtById = getTblDistrictById(3);
        System.out.println("DistrictByID= "+ districtById.getDistrictName());
    }
    
    
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
    
    public static TblDistrict getTblDistrictById(Integer id){
     try {
            Object object = SuperConnection.getEntityById(new TblDistrict(), id);
            return (TblDistrict) object;
        } catch (Exception ex) {
            Logger.getLogger(DistrictService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static List<TblDistrict> searchDistrict(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblDistrict(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(DistrictService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
