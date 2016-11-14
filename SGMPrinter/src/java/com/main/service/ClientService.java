/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblClient;
import com.main.util.SuperConnection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ClientService {

    public static void main(String[] args) {
        
        
        
       List<TblClient> clients = getClientList();
        for (TblClient client : clients) {
            System.out.println("Client="+client.getClientName());
        }
 
       
        TblClient tblClientById = getTblClientById(2);
        System.out.println("tblClientById =" +tblClientById.getClientName());
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

}
