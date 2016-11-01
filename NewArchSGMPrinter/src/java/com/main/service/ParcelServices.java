package com.main.service;

import com.main.dto.ParcelDTO;
import com.main.pojo.TblParcel;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ParcelServices {
    
    public static void main(String[] args) {
        ArrayList<ParcelDTO> pdtos = getParcelList();
        for (ParcelDTO pdto : pdtos) {
             System.out.println("parcel = " + pdto.getBalance_amount());
        }
           
        
    }

    public static boolean saveParcel(TblParcel parcel) {
        try {
            SuperConnection.saveEntity(parcel);
            return true;
        } catch (Exception e) {
                Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
                 return false;
        }
    }

    public static boolean updateParcel(TblParcel parcel) {
        try {
            SuperConnection.updateEntity(parcel);
            return true;
            } catch (Exception e) {
                Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
                 return false;
            }
    }
    
    public static boolean deleteParcel(TblParcel tblParcel) {
        try {
            SuperConnection.deleteEntity(tblParcel);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static ArrayList<ParcelDTO> getParcelList() {
        ArrayList<ParcelDTO> arrayList = new ArrayList<ParcelDTO>();
        try {
            
             List<TblParcel> list = SuperConnection.listEntity(new TblParcel());
             for (TblParcel tblParcel : list) {
                ParcelDTO parcelDTO = new ParcelDTO();
                parcelDTO.getDTOFromPojo(tblParcel);
                arrayList.add(parcelDTO);
            }
        } catch (Exception e) {
             Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
        }
        
        
        return arrayList;
    }

}
