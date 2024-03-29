package com.main.pojo;
// Generated Nov 26, 2016 10:29:34 PM by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TblQty generated by hbm2java
 */
@Entity
@Table(name="tbl_qty"
    ,catalog="offsetmanager"
)
public class TblQty  implements java.io.Serializable {


     private Integer qtyId;
     private String qtyName;
     private Date qtyAddedDate;
     private char isActive;
     private Set<TblOrder> tblOrders = new HashSet<TblOrder>(0);

    public TblQty() {
    }

	
    public TblQty(String qtyName, Date qtyAddedDate, char isActive) {
        this.qtyName = qtyName;
        this.qtyAddedDate = qtyAddedDate;
        this.isActive = isActive;
    }
    public TblQty(String qtyName, Date qtyAddedDate, char isActive, Set<TblOrder> tblOrders) {
       this.qtyName = qtyName;
       this.qtyAddedDate = qtyAddedDate;
       this.isActive = isActive;
       this.tblOrders = tblOrders;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="qty_id", unique=true, nullable=false)
    public Integer getQtyId() {
        return this.qtyId;
    }
    
    public void setQtyId(Integer qtyId) {
        this.qtyId = qtyId;
    }

    
    @Column(name="qty_name", nullable=false, length=100)
    public String getQtyName() {
        return this.qtyName;
    }
    
    public void setQtyName(String qtyName) {
        this.qtyName = qtyName;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="qty_added_date", nullable=false, length=10)
    public Date getQtyAddedDate() {
        return this.qtyAddedDate;
    }
    
    public void setQtyAddedDate(Date qtyAddedDate) {
        this.qtyAddedDate = qtyAddedDate;
    }

    
    @Column(name="is_active", nullable=false, length=1)
    public char getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(char isActive) {
        this.isActive = isActive;
    }

@OneToMany(fetch=FetchType.EAGER, mappedBy="tblQty")
    public Set<TblOrder> getTblOrders() {
        return this.tblOrders;
    }
    
    public void setTblOrders(Set<TblOrder> tblOrders) {
        this.tblOrders = tblOrders;
    }




}


