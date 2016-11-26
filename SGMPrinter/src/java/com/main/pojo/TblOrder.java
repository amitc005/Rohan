package com.main.pojo;
// Generated Nov 24, 2016 11:14:27 PM by Hibernate Tools 3.6.0

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "tbl_order", catalog = "offsetmanager"
)
public class TblOrder implements java.io.Serializable {

    private Integer orderId;
    private TblClient tblClient;
    private TblCard tblCard;
    private TblPrinting tblPrinting;
    private TblPostpress tblPostpress;
    private TblPaper tblPaper;
    private TblQty tblQty;
    private TblGsm tblGsm;
    private TblSides tblSides;
    private TblQuotation tblQuotation;
    private TblLamination tblLamination;
    private String comment;
    private Date requestdate;
    private String orderstatus;
    private Character isactive;
    private Set<TblOrderStatusHistory> tblOrderStatusHistories = new HashSet<TblOrderStatusHistory>(0);
    private Set<TblAccount> tblAccounts = new HashSet<TblAccount>(0);

    public TblOrder() {
    }

    public TblOrder(Date requestdate) {
        this.requestdate = requestdate;
    }

    public TblOrder(TblClient tblClient, TblCard tblCard, TblPrinting tblPrinting, TblPostpress tblPostpress, TblPaper tblPaper, TblQty tblQty, TblGsm tblGsm, TblSides tblSides, TblQuotation tblQuotation, TblLamination tblLamination, String comment, Date requestdate, String orderstatus, Character isactive, Set<TblOrderStatusHistory> tblOrderStatusHistories, Set<TblAccount> tblAccounts) {
        this.tblClient = tblClient;
        this.tblCard = tblCard;
        this.tblPrinting = tblPrinting;
        this.tblPostpress = tblPostpress;
        this.tblPaper = tblPaper;
        this.tblQty = tblQty;
        this.tblGsm = tblGsm;
        this.tblSides = tblSides;
        this.tblQuotation = tblQuotation;
        this.tblLamination = tblLamination;
        this.comment = comment;
        this.requestdate = requestdate;
        this.orderstatus = orderstatus;
        this.isactive = isactive;
        this.tblOrderStatusHistories = tblOrderStatusHistories;
        this.tblAccounts = tblAccounts;
    }

    @Id
    @GeneratedValue(strategy = IDENTITY)

    @Column(name = "order_id", unique = true, nullable = false)
    public Integer getOrderId() {
        return this.orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "client_id")
    public TblClient getTblClient() {
        return this.tblClient;
    }

    public void setTblClient(TblClient tblClient) {
        this.tblClient = tblClient;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "card_id")
    public TblCard getTblCard() {
        return this.tblCard;
    }

    public void setTblCard(TblCard tblCard) {
        this.tblCard = tblCard;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "printing_id")
    public TblPrinting getTblPrinting() {
        return this.tblPrinting;
    }

    public void setTblPrinting(TblPrinting tblPrinting) {
        this.tblPrinting = tblPrinting;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "postpress_id")
    public TblPostpress getTblPostpress() {
        return this.tblPostpress;
    }

    public void setTblPostpress(TblPostpress tblPostpress) {
        this.tblPostpress = tblPostpress;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "paper_id")
    public TblPaper getTblPaper() {
        return this.tblPaper;
    }

    public void setTblPaper(TblPaper tblPaper) {
        this.tblPaper = tblPaper;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "qty_id")
    public TblQty getTblQty() {
        return this.tblQty;
    }

    public void setTblQty(TblQty tblQty) {
        this.tblQty = tblQty;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "gsm_id")
    public TblGsm getTblGsm() {
        return this.tblGsm;
    }

    public void setTblGsm(TblGsm tblGsm) {
        this.tblGsm = tblGsm;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "side_id")
    public TblSides getTblSides() {
        return this.tblSides;
    }

    public void setTblSides(TblSides tblSides) {
        this.tblSides = tblSides;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "quotation_id")
    public TblQuotation getTblQuotation() {
        return this.tblQuotation;
    }

    public void setTblQuotation(TblQuotation tblQuotation) {
        this.tblQuotation = tblQuotation;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "lamination_id")
    public TblLamination getTblLamination() {
        return this.tblLamination;
    }

    public void setTblLamination(TblLamination tblLamination) {
        this.tblLamination = tblLamination;
    }

    @Column(name = "comment", length = 65535)
    public String getComment() {
        return this.comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    @Temporal(TemporalType.DATE)
    @Column(name = "requestdate", nullable = false, length = 10)
    public Date getRequestdate() {
        return this.requestdate;
    }

    public void setRequestdate(Date requestdate) {
        this.requestdate = requestdate;
    }

    @Column(name = "orderstatus", length = 10)
    public String getOrderstatus() {
        return this.orderstatus;
    }

    public void setOrderstatus(String orderstatus) {
        this.orderstatus = orderstatus;
    }

    @Column(name = "isactive", length = 1)
    public Character getIsactive() {
        return this.isactive;
    }

    public void setIsactive(Character isactive) {
        this.isactive = isactive;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblOrder")
    public Set<TblOrderStatusHistory> getTblOrderStatusHistories() {
        return this.tblOrderStatusHistories;
    }

    public void setTblOrderStatusHistories(Set<TblOrderStatusHistory> tblOrderStatusHistories) {
        this.tblOrderStatusHistories = tblOrderStatusHistories;
    }

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "tblOrder")
    public Set<TblAccount> getTblAccounts() {
        return this.tblAccounts;
    }

    public void setTblAccounts(Set<TblAccount> tblAccounts) {
        this.tblAccounts = tblAccounts;
    }

}
