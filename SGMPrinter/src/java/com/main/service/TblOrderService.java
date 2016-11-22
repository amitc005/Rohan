/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.main.service;

import com.main.pojo.TblCard;
import com.main.pojo.TblOrder;
import com.main.util.SuperConnection;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TblOrderService {

    public static void main(String[] args) {
        
        TblOrder tblOrder = new TblOrder();
        
        List<TblOrder> orders = getTblOrderByLimit(tblOrder, 2);
            for (TblOrder order : orders) {
                System.out.println("records="+order.getComment());
        }
        
        // get card type from card type service and set to order
        TblCard tblCardById = CardTypeService.getTblCardById(2);
        tblOrder.setTblCard(tblCardById);

        // like this call all services 
        tblOrder.setTblClient(null);
        //ClientService.
        
        tblOrder.setTblGsm(null);  // null will be replaced by your actual data
        
        tblOrder.setTblLamination(null);
        
        tblOrder.setTblPaper(null);
        
        tblOrder.setTblPostpress(null);
        
        tblOrder.setTblPrinting(null);
        
        tblOrder.setTblQty(null);
        
        tblOrder.setTblQuotation(null);
        
        tblOrder.setTblSides(null);
        
        
        saveTblOrder(tblOrder);
        
        
      TblOrder tblOrderById = getTblOrderlistById(2);
        System.out.println("tblOrderById =" +tblOrderById.getOrderstatus());
    
        
    }
    
    public static boolean saveTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.saveEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean updateTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.updateEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static boolean deleteTblOrder(TblOrder tblTblOrder) {
        try {
            SuperConnection.deleteEntity(tblTblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static List<TblOrder> getTblOrderList() {
        try {
            return SuperConnection.listEntity(new TblOrder());
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

     public static TblOrder getTblOrderlistById(Integer id){
     try {
            Object object = SuperConnection.getEntityById(new TblOrder(), id);
            return (TblOrder) object;
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
      public static List<TblOrder> searchOrder(HashMap<String, String> searchMap) {
        try {
            return SuperConnection.searchEntity(new TblOrder(), searchMap);
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
       public static List<TblOrder> getTblOrderByLimit(TblOrder tblOrder, Integer limit) {
        try {
            return SuperConnection.listEntityByLimiy(tblOrder, limit);
        } catch (Exception ex) {
            Logger.getLogger(TblOrderService.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
      
}
