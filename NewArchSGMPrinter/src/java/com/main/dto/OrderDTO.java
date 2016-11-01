package com.main.dto;

import com.main.pojo.TblOrder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public final class OrderDTO {

    private int c_id;
    private int q_id;
    private String payment;
    private String order_payment;

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

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }

    public String getOrder_payment() {
        return order_payment;
    }

    public void setOrder_payment(String order_payment) {
        this.order_payment = order_payment;
    }

    @Override
    public String toString() {
        return "OrderDTO{" + "c_id=" + c_id + ", q_id=" + q_id + ", payment=" + payment + ", order_payment=" + order_payment + '}';
    }

    public OrderDTO() {

    }

    public OrderDTO(HttpServletRequest request, HttpServletResponse response) {
        setC_id(Integer.parseInt(request.getParameter("c_id")));
        setQ_id(Integer.parseInt(request.getParameter("q_id")));

        setPayment(request.getParameter("payment"));
        setOrder_payment(request.getParameter("order_payment"));

    }

    public TblOrder getPojoFromDTO() {
        TblOrder tblOrder = new TblOrder();
        tblOrder.setPayment(payment);
        tblOrder.setOrderPayment(order_payment);

        return tblOrder;

    }

    public OrderDTO getDTOFromPojo(TblOrder tblOrder) {

       
        // orderDTO.setC_id(tblOrder.get);
//        orderDTO.setQ_id(tblOrder.);
        this.setPayment(tblOrder.getPayment());
        this.setOrder_payment(tblOrder.getOrderPayment());
        return this;

    }

}
