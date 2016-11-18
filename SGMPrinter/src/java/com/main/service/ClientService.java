/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblCitylist;
import com.main.pojo.TblClient;
import com.main.pojo.TblDistrict;
import com.main.pojo.TblQuotation;
import com.main.pojo.TblState;
import com.main.util.SuperConnection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ClientService {

    public static void main(String[] args) {
        
        TblCitylist cs= CitylistService.getTblCitylistById(1);
        TblDistrict district= DistrictService.getTblDistrictById(1);
        TblState ts = StateService.getTblStateById(1);
        
        
        TblClient tblClient = new TblClient();
        
       
        tblClient.setTblCitylist(cs);
        tblClient.setTblDistrict(district);
        tblClient.setTblState(ts);
        tblClient.setClientName("Rohan");
        tblClient.setClientAddress("anand nagar");
        tblClient.setPropriterName("Raj");
        tblClient.setPropriterImage("airuaise");
        tblClient.setFirmName("rag");
        tblClient.setMobileNo("1212121212");
        tblClient.setPhoneNo1("12123123");
        tblClient.setPostalAddress("riruash");
        tblClient.setPhoneNo2("2121323");
        
        tblClient.setTblQuotations(null);
       
        
        tblClient.setClientAddedDate(new Date());
        tblClient.setClientUpdateDate(new Date());
        tblClient.setIsActive(new Character('Y'));
        
        saveClient(tblClient);
//       List<TblClient> clients = getClientList();
//        for (TblClient client : clients) {
//            System.out.println("Client="+client.getClientName());
//        }
// 
//       
//        TblClient tblClientById = getTblClientById(2);
//        System.out.println("tblClientById =" +tblClientById.getClientName());
    }
    
    
    public static boolean saveClient(TblClient tblClient) {
        try {
            SuperConnection.saveEntity(tblClient);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateClient(TblClient tblClient) {
        try {
            SuperConnection.updateEntity(tblClient);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteClient(TblClient tblClient) {
        try {
            SuperConnection.deleteEntity(tblClient);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblClient> getClientList() {
        try {
            return SuperConnection.listEntity(new TblClient());
        } catch (Exception ex) {
            Logger.getLogger(ClientService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static TblClient getTblClientById(Integer id) {
        try {
            Object object = SuperConnection.getEntityById(new TblClient(), id);
            return (TblClient) object;
        } catch (Exception ex) {
            Logger.getLogger(ClientService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static List<TblClient> searchClient(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblClient(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(ClientService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
