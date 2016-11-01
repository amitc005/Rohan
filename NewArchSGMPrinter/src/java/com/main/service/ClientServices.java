package com.main.service;

import com.main.dto.ClientDTO;
import com.main.pojo.TblClient;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ClientServices {

    public static void main(String[] args) {
        ArrayList<ClientDTO> clientList = getClientList();
        for (ClientDTO clientList1 : clientList) {
            System.out.println("clientList1 = " + clientList1.getName());
        }
    }
    
    public static boolean saveClient(TblClient tblClient) {
        try {
            SuperConnection.saveEntity(tblClient);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateClient(TblClient tblClient) {
        try {
            SuperConnection.updateEntity(tblClient);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteClient(TblClient tblClient) {
        try {
            SuperConnection.deleteEntity(tblClient);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static ArrayList<ClientDTO> getClientList() {
        ArrayList<ClientDTO> arrayList = new ArrayList<ClientDTO>();
        try {
            List<TblClient> listEntity = SuperConnection.listEntity(new TblClient());
            for (TblClient tblClient : listEntity) {
                ClientDTO clientDTO = new ClientDTO();
                clientDTO.getDTOFromPojo(tblClient);
                arrayList.add(clientDTO);
            }
        } catch (Exception ex) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, ex);
        }
        return arrayList;
    }
    
    
}
