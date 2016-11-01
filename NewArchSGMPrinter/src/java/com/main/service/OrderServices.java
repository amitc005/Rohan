package com.main.service;

import com.main.dto.OrderDTO;
import com.main.pojo.TblOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class OrderServices {

    public static void main(String[] args) {
        ArrayList<OrderDTO> odtos = getOrderList();
        System.out.println(odtos);
        for (OrderDTO odto : odtos) {
            System.out.println("order=" + odto.getPayment());
        }
    }

    public static boolean saveOrder(TblOrder order) {
        try {
            SuperConnection.saveEntity(order);
            return true;
        } catch (Exception e) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }

    }

    public static boolean updateOrder(TblOrder order) {
        try {
            SuperConnection.updateEntity(order);
            return true;
        } catch (Exception e) {

            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
            return false;
        }
    }

    public static boolean deleteOrder(TblOrder tblOrder) {
        try {
            SuperConnection.deleteEntity(tblOrder);
            return true;
        } catch (Exception ex) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static ArrayList<OrderDTO> getOrderList() {

        ArrayList<OrderDTO> arrayList = new ArrayList<OrderDTO>();
        try {
            List<TblOrder> listEntity = SuperConnection.listEntity(new TblOrder());
            for (TblOrder tblOrder : listEntity) {
                OrderDTO odto = new OrderDTO();
                odto.getDTOFromPojo(tblOrder);
                arrayList.add(odto);
            }
        } catch (Exception e) {
            Logger.getLogger(ClientServices.class.getName()).log(Level.SEVERE, null, e);
        }

        return arrayList;
    }

}
