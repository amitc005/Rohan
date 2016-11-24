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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * TblGsm generated by hbm2java
 */
@Entity
@Table(name="tbl_gsm"
    ,catalog="offsetmanager"
)
public class TblGsm  implements java.io.Serializable {


     private Integer gsmId;
     private String gsmName;
     private Date gsmAddedDate;
     private char isActive;
     private Set<TblOrder> tblOrders = new HashSet<TblOrder>(0);

    public TblGsm() {
    }

	
    public TblGsm(String gsmName, Date gsmAddedDate, char isActive) {
        this.gsmName = gsmName;
        this.gsmAddedDate = gsmAddedDate;
        this.isActive = isActive;
    }
    public TblGsm(String gsmName, Date gsmAddedDate, char isActive, Set<TblOrder> tblOrders) {
       this.gsmName = gsmName;
       this.gsmAddedDate = gsmAddedDate;
       this.isActive = isActive;
       this.tblOrders = tblOrders;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="gsm_id", unique=true, nullable=false)
    public Integer getGsmId() {
        return this.gsmId;
    }
    
    public void setGsmId(Integer gsmId) {
        this.gsmId = gsmId;
    }

    
    @Column(name="gsm_name", nullable=false, length=100)
    public String getGsmName() {
        return this.gsmName;
    }
    
    public void setGsmName(String gsmName) {
        this.gsmName = gsmName;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="gsm_added_date", nullable=false, length=10)
    public Date getGsmAddedDate() {
        return this.gsmAddedDate;
    }
    
    public void setGsmAddedDate(Date gsmAddedDate) {
        this.gsmAddedDate = gsmAddedDate;
    }

    
    @Column(name="is_active", nullable=false, length=1)
    public char getIsActive() {
        return this.isActive;
    }
    
    public void setIsActive(char isActive) {
        this.isActive = isActive;
    }

@OneToMany(fetch=FetchType.LAZY, mappedBy="tblGsm")
    public Set<TblOrder> getTblOrders() {
        return this.tblOrders;
    }
    
    public void setTblOrders(Set<TblOrder> tblOrders) {
        this.tblOrders = tblOrders;
    }




}


