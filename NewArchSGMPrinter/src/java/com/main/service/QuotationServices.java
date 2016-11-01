package com.main.service;

import com.main.dto.QuotationDTO;
import com.main.pojo.TblQuotation;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class QuotationServices {

    public static boolean saveQuotation(TblQuotation qdto) {
       
        try {
                SuperConnection.saveEntity(qdto);
                return true;
            } catch (Exception e) {
                 Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
                 return false;
            }
    }

    public static boolean updateQuotation(TblQuotation qdto) {
        try {
            SuperConnection.updateEntity(qdto);
            return true; 
        } catch (Exception e) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
                 return false;
        }
    }
    
     public static boolean deleteQuotation(TblQuotation tblQuotation) {
        try {
            SuperConnection.deleteEntity(tblQuotation);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static ArrayList<QuotationDTO> getQuotationList() {
        ArrayList<QuotationDTO> arrayList = new ArrayList<QuotationDTO>();
        
        try {
            List<TblQuotation> list = SuperConnection.listEntity(new TblQuotation());
            for (TblQuotation tblQuotation : list) {
                QuotationDTO quotationDTO = new QuotationDTO();
                quotationDTO.getDtoFromPojo(tblQuotation);
                arrayList.add(quotationDTO);
            }
            
        } catch (Exception e) {
              Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
        }
        
        return arrayList;
    }

}
