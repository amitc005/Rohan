package com.main.dto;

import com.main.pojo.TblParcel;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public final class ParcelDTO {

    private int c_id;
    private int q_id;
    private int o_id;
    private String full_payment;
    private String balance_amount;
    private String delivery;
    private String left_stock;
    private String delivery_date;

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public int getQ_id() {
        return q_id;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    public int getO_id() {
        return o_id;
    }

    public void setO_id(int o_id) {
        this.o_id = o_id;
    }

    public String getFull_payment() {
        return full_payment;
    }

    public void setFull_payment(String full_payment) {
        this.full_payment = full_payment;
    }

    public String getBalance_amount() {
        return balance_amount;
    }

    public void setBalance_amount(String balance_amount) {
        this.balance_amount = balance_amount;
    }

    public String getDelivery() {
        return delivery;
    }

    public void setDelivery(String delivery) {
        this.delivery = delivery;
    }

    public String getLeft_stock() {
        return left_stock;
    }

    public void setLeft_stock(String left_stock) {
        this.left_stock = left_stock;
    }

    public String getDelivery_date() {
        return delivery_date;
    }

    public void setDelivery_date(String delivery_date) {
        this.delivery_date = delivery_date;
    }

    @Override
    public String toString() {
        return "ParcelDTO{" + "c_id=" + c_id + ", q_id=" + q_id + ", o_id=" + o_id + ", full_payment=" + full_payment + ", balance_amount=" + balance_amount + ", delivery=" + delivery + ", left_stock=" + left_stock + ", delivery_date=" + delivery_date + '}';
    }

    public ParcelDTO() {
    }

    public ParcelDTO(HttpServletRequest request, HttpServletResponse response) {

        setC_id(Integer.parseInt(request.getParameter("c_id")));
        setQ_id(Integer.parseInt(request.getParameter("q_id")));
        setO_id(Integer.parseInt(request.getParameter("o_id")));
        setFull_payment(request.getParameter("full_payment"));
        setBalance_amount(request.getParameter("balance_amount"));
        setDelivery(request.getParameter("delivery"));
        setLeft_stock(request.getParameter("left_stock"));
        setDelivery_date(request.getParameter("delivery_date"));
    }

    public TblParcel getPojoFromDTO() {
        TblParcel tblParcel = new TblParcel(null, null, null, full_payment, balance_amount, delivery, left_stock, delivery_date);
        return tblParcel;
    }

    public ParcelDTO getDTOFromPojo(TblParcel tblParcel) {
      
        //  parcelDTO.setC_id(tblParcel.get);
        this.setFull_payment(tblParcel.getFullPayment());
        this.setBalance_amount(tblParcel.getBalanceAmount());
        this.setDelivery(tblParcel.getDelivery());
        this.setLeft_stock(tblParcel.getLeftStock());
        this.setDelivery_date(tblParcel.getDeliveryDate());
        return this;
    }

}
