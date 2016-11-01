package com.main.dto;

import com.main.pojo.TblAccount;
import com.main.pojo.TblClient;
import com.main.pojo.TblOrder;
import com.main.pojo.TblParcel;
import com.main.pojo.TblQuotation;
import java.util.HashSet;
import java.util.Set;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public final class ClientDTO {

    private String name;
    private int contact;
    private String email_id;
    private String city;
    private String shop_name;
    private String office_address;
//    private Set<TblQuotation> tblQuotations = new HashSet<TblQuotation>(0);
//    private Set<TblAccount> tblAccounts = new HashSet<TblAccount>(0);
//    private Set<TblParcel> tblParcels = new HashSet<TblParcel>(0);
//    private Set<TblOrder> tblOrders = new HashSet<TblOrder>(0);

    public ClientDTO() {

    }

    public ClientDTO(HttpServletRequest request, HttpServletResponse response) {
        setName(request.getParameter("name"));
        setContact(Integer.parseInt(request.getParameter("contact")));
        setEmail_id(request.getParameter("email_id"));
        setCity(request.getParameter("city"));
        setShop_name(request.getParameter("shop_name"));
        setOffice_address(request.getParameter("office_address"));

    }

    public TblClient getPojoFromDTO() {
        TblClient tblClient = new TblClient(name, contact, email_id, city, shop_name, office_address, null, null, null, null);
        return tblClient;
    }

    public ClientDTO getDTOFromPojo(TblClient tblClient) {
        this.setName(tblClient.getName());
        this.setContact(tblClient.getContact());
        this.setEmail_id(tblClient.getCity());
        this.setShop_name(tblClient.getShopName());
        this.setOffice_address(tblClient.getOfficeAddress());
        return this;

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getContact() {
        return contact;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }

    public String getEmail_id() {
        return email_id;
    }

    public void setEmail_id(String email_id) {
        this.email_id = email_id;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getShop_name() {
        return shop_name;
    }

    public void setShop_name(String shop_name) {
        this.shop_name = shop_name;
    }

    public String getOffice_address() {
        return office_address;
    }

    public void setOffice_address(String office_address) {
        this.office_address = office_address;
    }

    @Override
    public String toString() {
        return "ClientDTO{" + "name=" + name + ", contact=" + contact + ", email_id=" + email_id + ", city=" + city + ", shop_name=" + shop_name + ", office_address=" + office_address + '}';
    }

}
