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

public final class QuotationDTO {

    private int c_id;
    private String quotation_for;
    private String paper;
    private String post_press;
    private String other_desc;
    private TblClient tblClient;
    private Set<TblParcel> tblParcels = new HashSet<TblParcel>(0);
    private Set<TblOrder> tblOrders = new HashSet<TblOrder>(0);
    private Set<TblAccount> tblAccounts = new HashSet<TblAccount>(0);

    public int getC_id() {
        return c_id;
    }

    public void setC_id(int c_id) {
        this.c_id = c_id;
    }

    public String getQuotation_for() {
        return quotation_for;
    }

    public void setQuotation_for(String quotation_for) {
        this.quotation_for = quotation_for;
    }

    public String getPaper() {
        return paper;
    }

    public void setPaper(String paper) {
        this.paper = paper;
    }

    public String getPost_press() {
        return post_press;
    }

    public void setPost_press(String post_press) {
        this.post_press = post_press;
    }

    public String getOther_desc() {
        return other_desc;
    }

    public void setOther_desc(String other_desc) {
        this.other_desc = other_desc;
    }

    @Override
    public String toString() {
        return "QuotationDTO{" + "c_id=" + c_id + ", quotation_for=" + quotation_for + ", paper=" + paper + ", post_press=" + post_press + ", other_desc=" + other_desc + '}';
    }

    public QuotationDTO() {

    }

    public QuotationDTO(HttpServletRequest request, HttpServletResponse response) {
        setC_id(Integer.parseInt(request.getParameter("c_id")));
        setQuotation_for(request.getParameter("quotation_for"));
        setPaper(request.getParameter("paper"));
        setPost_press(request.getParameter("post_press"));
        setOther_desc(request.getParameter("other_desc"));

    }

    public TblQuotation getPojoFromDTO() {
        TblQuotation tblQuotation = new TblQuotation(tblClient, quotation_for, paper, post_press, other_desc, tblParcels, tblOrders, tblAccounts);
        return tblQuotation;

    }

    public QuotationDTO getDtoFromPojo(TblQuotation quotation) {
//        QuotationDTO qdto = new QuotationDTO();
        this.setQuotation_for(quotation.getQuotationFor());
        this.setPaper(quotation.getPaper());
        this.setPost_press(quotation.getPostPress());
        this.setOther_desc(quotation.getOtherDesc());
        return this;
    }
}
